Set-AWSCredential -AccessKey AKIAQUDD4YFC4FN53KHD -SecretKey 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 -StoreAs Dareck
Get-R53HostedZones -AccessKey AKIAQUDD4YFC4FN53KHD -SecretKey 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
$ak = "AKIAQUDD4YFC4FN53KHD"
$sk = "gx0dhsE1+L5xLrBcki83RvC5puXyAeqCoBqFrIb8"
$zone = Get-R53HostedZones -AccessKey $ak -SecretKey $sk -
Get-R53HostedZone -AccessKey $ak -SecretKey $sk -Id "Z1N12GSJUA7401"
Get-R53ResourceRecordSet -AccessKey $ak -SecretKey $sk -HostedZoneId "Z1N12GSJUA7401"
Test-NetConnection  -ComputerName "qqsolutions.com" -Port 443
$endpoint = "qqsolutions.com", "qqsolutions.com" , "m1._domainkey.qqsolutions.com" , "selector1._domainkey.qqsolutions.com" , "selector2._domainkey.qqsolutions.com" , ""

$rec = 'qqsolutions.com','_amazonses.qqsolutions.com','m1._domainkey.qqsolutions.com','selector1._domainkey.qqsolutions.com','selector2._domainkey.qqsolutions.com','smtpapi._domainkey.qqsolutions.com','_sipfederationtls._tcp.qqsolutions.com','_sip._tls.qqsolutions.com','appsrva.qqsolutions.com','autodiscover.qqsolutions.com','awverify.qqsolutions.com','catalyst.qqsolutions.com','cft.qqsolutions.com','chef.qqsolutions.com','config.qqsolutions.com','consul.qqsolutions.com','consumerportal.qqsolutions.com','qqdns01.qqsolutions.coom.qqsolutions.com','dbf7b4f71e2e009b4c6628f70aa3cfe2.qqsolutions.com','dev-eds.qqsolutions.com','reviewassistant.dev.qqsolutions.com','support.dev.qqsolutions.com','deveds.qqsolutions.com','devqqolam.qqsolutions.com','devqqpb.qqsolutions.com','devtest-eds.qqsolutions.com','dns01.qqsolutions.com','dns02.qqsolutions.com','ebsedstest.qqsolutions.com','eds.qqsolutions.com','employee.qqsolutions.com','enterpriseenrollment.qqsolutions.com','enterpriseregistration.qqsolutions.com','fileserviceapi.qqsolutions.com','ftp.qqsolutions.com','go.qqsolutions.com','gocatalyst.qqsolutions.com','info.qqsolutions.com','insure.qqsolutions.com',"iseeyou.qqsolutions.com","logging.qqsolutions.com","mq.logging.qqsolutions.com","logs.qqsolutions.com","logs2.qqsolutions.com","cassandra.lumina.qqsolutions.com","mq.lumina.qqsolutions.com","mq01.lumina.qqsolutions.com","mq02.lumina.qqsolutions.com","lyncdiscover.qqsolutions.com","m.qqsolutions.com","mail.qqsolutions.com","mailrelay.qqsolutions.com","marketing.qqsolutions.com","mobile.qqsolutions.com","msoid.qqsolutions.com","mx01.qqsolutions.com","nuget.qqsolutions.com","olam.qqsolutions.com","olamstaging.qqsolutions.com","old.qqsolutions.com","orderprocessing.qqsolutions.com","owner.qqsolutions.com","pop.qqsolutions.com","prod-eds.qqsolutions.com","prod2-eds.qqsolutions.com","provisionapi.qqsolutions.com","qfdemo01.qqsolutions.com","qqdns01.qqsolutions.com","qqlog.qqsolutions.com","qqlogger.qqsolutions.com","qqlognet.qqsolutions.com","qqmail.qqsolutions.com","qqmigrations.qqsolutions.com","qqolam.qqsolutions.com","qqpb.qqsolutions.com","qqws.qqsolutions.com","rosetta.qqsolutions.com","rpt.qqsolutions.com","scalr.qqsolutions.com","secure.qqsolutions.com","securecs.qqsolutions.com","sendlogshere.qqsolutions.com","sendlogshere2.qqsolutions.com","sendlogshere3.qqsolutions.com","sip.qqsolutions.com","sql01.qqsolutions.com","sslvpn.qqsolutions.com","sso.qqsolutions.com","ssobeta.qqsolutions.com","ssostaging.qqsolutions.com","ssotools-dev.qqsolutions.com","ssotools-uat.qqsolutions.com","ssotools.qqsolutions.com","subscription.qqsolutions.com","support.qqsolutions.com","techexcel.qqsolutions.com","techexcelapi.qqsolutions.com","techexcelapidev.qqsolutions.com","tools.qqsolutions.com","toolsapi.qqsolutions.com","toolsapidev.qqsolutions.com","toolsdev.qqsolutions.com","uatqqpb.qqsolutions.com","update.qqsolutions.com","updateapi.qqsolutions.com","w3.qqsolutions.com","webmail.qqsolutions.com","ww1.qqsolutions.com","ww1consumerportal.qqsolutions.com","ww1marketing.qqsolutions.com","ww1olam.qqsolutions.com","ww1qqpb.qqsolutions.com","ww1qqws.qqsolutions.com" , "ww1sso.qqsolutions.com" ,"www.qqsolutions.com"
foreach ($r in $rec){
       Test-NetConnection  -ComputerName $r -Port 443 | where TcpTestSucceeded -eq true | Out-File C:\Users\Oleksandr_Samofal\Documents\test.txt -Append

}


Test-NetConnection  -ComputerName 'qqsolutions.com' -Port 443 | where TcpTestSucceeded -eq true | Out-File C:\Users\Oleksandr_Samofal\Documents\test.txt -Append

$rec1 = Get-Content C:\Users\Oleksandr_Samofal\Documents\records.txt
foreach ($r in $rec1){
       $result = Test-NetConnection  -ComputerName $r -Port 443 
       "$($result.ComputerName),$($result.RemoteAddress)" | Out-File C:\Users\Oleksandr_Samofal\Documents\records.csv -Append
}
   
   $x = "$($result.ComputerName),$($result.RemoteAddress)" 