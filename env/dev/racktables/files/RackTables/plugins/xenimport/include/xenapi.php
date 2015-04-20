<?php
/*
 *    PHP XenAPI v1.01
 *    a class for XenServer API calls
 *
 *    Copyright (C) 2010 Andy Goodwin <andyg@unf.net>
 *    Modified by Tyler Montgomery <tylerfixer@thecubed.com>
 *
 *    This class requires xml-rpc, PHP5, and curl.
 *
 *    Permission is hereby granted, free of charge, to any person obtaining 
 *    a copy of this software and associated documentation files (the 
 *    "Software"), to deal in the Software without restriction, including 
 *    without limitation the rights to use, copy, modify, merge, publish, 
 *    distribute, sublicense, and/or sell copies of the Software, and to 
 *    permit persons to whom the Software is furnished to do so, subject to 
 *    the following conditions:
 *
 *    The above copyright notice and this permission notice shall be included 
 *    in all copies or substantial portions of the Software.
 *
 *    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
 *    OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
 *    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
 *    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
 *    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
 *    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
 *    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 */

class XenApi {
    private $_url;

    private $_session_id;
    private $_user;
    private $_password;

    function __construct ($url, $user, $password) {
        $r = $this->xenrpc_request($url, $this->xenrpc_method('session.login_with_password', array($user, $password, '1.3')));
        if (is_array($r) && $r['Status'] == 'Success') {
            $this->_session_id = $r['Value'];
            $this->_url = $url;
            $this->_user = $user;
            $this->_password = $password;
        } else {
            throw new APIException(implode(' ', $r['ErrorDescription']));
        }
    }

    function __call($name, $args) {
        if (!is_array($args)) {
            $args = array();
        }
	
	// Handle VM_guest_metrics specially
	// Could probably do some more elegant processing here 
	$vmMetrics = "VM_guest_metrics";
	if (strstr($name, $vmMetrics)) {
		$mod = $vmMetrics;
		$method = substr(strstr($name, $vmMetrics), strlen($vmMetrics)+1);
	} else {
	        list($mod, $method) = explode('_', $name, 2);
	}
        $ret = $this->xenrpc_parseresponse($this->xenrpc_request($this->_url, 
                  $this->xenrpc_method($mod . '.' . $method, array_merge(array($this->_session_id), $args))));
        return $ret;
    }

    function xenrpc_parseresponse($response) {
        if (!@is_array($response) && !@$response['Status']) {
           throw new APIException("Error 500, response not an array, or doesn't contain a status field.", 500);
        } else {
            if ($response['Status'] == 'Success') {
               $ret = $response['Value'];
            } else {
               if ($response['ErrorDescription'][0] == 'SESSION_INVALID') {
                   $r = $this->xenrpc_request($url, $this->xenrpc_method('session.login_with_password', 
                               array($this->_user, $this->_password, '1.3')));
                   if (!is_array($r) && $r['Status'] == 'Success') {
                       $this->_session_id = $r['Value'];
                   } else {
                       throw new APIException("Session Error");
                   }
               } else {
                   throw new APIException(implode(' ', $response['ErrorDescription']));
               }
            }
        }
        return $ret;
    }

    function xenrpc_method($name, $params) {
        $ret = xmlrpc_encode_request($name, $params);

        return $ret;
    }

    function xenrpc_request($url, $req) {
        $headers = array('Content-type: text/xml', 'Content-length: ' . strlen($req));

        $ch = curl_init($url);

        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');

        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        curl_setopt($ch, CURLOPT_TIMEOUT, 20);

        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers); 

        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);

        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

        curl_setopt($ch, CURLOPT_POSTFIELDS, $req); 

        $resp = curl_exec($ch);
        curl_close($ch); 

        $ret = xmlrpc_decode($resp);

        return $ret;
        }
}

class APIException extends Exception
{
    public function __construct($message, $code = 0) {
        parent::__construct($message, $code);
    }
}

?>
