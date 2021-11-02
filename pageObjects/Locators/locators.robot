*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${LoginMenuButton}          id:login2
${LoginUsernameInputBox}    id:loginusername
${LoginPasswordInputBox}    id:loginpassword
${NameOfUser}               id:nameofuser
${LoginButton}              //div/button[text()="Log in"]
${Cart}                     //*[@id="navbarExample"]/ul/li[4]/a
${DeleteItem}               //*[@id="tbodyid"]/tr[1]/td[4]/a
${MultipleItem}             /html/body/div[6]/div/div[2]/div/div/h3
${Valid}                    //*[@id="tbodyid"]/tr
#Add Single Item

${SamsungGalaxyS6}        //*[@id="tbodyid"]/div[1]/div/div/h4/a
${ItemVisible}    //*[@id="nava"]/img
${Addcart}        //*[@id="tbodyid"]/div[2]/div/a

${Home}    //*[@id="navbarExample"]/ul/li[1]/a


#Place Order
${PlaceOrder}    //*[@id="page-wrapper"]/div/div[2]/button
${ConfirmPage}  //*[@id="totalm"]
${VerifyPurchase}    //div[10]/h2[text() = "Thank you for your purchase!"]
${OK}    //button[text() = "OK"]






