<%-- 
    Document   : payement
    Created on : 30 sept. 2020, 09:13:17
    Author     : Sindidi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
	<div class="row">
		<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top" class="col-md-6 col-lg-6">
		    <input type="hidden" name="cmd" value="_s-xclick" />
		    <input type="hidden" name="hosted_button_id" value="K3VBKBECZ7PC6" />
            <fieldset>
            
            <!-- Select Basic -->
            <div class="form-group">
                <input type="hidden" name="on0" value="Please click the drop down menu to select your " />
                <label class="control-label" for="os0">Please click the drop down menu to select your "FALL Services"</label>
                <select id="os0" name="os0" class="form-control">
                    <option value="Aeration - DEEP PLUG!!">Aeration - DEEP PLUG!! $40.00 USD</option>
                    <option value="Winterizer - Richlawn Organic Winterizer">Winterizer - Richlawn Organic Winterizer $40.00 USD</option>
                    <option value="GROUND PREP PACKAGE (Includes Aeration & Winterizer)">GROUND PREP PACKAGE (Includes Aeration & Winterizer) $75.00 USD</option>
                    <option value="FALL Overseeding">FALL Overseeding $100.00 USD</option>
                    <option value="REGENERATION PACKAGE (Includes Aeration,Winterizer,Overseed)">REGENERATION PACKAGE (Includes Aeration,Winterizer,Overseed) $150.00 USD</option>
                    <option value="Sprinkler Blow Out">Sprinkler Blow Out $50.00 USD</option>
                    <option value="Gutter Clean Out  (1st Story Only)">Gutter Clean Out (1st Story Only) $75.00 USD</option>
                    <option value="Leaf & Stick Clean Up (90 minutes, change quantity for big jobs)">Leaf & Stick Clean Up (90 minutes, change quantity for big jobs) $75.00 USD</option>
                    <option value="Hand Pulling of Weeds (90 minutes)">Hand Pulling of Weeds (90 minutes) $75.00 USD</option>
                    <option value="Bush Trimming (90 minutes, under 6 feet tall only)">Bush Trimming (90 minutes, under 6 feet tall only) $75.00 USD</option>
                </select>
            </div>
            
            <!-- Select Basic -->
            <div class="form-group">
                <input type="hidden" name="on1" value="Please select your " />
                <label class="control-label" for="os1">Please select your "Week of Service"</label>
                <select id="os1" name="os1" class="form-control">
                  <option value="December 17 - December 21">December 17 - December 21</option>
                </select>
            </div>
            
            <!-- Text input-->
            <div class="form-group">
                <input type="hidden" name="on2" value="Type in Property Address" />
                <label class="control-label" for="os2">Type in Property Address</label>  
                <input maxlength="200" id="os2" name="os2" type="text" placeholder="placeholder" class="form-control input-md">
            </div>
            
            <!-- Text input-->
            <div class="form-group">
                <input type="hidden" name="on3" value="Type in Special Instructions" />
                <label class="control-label" for="os3">Type in Special Instructions</label>  
                <input maxlength="200" id="os3" name="os3" type="text" placeholder="placeholder" class="form-control input-md">
            </div>
            <!-- Begin Official PayPal Seal -->
            <strong><a href="https://www.paypal.com/us/verified/pal=grassbusters%2eemail%40gmail%2ecom" target="_blank"><img src="https://www.paypal.com/en_US/i/icon/verification_seal.gif" alt="Official PayPal Seal" border="0" /></a>
                <input type="hidden" name="currency_code" value="USD" />
                <input type="image" name="submit" src="https://www.paypalobjects.com/en_US/i/btn/btn_paynowCC_LG.gif" alt="PayPal - The safer, easier way to pay online!" /> <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1" />
            </strong>
            <!-- End Official PayPal Seal -->
            </fieldset>
        </form>
	</div>
</div>
    </body>
</html>
