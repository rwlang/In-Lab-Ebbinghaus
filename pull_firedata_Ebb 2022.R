getSourceEditorContext()$path

options(max.print = 10000)

# require devtools and fireData packages
if (!require("devtools")) install.packages("devtools")
if (!require("fireData")) devtools::install_github("Kohze/fireData")

library(fireData) # https://github.com/Kohze/fireData


# secret key 1: Circle-Size-Experiment 1 = QQwfjvlOXolwiMLsf2SleKPuo7D2IZn3WO7i8SS1
# secret key 2: Circle-Size-Experiment 2 = gA5OmNBFdB98HlrMJXpBFc7uQPQTlG9Ml77UkZGW

# download all files from database
dataBackup(projectURL = "https://in-lab-ebbinghaus-default-rtdb.firebaseio.com", #databaseURL
           secretKey = "ec7r0Su8seSO9RsIx8yDBEnWAkVHnbKsA9T57g1i", #Secret Key of the database
           "C:\\Users\\Ryan Langridge\\Desktop\\Github\\In-Lab-Ebbinghaus\\data/data.json") # file path of where to save the data (out default assumes cloning the GitHub repo)


# install.packages("jsonlite")
library("jsonlite")


#································To check the number of data points in the database ··············································

# open the file that was just downloaded
data<-jsonlite::fromJSON(txt = "C:\\Users\\Ryan Langridge\\Desktop\\Github\\Circle Size Experiment\\data/data.json")
data$



#dataZ<-jsonlite::fromJSON(txt = "C:/Users/Ryan Langridge/Desktop/Online Participant Data/circle-size-experiment-export (July 23, 2020).json")
#dataZ

  
data1<-fromJSON(txt = data$`18650c0d-5501-4b49-b00d-5668407ad989`$data,simplifyDataFrame = T,flatten = T)
data2<-fromJSON(txt = data$`dd0d2b4f-9f33-4e36-b182-80738c07e17e`$data,simplifyDataFrame = T,flatten = T)
data3<-fromJSON(txt = data$`2f89af16-d09a-4177-81a7-7b6f0e6841f4`$data,simplifyDataFrame = T,flatten = T)
data4<-fromJSON(txt = data$`397c5f32-17bc-4b61-b014-68c77f41055e`$data,simplifyDataFrame = T,flatten = T)
data5<-fromJSON(txt = data$`e6ba0fac-2e02-4fe7-9ae5-1f98f3930506`$data,simplifyDataFrame = T,flatten = T)
data6<-fromJSON(txt = data$`f97ab624-45d8-41ea-a953-a4b511e69d43`$data,simplifyDataFrame = T,flatten = T)
data7<-fromJSON(txt = data$`55a6a9ab-a782-4be9-9763-c3763924da1b`$data,simplifyDataFrame = T,flatten = T)
data8<-fromJSON(txt = data$`03b8a67a-b626-4e1f-8d81-1be993b1b504`$data,simplifyDataFrame = T,flatten = T)
data9<-fromJSON(txt = data$`c75723dc-38eb-41bc-bcb9-e4cb1f8abd3f`$data,simplifyDataFrame = T,flatten = T)
data10<-fromJSON(txt = data$`269c20cc-5c4b-419e-b652-0b0d53248a0c`$data,simplifyDataFrame = T,flatten = T)
data11<-fromJSON(txt = data$`f4e2586c-d20b-437d-b9fb-451c0d6b1ddf`$data,simplifyDataFrame = T,flatten = T)
data12<-fromJSON(txt = data$`4fcc23a6-442e-4cf0-9ecc-df75f4279734`$data,simplifyDataFrame = T,flatten = T)
data13<-fromJSON(txt = data$`1adfabf2-8ffe-47f3-8c02-599286142f89`$data,simplifyDataFrame = T,flatten = T)
data14<-fromJSON(txt = data$`40235ce8-ef61-4c22-b5bc-feb5b492b113`$data,simplifyDataFrame = T,flatten = T)
data15<-fromJSON(txt = data$`ed9f35d9-0229-4ac3-a870-a7931a7be261`$data,simplifyDataFrame = T,flatten = T)
data16<-fromJSON(txt = data$`9abb2633-ff4a-4c6f-a22e-d631e7057345`$data,simplifyDataFrame = T,flatten = T)
data17<-fromJSON(txt = data$`15370288-f5af-4620-b0ad-3a695ace50d5`$data,simplifyDataFrame = T,flatten = T)
data18<-fromJSON(txt = data$`240eda01-d4be-41e2-9139-a8e2da830938`$data,simplifyDataFrame = T,flatten = T)
data19<-fromJSON(txt = data$`d147d0c9-88e6-467b-a234-e39552e17547`$data,simplifyDataFrame = T,flatten = T)
data20<-fromJSON(txt = data$`afff96c7-5d5a-42a6-95cd-fdc53138d412`$data,simplifyDataFrame = T,flatten = T)
data21<-fromJSON(txt = data$`22beaa9b-7aa0-457f-b28b-29b318e3df39`$data,simplifyDataFrame = T,flatten = T)
data22<-fromJSON(txt = data$`6dbda1d4-2976-49e6-ac08-ba3669c1ef32`$data,simplifyDataFrame = T,flatten = T)
data23<-fromJSON(txt = data$`00c11eb6-c254-4e23-ad15-0c5660a28cb4`$data,simplifyDataFrame = T,flatten = T)
data24<-fromJSON(txt = data$`08a9e90c-959f-49b4-9e29-6c70169c9050`$data,simplifyDataFrame = T,flatten = T)
data25<-fromJSON(txt = data$`16a28954-3208-48fd-ae5f-a09f0ddfbfb0`$data,simplifyDataFrame = T,flatten = T)
data26<-fromJSON(txt = data$`31541db6-bcfa-4c13-83cd-d057bc412c27`$data,simplifyDataFrame = T,flatten = T)
data27<-fromJSON(txt = data$`5fd7c543-12ec-471e-a3d2-5c24ed960764`$data,simplifyDataFrame = T,flatten = T)
data28<-fromJSON(txt = data$`ccaaeeca-4e67-4352-a4e6-7b8d2fcee558`$data,simplifyDataFrame = T,flatten = T)
data29<-fromJSON(txt = data$`024710f5-a199-4012-903d-b02547fb856a`$data,simplifyDataFrame = T,flatten = T)
data30<-fromJSON(txt = data$`02ee00db-3aba-499d-8a8d-01c1df882900`$data,simplifyDataFrame = T,flatten = T)
data31<-fromJSON(txt = data$`1b62a27f-1681-4cab-8280-c5421fc2f788`$data,simplifyDataFrame = T,flatten = T)
data32<-fromJSON(txt = data$`40be06c7-7f7d-4048-81f9-3b173614c91b`$data,simplifyDataFrame = T,flatten = T)
data33<-fromJSON(txt = data$`7648221a-f7ae-4419-a897-b8151de7bb6a`$data,simplifyDataFrame = T,flatten = T)
data34<-fromJSON(txt = data$`a7d78e8c-5293-4d7c-b186-d35f25f041e4`$data,simplifyDataFrame = T,flatten = T)
data35<-fromJSON(txt = data$`aed99492-c26a-4579-9f48-3babb662d118`$data,simplifyDataFrame = T,flatten = T)
data36<-fromJSON(txt = data$`c1d6a7b7-42e8-478a-89a1-9672e3cfde1e`$data,simplifyDataFrame = T,flatten = T)
data37<-fromJSON(txt = data$`f16e746f-0b44-42e3-9ad8-bafe9a69a4de`$data,simplifyDataFrame = T,flatten = T)
data38<-fromJSON(txt = data$`025426e5-c547-47af-80a0-8303bc278b9d`$data,simplifyDataFrame = T,flatten = T)
data39<-fromJSON(txt = data$`03acc779-64af-4064-87f7-013a1786f0df`$data,simplifyDataFrame = T,flatten = T)
data40<-fromJSON(txt = data$`80772b07-d10a-47f9-8f5f-f2e6f9bed014`$data,simplifyDataFrame = T,flatten = T)
data41<-fromJSON(txt = data$`e8ee0155-ac52-4bd3-a114-f5fb7bdcfa75`$data,simplifyDataFrame = T,flatten = T)

data42<-fromJSON(txt = data$`1d80e8ef-5a36-4c88-8541-be6d41c4e687`$data,simplifyDataFrame = T,flatten = T)
data43<-fromJSON(txt = data$`43307d5a-be45-4d86-aae1-2d55666c4815`$data,simplifyDataFrame = T,flatten = T)
data44<-fromJSON(txt = data$`49516f7d-7704-437a-a2b5-c5605793d43f`$data,simplifyDataFrame = T,flatten = T)
data45<-fromJSON(txt = data$`4d3f3f9f-9a8d-4339-aba9-42359baafb4c`$data,simplifyDataFrame = T,flatten = T)
data46<-fromJSON(txt = data$`85782356-4dec-414f-99c8-e9eeb818e93e`$data,simplifyDataFrame = T,flatten = T)
data47<-fromJSON(txt = data$`8fe8e276-bd24-495c-8ded-579f89f08e96`$data,simplifyDataFrame = T,flatten = T)
data48<-fromJSON(txt = data$`a6cb0711-dc0f-44bc-88da-d611aab36ff1`$data,simplifyDataFrame = T,flatten = T)
data49<-fromJSON(txt = data$`c0c5d4a4-ef31-4fa7-95ca-8b803b26f598`$data,simplifyDataFrame = T,flatten = T)
data50<-fromJSON(txt = data$`c1eac32c-1395-45b2-8c2e-83ad58362c54`$data,simplifyDataFrame = T,flatten = T)
data51<-fromJSON(txt = data$`0331180f-08b1-4873-b40c-d935f87c8960`$data,simplifyDataFrame = T,flatten = T)
data52<-fromJSON(txt = data$`19a12400-5438-48c5-86e9-9d687098c769`$data,simplifyDataFrame = T,flatten = T)
data53<-fromJSON(txt = data$`66f2ea02-2776-4e42-9b5c-25f5152468b0`$data,simplifyDataFrame = T,flatten = T)
data54<-fromJSON(txt = data$`681d5d0e-efe6-4f3e-b963-338888b405b7`$data,simplifyDataFrame = T,flatten = T)
data55<-fromJSON(txt = data$`fb999dcf-67d0-4b12-b9e3-9d8465ae21db`$data,simplifyDataFrame = T,flatten = T)
data56<-fromJSON(txt = data$`fc790d3b-6ed9-464b-a73d-6b48cbda81b3`$data,simplifyDataFrame = T,flatten = T)

data57<-fromJSON(txt = data$`2625df09-01d8-4220-9085-25fc589b9f2d`$data,simplifyDataFrame = T,flatten = T)
data58<-fromJSON(txt = data$`574f7cf8-81c3-4625-876e-4001b75e8db4`$data,simplifyDataFrame = T,flatten = T)
data59<-fromJSON(txt = data$`694e8470-9144-45ff-b83f-60d02ac94e5a`$data,simplifyDataFrame = T,flatten = T)
data60<-fromJSON(txt = data$`ae0a4a82-325b-48a8-9aa4-8140fe5f667b`$data,simplifyDataFrame = T,flatten = T)
data61<-fromJSON(txt = data$`ebcc98e3-9b83-44e4-a2d0-fa2a8dfb25de`$data,simplifyDataFrame = T,flatten = T)
data62<-fromJSON(txt = data$`f27ccb10-e7c8-4c61-a14e-d6a8f3ccd38f`$data,simplifyDataFrame = T,flatten = T)
data63<-fromJSON(txt = data$`11af166a-fdac-4e27-8bea-a27334694a5e`$data,simplifyDataFrame = T,flatten = T)
data64<-fromJSON(txt = data$`463b3e6c-7a49-44cb-81dc-f9b39165cfdd`$data,simplifyDataFrame = T,flatten = T)
data65<-fromJSON(txt = data$`4de314c7-64fe-450a-9a5d-96406c6c9f8e`$data,simplifyDataFrame = T,flatten = T)
data66<-fromJSON(txt = data$`7cb477b8-b751-471d-b38c-06307375fcaa`$data,simplifyDataFrame = T,flatten = T)
data67<-fromJSON(txt = data$`8c75692e-1f34-45fb-9b12-a78005fa4c5d`$data,simplifyDataFrame = T,flatten = T)
data68<-fromJSON(txt = data$`a9b5e941-5e0d-49d7-b7d5-6fa2768240c1`$data,simplifyDataFrame = T,flatten = T)
data69<-fromJSON(txt = data$`33aa5f23-dc4f-400c-9170-963c91943b51`$data,simplifyDataFrame = T,flatten = T)
data70<-fromJSON(txt = data$`df448c72-9dba-401a-ae5c-3a3d74f3bfb5`$data,simplifyDataFrame = T,flatten = T)
data71<-fromJSON(txt = data$`f02e1158-e918-4dad-bdd2-81260bc61924`$data,simplifyDataFrame = T,flatten = T)

data72<-fromJSON(txt = data$`26f4fd49-ac7b-4eb7-8782-5c6a6a402a10`$data,simplifyDataFrame = T,flatten = T)
data73<-fromJSON(txt = data$`2ffad30f-6964-4511-a724-f8565e493041`$data,simplifyDataFrame = T,flatten = T)
data74<-fromJSON(txt = data$`4d013a1a-86d4-4d3d-854b-57a9ec36f133`$data,simplifyDataFrame = T,flatten = T)
data75<-fromJSON(txt = data$`5dd6c30a-549e-4a08-a4cb-dded85c95a5d`$data,simplifyDataFrame = T,flatten = T)
data76<-fromJSON(txt = data$`60c02740-b983-40cd-bd75-5e553704f09d`$data,simplifyDataFrame = T,flatten = T)
data77<-fromJSON(txt = data$`6530278f-170c-407e-9553-1fffc53c4c84`$data,simplifyDataFrame = T,flatten = T)
data78<-fromJSON(txt = data$`9d6f3173-fbab-41c4-a792-d4008bec6481`$data,simplifyDataFrame = T,flatten = T)
data79<-fromJSON(txt = data$`b51d07ec-2754-420d-840e-1a5726b397cf`$data,simplifyDataFrame = T,flatten = T)
data80<-fromJSON(txt = data$`f74b0e79-8043-41f7-a172-ce21104b2747`$data,simplifyDataFrame = T,flatten = T)
data81<-fromJSON(txt = data$`094c1476-1f82-424e-a88e-ac1459871c6c`$data,simplifyDataFrame = T,flatten = T)

data82<-fromJSON(txt = data$`0cb88af9-8930-4634-8526-c9bd6bd62705`$data,simplifyDataFrame = T,flatten = T)
data83<-fromJSON(txt = data$`2b6e6ec2-2062-42ad-9dd5-e6781b222aa3`$data,simplifyDataFrame = T,flatten = T)
data84<-fromJSON(txt = data$`44e5ff6e-4b38-47f4-8246-076e41f4fa27`$data,simplifyDataFrame = T,flatten = T)
data85<-fromJSON(txt = data$`4ee4077f-880a-417e-90d2-44ebcf55dff6`$data,simplifyDataFrame = T,flatten = T)
data86<-fromJSON(txt = data$`5f5f74b7-ae15-43eb-ac74-4d433aea186b`$data,simplifyDataFrame = T,flatten = T)
data87<-fromJSON(txt = data$`a5764829-69df-4726-9592-c0e36eb03b7a`$data,simplifyDataFrame = T,flatten = T)
data88<-fromJSON(txt = data$`d79fa93f-ebec-429c-ad2c-9c5ca2e764f7`$data,simplifyDataFrame = T,flatten = T)
data89<-fromJSON(txt = data$`e4246d0e-76e8-4b27-bbef-8ef9121cf609`$data,simplifyDataFrame = T,flatten = T)

data90<-fromJSON(txt = data$`02d67ca5-1dc9-4615-a90f-c46275f62edc`$data,simplifyDataFrame = T,flatten = T)
data91<-fromJSON(txt = data$`22486392-701d-4141-a3ca-3dac395e0a5d`$data,simplifyDataFrame = T,flatten = T)
data92<-fromJSON(txt = data$`3519027b-8d6a-4115-86a9-6d763fc187d2`$data,simplifyDataFrame = T,flatten = T)
data93<-fromJSON(txt = data$`8a41dff0-a1ac-46aa-8ab0-a447ce116713`$data,simplifyDataFrame = T,flatten = T)
data94<-fromJSON(txt = data$`939c7fd6-99bc-42b6-ad86-eea38043f063`$data,simplifyDataFrame = T,flatten = T)
data95<-fromJSON(txt = data$`dbefc843-b7cd-40cc-a55a-52b235806100`$data,simplifyDataFrame = T,flatten = T)
data96<-fromJSON(txt = data$`e8a9fb69-4cc4-49a7-b725-e90aa09909bf`$data,simplifyDataFrame = T,flatten = T)
data97<-fromJSON(txt = data$`4efa54fd-2092-4ca4-bbf0-a9c71a069c89`$data,simplifyDataFrame = T,flatten = T)
data98<-fromJSON(txt = data$`9893d1d9-f7b4-4349-8c73-d7eeb5c011ab`$data,simplifyDataFrame = T,flatten = T)

data99<-fromJSON(txt = data$`08b4e849-66c1-42ea-8c08-b492037ee62d`$data,simplifyDataFrame = T,flatten = T)
data100<-fromJSON(txt = data$`1ffd5db3-9b7b-4ab2-aaa5-32fc6844eb90`$data,simplifyDataFrame = T,flatten = T)
data101<-fromJSON(txt = data$`37bc46c0-5575-4c3c-8d2c-c21f6ea5752e`$data,simplifyDataFrame = T,flatten = T)
data102<-fromJSON(txt = data$`a68fe524-bc18-4d21-a3dc-d020de0c0944`$data,simplifyDataFrame = T,flatten = T)
data103<-fromJSON(txt = data$`ba1ac6a7-c941-4277-824f-ce9d29fb393f`$data,simplifyDataFrame = T,flatten = T)
data104<-fromJSON(txt = data$`e767a441-566e-4aa5-a6ad-9ab8dc769104`$data,simplifyDataFrame = T,flatten = T)
data105<-fromJSON(txt = data$`eca2eae6-d390-4a29-a12b-6ea5df82ee76`$data,simplifyDataFrame = T,flatten = T)

data106<-fromJSON(txt = data$`5cf89270-66dc-4f14-b1bd-556a6b216781`$data,simplifyDataFrame = T,flatten = T)
data107<-fromJSON(txt = data$`12cd3633-4f5c-4225-b6cd-2b96a811bf59`$data,simplifyDataFrame = T,flatten = T)
data108<-fromJSON(txt = data$`33c94fee-4a2d-4c89-96fb-2cc41b585596`$data,simplifyDataFrame = T,flatten = T)
data109<-fromJSON(txt = data$`47912989-04da-4162-b429-2c327f111170`$data,simplifyDataFrame = T,flatten = T)
data110<-fromJSON(txt = data$`4bebc1eb-b421-46a5-b093-380718f16963`$data,simplifyDataFrame = T,flatten = T)
data111<-fromJSON(txt = data$`a637f024-f1f5-4db1-bfee-3550d263b87d`$data,simplifyDataFrame = T,flatten = T)
data112<-fromJSON(txt = data$`c3f14043-bf82-4659-879f-0f833c182096`$data,simplifyDataFrame = T,flatten = T)
data113<-fromJSON(txt = data$`d3ed7b95-71c1-4c58-9375-4ae61b5d36a2`$data,simplifyDataFrame = T,flatten = T)
data114<-fromJSON(txt = data$`e6d7d404-02af-45ff-bda0-80848de9846c`$data,simplifyDataFrame = T,flatten = T)
data115<-fromJSON(txt = data$`ea65e66a-e16b-4192-bc67-63fbae4ba78d`$data,simplifyDataFrame = T,flatten = T)

data116<-fromJSON(txt = data$`1b2b4989-1235-4c85-bd0e-578b42fbb297`$data,simplifyDataFrame = T,flatten = T)
data117<-fromJSON(txt = data$`5a806feb-4641-44de-9462-bec8a98b5085`$data,simplifyDataFrame = T,flatten = T)
data118<-fromJSON(txt = data$`87aec835-2340-4cc7-a52a-e7bf68350ac1`$data,simplifyDataFrame = T,flatten = T)
data119<-fromJSON(txt = data$`b88ab682-faa9-4cd6-bfa8-361208f7c0e5`$data,simplifyDataFrame = T,flatten = T)
data120<-fromJSON(txt = data$`e9bb639a-6bcc-4d64-b18e-d538d493f04d`$data,simplifyDataFrame = T,flatten = T)
data121<-fromJSON(txt = data$`fa2a8a06-7f7d-4c1c-af79-0787408f143c`$data,simplifyDataFrame = T,flatten = T)
data122<-fromJSON(txt = data$`9a55ec77-8e40-4c64-bc52-5948300d1d03`$data,simplifyDataFrame = T,flatten = T)

data123<-fromJSON(txt = data$`25c6b2fb-3c5e-4116-a44f-b22adfb3f61d`$data,simplifyDataFrame = T,flatten = T)
data124<-fromJSON(txt = data$`49d73e37-ee49-474a-afc5-5196287d1964`$data,simplifyDataFrame = T,flatten = T)
data125<-fromJSON(txt = data$`4d9dfb9c-cf4f-4cc9-91a2-5ca7b1aa7a36`$data,simplifyDataFrame = T,flatten = T)
data126<-fromJSON(txt = data$`6350e2bf-d21e-4a83-a65f-6dbbc1cc2467`$data,simplifyDataFrame = T,flatten = T)
data127<-fromJSON(txt = data$`83307d88-9c35-454b-b5d6-1733e8da5b4a`$data,simplifyDataFrame = T,flatten = T)
data128<-fromJSON(txt = data$`a217f162-d6c6-4087-a294-3a76e22e6254`$data,simplifyDataFrame = T,flatten = T)
data129<-fromJSON(txt = data$`b6941641-1996-4930-9850-106b0f995e85`$data,simplifyDataFrame = T,flatten = T)
data130<-fromJSON(txt = data$`e673849d-f5b6-4d89-a940-20e4f5c30625`$data,simplifyDataFrame = T,flatten = T)
data131<-fromJSON(txt = data$`f8abf1d0-5bfd-4f44-8670-bb32890c8f5c`$data,simplifyDataFrame = T,flatten = T)

data132<-fromJSON(txt = data$`2975bf0e-5e0c-4f77-8326-a09b2dbe2cfc`$data,simplifyDataFrame = T,flatten = T)
data133<-fromJSON(txt = data$`59dffc8f-bef3-4101-8946-31baeeaa33c0`$data,simplifyDataFrame = T,flatten = T)
data134<-fromJSON(txt = data$`5e850b7e-8da1-4a0f-afaa-960225288c13`$data,simplifyDataFrame = T,flatten = T)
data135<-fromJSON(txt = data$`780dcd25-8818-4e78-a81c-5a1c3d598604`$data,simplifyDataFrame = T,flatten = T)
data136<-fromJSON(txt = data$`992eda57-ca92-4598-a441-695b7581773e`$data,simplifyDataFrame = T,flatten = T)
data137<-fromJSON(txt = data$`a98b11f9-2687-4e61-b45c-12f555b73d72`$data,simplifyDataFrame = T,flatten = T)
data138<-fromJSON(txt = data$`b4b20195-02b6-499b-bf1e-04f4b03f81d2`$data,simplifyDataFrame = T,flatten = T)

data139<-fromJSON(txt = data$`09c48261-1769-4600-a49c-7a09dd22f4a1`$data,simplifyDataFrame = T,flatten = T)
data140<-fromJSON(txt = data$`1871c622-cc2c-4665-bc4a-b4c4491fbc29`$data,simplifyDataFrame = T,flatten = T)
data141<-fromJSON(txt = data$`1a142a65-63b7-4417-9501-83ec277d2144`$data,simplifyDataFrame = T,flatten = T)
data142<-fromJSON(txt = data$`32da5dad-1a11-4b32-8ae8-1660073d4aea`$data,simplifyDataFrame = T,flatten = T)
data143<-fromJSON(txt = data$`43b555d7-b4dc-4404-a62d-2802fbf6cc48`$data,simplifyDataFrame = T,flatten = T)
data144<-fromJSON(txt = data$`67387844-417d-4bef-b5a1-3e2aff1400e3`$data,simplifyDataFrame = T,flatten = T)
data145<-fromJSON(txt = data$`f1a95a32-7d41-4872-ac32-017bb7c377de`$data,simplifyDataFrame = T,flatten = T)

data146<-fromJSON(txt = data$`1742443d-7e17-474d-b03e-18bf72fd1eef`$data,simplifyDataFrame = T,flatten = T)
data147<-fromJSON(txt = data$`2a157e9b-8bae-4ed2-85f4-684be996f648`$data,simplifyDataFrame = T,flatten = T)
data148<-fromJSON(txt = data$`43bf9a99-15a1-4020-8b9f-57d9d9e3c2ba`$data,simplifyDataFrame = T,flatten = T)
data149<-fromJSON(txt = data$`84d5f7ae-9799-45fb-970a-72e832994562`$data,simplifyDataFrame = T,flatten = T)
data150<-fromJSON(txt = data$`894859d0-f565-43cb-935b-10db2567ef5c`$data,simplifyDataFrame = T,flatten = T)
data151<-fromJSON(txt = data$`975726a5-f77b-40d4-bc86-e1dc0ae8ea41`$data,simplifyDataFrame = T,flatten = T)
data152<-fromJSON(txt = data$`ee0a2e0d-bb58-4600-93bf-8b411c1b9fdd`$data,simplifyDataFrame = T,flatten = T)
data153<-fromJSON(txt = data$`8ea3e177-f699-427a-bfcd-c7e9850c1cab`$data,simplifyDataFrame = T,flatten = T)
data154<-fromJSON(txt = data$`e3767e17-ecac-4887-91b7-01bea2cf1955`$data,simplifyDataFrame = T,flatten = T)

data155<-fromJSON(txt = data$`07552c10-cf6a-418d-8034-92a99f0999fb`$data,simplifyDataFrame = T,flatten = T)
data156<-fromJSON(txt = data$`285cb798-d784-4297-aaf7-28a7882eff64`$data,simplifyDataFrame = T,flatten = T)
data157<-fromJSON(txt = data$`55a1fe01-274d-4618-9221-140cef912683`$data,simplifyDataFrame = T,flatten = T)
data158<-fromJSON(txt = data$`5a8c7ca2-59ab-4d2e-9c71-6c127da439dc`$data,simplifyDataFrame = T,flatten = T)
data159<-fromJSON(txt = data$`7364bb37-b969-416e-bb8b-ed1bf67a3986`$data,simplifyDataFrame = T,flatten = T)
data160<-fromJSON(txt = data$`7463ca94-4861-47b9-888d-bde649a3d929`$data,simplifyDataFrame = T,flatten = T)
data161<-fromJSON(txt = data$`77c17253-85af-4e98-a5d9-f2f6a5f250a6`$data,simplifyDataFrame = T,flatten = T)
data162<-fromJSON(txt = data$`7ee02c4a-9e8f-45dc-ad76-ab3932c7071e`$data,simplifyDataFrame = T,flatten = T)
data163<-fromJSON(txt = data$`95a61d8b-fb04-4f3b-bfc7-4682dbfb87e1`$data,simplifyDataFrame = T,flatten = T)
data164<-fromJSON(txt = data$`a1c9dcc5-1fe6-4ed0-b3b2-7cf92e42674b`$data,simplifyDataFrame = T,flatten = T)
data165<-fromJSON(txt = data$`ac437006-6294-479e-a2cc-9de91a8885ca`$data,simplifyDataFrame = T,flatten = T)
data166<-fromJSON(txt = data$`b21118c0-ab03-4586-a197-282fd52bd13b`$data,simplifyDataFrame = T,flatten = T)
data167<-fromJSON(txt = data$`c0aa22ad-423a-42ab-a960-00b6acbd4312`$data,simplifyDataFrame = T,flatten = T)
data168<-fromJSON(txt = data$`ce28b142-c7ef-450e-b11e-4e849aa4b3d2`$data,simplifyDataFrame = T,flatten = T)
data169<-fromJSON(txt = data$`de339054-7c2d-4201-a864-1c288f24e3e7`$data,simplifyDataFrame = T,flatten = T)
data170<-fromJSON(txt = data$`ded8b0d6-5831-4da3-a2a3-f0cfe0181ee0`$data,simplifyDataFrame = T,flatten = T)
data171<-fromJSON(txt = data$`56e9a2da-6d92-40eb-af63-c1be702c4502`$data,simplifyDataFrame = T,flatten = T)
data172<-fromJSON(txt = data$`d3213fe7-91a1-4610-874e-da4f9e0e50e9`$data,simplifyDataFrame = T,flatten = T)
data173<-fromJSON(txt = data$`a47936fe-bf50-4dba-8afa-caa92243d15b`$data,simplifyDataFrame = T,flatten = T)
data174<-fromJSON(txt = data$`d99fcd89-b147-4201-bd56-d6f18f4dde33`$data,simplifyDataFrame = T,flatten = T)

data175<-fromJSON(txt = data$`1bcd2252-66e4-4a5f-a1d6-05d0dd9aab78`$data,simplifyDataFrame = T,flatten = T)
data176<-fromJSON(txt = data$`4450e8fc-0a6f-4f9a-bc02-5baf64797e95`$data,simplifyDataFrame = T,flatten = T)
data177<-fromJSON(txt = data$`4b493b25-6622-4872-b5e2-d355f126339d`$data,simplifyDataFrame = T,flatten = T)
data178<-fromJSON(txt = data$`4de74923-28b2-466e-81ce-36445f2f92ec`$data,simplifyDataFrame = T,flatten = T)
data179<-fromJSON(txt = data$`5aab96ac-dba1-48a3-af00-bc1c02693697`$data,simplifyDataFrame = T,flatten = T)
data180<-fromJSON(txt = data$`5e3a315e-812a-408c-945c-9a6e8f0a8c6a`$data,simplifyDataFrame = T,flatten = T)
data181<-fromJSON(txt = data$`77a53e31-d76b-4c73-8a18-dcccad34c615`$data,simplifyDataFrame = T,flatten = T)
data182<-fromJSON(txt = data$`85b9652d-55e1-43ef-999b-ca0597cbac0f`$data,simplifyDataFrame = T,flatten = T)
data183<-fromJSON(txt = data$`a1785941-f13e-4306-87a6-02f2896bfd9e`$data,simplifyDataFrame = T,flatten = T)
data184<-fromJSON(txt = data$`a3e95717-ca04-463c-8d34-74be68fc01a7`$data,simplifyDataFrame = T,flatten = T)
data185<-fromJSON(txt = data$`a46205cd-8924-4c76-9cf6-e7a2b9cd92d8`$data,simplifyDataFrame = T,flatten = T)
data186<-fromJSON(txt = data$`b5c0d095-a8eb-445e-82fe-940fad6dc365`$data,simplifyDataFrame = T,flatten = T)
data187<-fromJSON(txt = data$`cc986cff-e1c3-49ae-b2d5-6067de89c4d2`$data,simplifyDataFrame = T,flatten = T)
data188<-fromJSON(txt = data$`daadb4eb-a77d-4426-81a9-c727c5aa8caa`$data,simplifyDataFrame = T,flatten = T)
data189<-fromJSON(txt = data$`e8f330fd-6ed1-4e74-8392-51f04b0d496c`$data,simplifyDataFrame = T,flatten = T)
data190<-fromJSON(txt = data$`e91167a4-0a55-4ad4-8989-04e5cada6c39`$data,simplifyDataFrame = T,flatten = T)

#********************************************************Circle-Size-Experiment-2***************************#

data191<-fromJSON(txt = data$`2502899f-2a90-44cd-89ee-dd05e152085b`$data,simplifyDataFrame = T,flatten = T)
data192<-fromJSON(txt = data$`32f41e91-2e87-4c66-95ed-19d42890e3cc`$data,simplifyDataFrame = T,flatten = T)
data193<-fromJSON(txt = data$`423b53dd-ed45-4cfd-b5e6-7dd99be9cb70`$data,simplifyDataFrame = T,flatten = T)
data194<-fromJSON(txt = data$`603ab11e-d511-463f-a086-fea0d9500082`$data,simplifyDataFrame = T,flatten = T)
data195<-fromJSON(txt = data$`85cbfc54-82df-4de8-8c16-8f652e899520`$data,simplifyDataFrame = T,flatten = T)
data196<-fromJSON(txt = data$`8bd14a69-94b7-416f-8c54-6870b2fb3965`$data,simplifyDataFrame = T,flatten = T)
data197<-fromJSON(txt = data$`bedd021b-3b17-4c21-8d07-83d1126c9d9b`$data,simplifyDataFrame = T,flatten = T)
data198<-fromJSON(txt = data$`c0c8c3d8-42b3-4192-8b0b-5b4d228e6d66`$data,simplifyDataFrame = T,flatten = T)
data199<-fromJSON(txt = data$`ca448e46-8342-4b56-8061-ab3cee5910bb`$data,simplifyDataFrame = T,flatten = T)
data200<-fromJSON(txt = data$`16d2d3f3-4639-451d-9f8e-caad962b5b6f`$data,simplifyDataFrame = T,flatten = T)
data201<-fromJSON(txt = data$`3beeef0d-88b1-4c76-9b07-96a0d7b9db61`$data,simplifyDataFrame = T,flatten = T)
data202<-fromJSON(txt = data$`4628bf6d-b833-4f58-a199-4849573684b2`$data,simplifyDataFrame = T,flatten = T)
data203<-fromJSON(txt = data$`5ffd60fd-f7bb-4737-9298-684e5ea6f349`$data,simplifyDataFrame = T,flatten = T)
data204<-fromJSON(txt = data$`77e1a91e-53a2-4aad-98fa-0188b89a295f`$data,simplifyDataFrame = T,flatten = T)
data205<-fromJSON(txt = data$`83f15705-f523-4916-b708-b9432a227546`$data,simplifyDataFrame = T,flatten = T)
data206<-fromJSON(txt = data$`86dbe055-2180-437e-818c-1ac34de566a2`$data,simplifyDataFrame = T,flatten = T)
data207<-fromJSON(txt = data$`9473360d-651d-41a8-8c19-1ec3ca00f5b3`$data,simplifyDataFrame = T,flatten = T)
data208<-fromJSON(txt = data$`c157ad3d-2918-41b3-a943-557f137e97f6`$data,simplifyDataFrame = T,flatten = T)
data209<-fromJSON(txt = data$`dbf74925-2590-4225-aa6c-e1a9b6d5e89e`$data,simplifyDataFrame = T,flatten = T)
data210<-fromJSON(txt = data$`76067ad7-212c-4acf-9a89-c2d832eef071`$data,simplifyDataFrame = T,flatten = T)
data211<-fromJSON(txt = data$`ae230c54-fad9-48b4-866a-9cdba781cd96`$data,simplifyDataFrame = T,flatten = T)

data212<-fromJSON(txt = data$`27662856-9b13-477e-93c0-7fd6fcff6a6b`$data,simplifyDataFrame = T,flatten = T)
data213<-fromJSON(txt = data$`2f2195f8-3c8c-4d32-ac0b-46438fe79dcd`$data,simplifyDataFrame = T,flatten = T)
data214<-fromJSON(txt = data$`6b551e58-af73-4e7b-98a6-f03b209f9ffb`$data,simplifyDataFrame = T,flatten = T)
data215<-fromJSON(txt = data$`804051c5-5464-4242-91d6-d7785a723146`$data,simplifyDataFrame = T,flatten = T)
data216<-fromJSON(txt = data$`9f409ff7-91d8-4a51-b8da-ad1d13703ff5`$data,simplifyDataFrame = T,flatten = T)
data217<-fromJSON(txt = data$`cc49a086-0961-451e-8e78-7b89bf9151bc`$data,simplifyDataFrame = T,flatten = T)
data218<-fromJSON(txt = data$`e36405ca-88f4-4eb1-9596-a5aac6cca0a8`$data,simplifyDataFrame = T,flatten = T)
data219<-fromJSON(txt = data$`145eb4a9-3df5-4dc5-8b8d-338cf334580d`$data,simplifyDataFrame = T,flatten = T)

data220<-fromJSON(txt = data$`29429605-5ede-4312-9c48-c053ba55e8d7`$data,simplifyDataFrame = T,flatten = T)
data221<-fromJSON(txt = data$`bfa75e24-205a-4b09-a950-fcf2c48cf526`$data,simplifyDataFrame = T,flatten = T)
data222<-fromJSON(txt = data$`fba473ce-ec29-4301-aa5e-d54c90574042`$data,simplifyDataFrame = T,flatten = T)

data223<-fromJSON(txt = data$`1f12146c-dc16-40b7-bd7a-254ebd0b7cd2`$data,simplifyDataFrame = T,flatten = T)
data224<-fromJSON(txt = data$`323b52c7-cd12-46fd-8752-e0e257f63a41`$data,simplifyDataFrame = T,flatten = T)
data225<-fromJSON(txt = data$`3adf6bd3-cc79-4c7c-baec-314ecca656fd`$data,simplifyDataFrame = T,flatten = T)
data226<-fromJSON(txt = data$`758d15fb-23d5-47ca-9d15-3d740d8f650c`$data,simplifyDataFrame = T,flatten = T)
data227<-fromJSON(txt = data$`b25f854b-2b2a-43f5-8326-365e2cb225e2`$data,simplifyDataFrame = T,flatten = T)
data228<-fromJSON(txt = data$`bd934564-f71e-41db-94e3-ddc61182ddc0`$data,simplifyDataFrame = T,flatten = T)
data229<-fromJSON(txt = data$`d8b9a722-1c1d-4eed-88cb-b9272b8f26cb`$data,simplifyDataFrame = T,flatten = T)
data230<-fromJSON(txt = data$`eb3f8da4-82bf-49d6-b4db-31df5276e6c9`$data,simplifyDataFrame = T,flatten = T)
data231<-fromJSON(txt = data$`019f2e40-9f74-4523-87b7-5c59feea43d8`$data,simplifyDataFrame = T,flatten = T)

data232<-fromJSON(txt = data$`8c84ba34-e0f5-462f-a5d3-dbdb6c4bb56a`$data,simplifyDataFrame = T,flatten = T)
data233<-fromJSON(txt = data$`4f8e5ce0-1f54-4519-87b1-48ffe0d356e7`$data,simplifyDataFrame = T,flatten = T)
data234<-fromJSON(txt = data$`914ad4a3-e543-42c1-b729-44d2ac0ca08c`$data,simplifyDataFrame = T,flatten = T)
data235<-fromJSON(txt = data$`d14879d0-7492-452c-9d12-401ece251f1f`$data,simplifyDataFrame = T,flatten = T)
data236<-fromJSON(txt = data$`d53f716f-9d50-49e3-840b-6de784c789c4`$data,simplifyDataFrame = T,flatten = T)
data237<-fromJSON(txt = data$`dd5ed059-b31d-46a0-9a59-8d3f9439c0f0`$data,simplifyDataFrame = T,flatten = T)
data238<-fromJSON(txt = data$`e5a26178-a13b-4b38-b942-7b458aea40fa`$data,simplifyDataFrame = T,flatten = T)
data239<-fromJSON(txt = data$`060de19f-fe37-4999-9f71-e51a3491f700`$data,simplifyDataFrame = T,flatten = T)
data240<-fromJSON(txt = data$`09e61f36-ced2-484a-88b9-7e16870ecc8d`$data,simplifyDataFrame = T,flatten = T)
data241<-fromJSON(txt = data$`72c25f18-8deb-4672-b281-bd8ee6e9cddb`$data,simplifyDataFrame = T,flatten = T)
data242<-fromJSON(txt = data$`bfc1a90d-be11-4262-8eb5-6d3e42bda80a`$data,simplifyDataFrame = T,flatten = T)
data243<-fromJSON(txt = data$`ddf13e0d-8aa6-40e8-a443-59397203d82f`$data,simplifyDataFrame = T,flatten = T)
data244<-fromJSON(txt = data$`7ef4a815-1087-471b-9f7f-9ac04f931e44`$data,simplifyDataFrame = T,flatten = T)

data245<-fromJSON(txt = data$`0e1a651e-5bf9-47ec-9d6d-dc318587f752`$data,simplifyDataFrame = T,flatten = T)
data246<-fromJSON(txt = data$`17ecb502-6ab1-433d-a909-b056f014987c`$data,simplifyDataFrame = T,flatten = T)
data247<-fromJSON(txt = data$`5fe57a7b-49c5-461c-a910-a62a012ca0ba`$data,simplifyDataFrame = T,flatten = T)
data248<-fromJSON(txt = data$`acc287cc-22e2-4f46-8ff0-18304ce017fa`$data,simplifyDataFrame = T,flatten = T)
data249<-fromJSON(txt = data$`b0d543ed-7d0a-409e-891b-ff7b6d5d24b8`$data,simplifyDataFrame = T,flatten = T)
data250<-fromJSON(txt = data$`cf4db7c1-b10b-4ba3-9000-6915a32ca2c2`$data,simplifyDataFrame = T,flatten = T)
data251<-fromJSON(txt = data$`d35a7fc4-dcce-4e79-9adf-21bb04fcae24`$data,simplifyDataFrame = T,flatten = T)
data252<-fromJSON(txt = data$`f9e341f2-09c6-411a-bbda-8efe59880f3e`$data,simplifyDataFrame = T,flatten = T)

data253<-fromJSON(txt = data$`0a471c94-0877-48aa-a2d0-7163b2a33689`$data,simplifyDataFrame = T,flatten = T)
data254<-fromJSON(txt = data$`1e53526f-bdfb-47c3-b291-f3b8f59f30b5`$data,simplifyDataFrame = T,flatten = T)
data255<-fromJSON(txt = data$`24125de5-dbf6-405d-a5d7-b3b6ffe1f637`$data,simplifyDataFrame = T,flatten = T)
data256<-fromJSON(txt = data$`3f0bfad7-6730-40e0-8cc4-6cf470a9fdd5`$data,simplifyDataFrame = T,flatten = T)
data257<-fromJSON(txt = data$`53049e0d-5cc0-44d7-a61c-7ce8885f9efe`$data,simplifyDataFrame = T,flatten = T)
data258<-fromJSON(txt = data$`58e0e8cc-cae8-46d7-be10-0a9b4e424446`$data,simplifyDataFrame = T,flatten = T)
data259<-fromJSON(txt = data$`6535a776-b09c-4fea-9927-4299ff4f8fff`$data,simplifyDataFrame = T,flatten = T)
data260<-fromJSON(txt = data$`6cba6b23-4b10-496f-9e84-94ded44d42b8`$data,simplifyDataFrame = T,flatten = T)
data261<-fromJSON(txt = data$`7fb84d69-b1c6-443b-92f6-3ec2508efa08`$data,simplifyDataFrame = T,flatten = T)
data262<-fromJSON(txt = data$`970fea1e-bfed-41c2-99b6-aa2aaa32d380`$data,simplifyDataFrame = T,flatten = T)
data263<-fromJSON(txt = data$`ca3800bc-e5c7-4181-80e5-2f96bbae2504`$data,simplifyDataFrame = T,flatten = T)
data264<-fromJSON(txt = data$`e9ec111d-3091-4854-b218-67a64046225d`$data,simplifyDataFrame = T,flatten = T)
data265<-fromJSON(txt = data$`ea813a34-bb22-4548-88dd-0cd87647eb9f`$data,simplifyDataFrame = T,flatten = T)
data266<-fromJSON(txt = data$`f2aad8f2-470d-4fe1-be8c-c551eaa33fba`$data,simplifyDataFrame = T,flatten = T)

data267<-fromJSON(txt = data$`08327962-8a02-476c-9bfc-996680ce63f4`$data,simplifyDataFrame = T,flatten = T)
data268<-fromJSON(txt = data$`386ff5ec-2ba9-45c9-b89f-82eb47ca0c3e`$data,simplifyDataFrame = T,flatten = T)
data269<-fromJSON(txt = data$`3ed7b64d-8075-433e-9bc9-7382f3081001`$data,simplifyDataFrame = T,flatten = T)
data270<-fromJSON(txt = data$`5bb9130b-8ec1-41cb-b933-803f3bd581de`$data,simplifyDataFrame = T,flatten = T)
data271<-fromJSON(txt = data$`876a60a0-8124-4003-b019-142f91cbd119`$data,simplifyDataFrame = T,flatten = T)
data272<-fromJSON(txt = data$`8fd9bb7a-d833-4f14-b7a0-ecbc6fbfb3d2`$data,simplifyDataFrame = T,flatten = T)
data273<-fromJSON(txt = data$`a4bfd674-a991-4a26-a8e4-e40208841975`$data,simplifyDataFrame = T,flatten = T)
data274<-fromJSON(txt = data$`ab97c690-3b2f-423c-9347-99eb7e84b2eb`$data,simplifyDataFrame = T,flatten = T)
data275<-fromJSON(txt = data$`adf00c04-f644-4888-b0d1-1f717c38694b`$data,simplifyDataFrame = T,flatten = T)
data276<-fromJSON(txt = data$`c248a906-49c4-4554-9fe9-9c11462503c2`$data,simplifyDataFrame = T,flatten = T)
data277<-fromJSON(txt = data$`d0af4f5b-975f-48c1-9073-7247522ab536`$data,simplifyDataFrame = T,flatten = T)
data278<-fromJSON(txt = data$`d482ebf1-a1cb-43f7-96f6-4398e7b8bd0d`$data,simplifyDataFrame = T,flatten = T)
data279<-fromJSON(txt = data$`efa5a7f7-9eaf-4dd7-9af3-8db7e5fa7cfc`$data,simplifyDataFrame = T,flatten = T)
data280<-fromJSON(txt = data$`fc56be35-86c7-4f10-bdba-2544dfc641e7`$data,simplifyDataFrame = T,flatten = T)

data281<-fromJSON(txt = data$`20523174-978f-42fc-8309-7ae9f3f87f4a`$data,simplifyDataFrame = T,flatten = T)
data282<-fromJSON(txt = data$`355da965-2d38-48bd-a38e-eef16149354a`$data,simplifyDataFrame = T,flatten = T)
data283<-fromJSON(txt = data$`5e0ba311-873d-46ca-a63c-f33e2e071c88`$data,simplifyDataFrame = T,flatten = T)
data284<-fromJSON(txt = data$`a0697d22-51d3-4d0e-a361-ddc325a221d7`$data,simplifyDataFrame = T,flatten = T)
data285<-fromJSON(txt = data$`e748688b-c121-4fda-b58f-200355d11311`$data,simplifyDataFrame = T,flatten = T)
data286<-fromJSON(txt = data$`02a9a295-c491-4da5-88f4-8fd5e1d4785d`$data,simplifyDataFrame = T,flatten = T)

TEST1<-fromJSON(txt = data$`38349ebd-ec35-4ce1-ba98-607b2963313d`$data,simplifyDataFrame = T,flatten = T)
TEST2<-fromJSON(txt = data$`917fd4ee-0d1c-4097-8de8-d9f6c64264c2`$data,simplifyDataFrame = T,flatten = T)
TEST3<-fromJSON(txt = data$`b047b62c-7b98-448c-9c1c-9108675239bc`$data,simplifyDataFrame = T,flatten = T)
TEST4<-fromJSON(txt = data$`c3972f54-38dc-426e-8fa6-6fc87ab8d43e`$data,simplifyDataFrame = T,flatten = T)
TEST5<-fromJSON(txt = data$`7fb2bc2a-847e-4b8d-a699-587a085b84fd`$data,simplifyDataFrame = T,flatten = T) 

Labtest1<-fromJSON(txt = data$`1bc71d69-60fd-4a2e-9e50-7f51ef5020f1`$data,simplifyDataFrame = T,flatten = T)
Labtest2<-fromJSON(txt = data$`93edf2c3-712a-4278-a134-4f89327a6047`$data,simplifyDataFrame = T,flatten = T)

data2021_1<-fromJSON(txt = data$`9713bbce-624a-4411-8a79-585a8e1f6fff`$data,simplifyDataFrame = T,flatten = T)
data2021_2<-fromJSON(txt = data$`cf939440-f289-4555-a05e-bdbb7982fdb5`$data,simplifyDataFrame = T,flatten = T)

data2021_3<-fromJSON(txt = data$`0279fc36-122a-4314-b6ca-e48de49d3f98`$data,simplifyDataFrame = T,flatten = T)
data2021_4<-fromJSON(txt = data$`1c95a3ef-a0a5-4871-8299-01262f63c15e`$data,simplifyDataFrame = T,flatten = T)
data2021_5<-fromJSON(txt = data$`2a15f217-60af-4007-bc49-d3248d9938f9`$data,simplifyDataFrame = T,flatten = T)
data2021_6<-fromJSON(txt = data$`2d00fbe6-0280-4caf-9e2b-bba195df25f4`$data,simplifyDataFrame = T,flatten = T)
data2021_7<-fromJSON(txt = data$`35995a0c-660f-4743-aae9-eef68bd69635`$data,simplifyDataFrame = T,flatten = T)
data2021_8<-fromJSON(txt = data$`35f9e04f-b004-4021-b90d-f7ef93c597d9`$data,simplifyDataFrame = T,flatten = T)
data2021_9<-fromJSON(txt = data$`54172917-1dee-45c5-bf74-81a16bb6e177`$data,simplifyDataFrame = T,flatten = T)
data2021_10<-fromJSON(txt = data$`570297fc-ee44-405c-a74a-5d316e3e350a`$data,simplifyDataFrame = T,flatten = T)
data2021_11<-fromJSON(txt = data$`69609d80-cf23-4638-ae5b-71e58e8719d5`$data,simplifyDataFrame = T,flatten = T)
data2021_12<-fromJSON(txt = data$`6fd06c0d-c395-4641-8f6b-75f8530d0963`$data,simplifyDataFrame = T,flatten = T)
data2021_13<-fromJSON(txt = data$`76af2007-faeb-4620-9dc6-e470fcbb8c1d`$data,simplifyDataFrame = T,flatten = T)
data2021_14<-fromJSON(txt = data$`818714e5-0aeb-4e1a-8d9c-979f7ce12aa3`$data,simplifyDataFrame = T,flatten = T)
data2021_15<-fromJSON(txt = data$`969b88f5-ee6d-47f8-a763-8c8b43f14593`$data,simplifyDataFrame = T,flatten = T)
data2021_16<-fromJSON(txt = data$`9e3c847c-442a-4672-b409-61eee25db149`$data,simplifyDataFrame = T,flatten = T)
data2021_17<-fromJSON(txt = data$`9ea5b744-9659-449b-b230-ccb01e781104`$data,simplifyDataFrame = T,flatten = T)
data2021_18<-fromJSON(txt = data$`aaa35f2b-e080-450a-92e4-9fc33addfd44`$data,simplifyDataFrame = T,flatten = T)
data2021_19<-fromJSON(txt = data$`aecd1bcf-636a-44b5-bac9-b050d4de332a`$data,simplifyDataFrame = T,flatten = T)
data2021_20<-fromJSON(txt = data$`b6a4da00-547e-4bd9-b164-d1ef8dee6e57`$data,simplifyDataFrame = T,flatten = T)
data2021_21<-fromJSON(txt = data$`b99f32de-938c-4cf6-b923-26323eedd740`$data,simplifyDataFrame = T,flatten = T)
data2021_22<-fromJSON(txt = data$`bc666826-d5b4-4edb-89ee-8efc6f57e51b`$data,simplifyDataFrame = T,flatten = T)
data2021_23<-fromJSON(txt = data$`cd95b0b6-743a-4acc-a91b-9445ddac9542`$data,simplifyDataFrame = T,flatten = T)
data2021_24<-fromJSON(txt = data$`d0565199-44b5-4d00-a440-a5ab8f96a561`$data,simplifyDataFrame = T,flatten = T)
data2021_25<-fromJSON(txt = data$`e35a8583-294d-40e8-bfc3-b6a0da6ac250`$data,simplifyDataFrame = T,flatten = T)
data2021_26<-fromJSON(txt = data$`ea520a80-8602-487c-afc2-6d096443af3c`$data,simplifyDataFrame = T,flatten = T)
data2021_27<-fromJSON(txt = data$`f000871f-d5b4-43f3-925d-4da1cc21735a`$data,simplifyDataFrame = T,flatten = T)
data2021_28<-fromJSON(txt = data$`f15cfb25-d943-46f5-af2d-b5bc33ce517b`$data,simplifyDataFrame = T,flatten = T)
data2021_29<-fromJSON(txt = data$`d704582d-85dd-4735-a58b-f96d58b6185e`$data,simplifyDataFrame = T,flatten = T)
data2021_30<-fromJSON(txt = data$`251e4790-5170-4e7d-84b3-68a1438d70ac`$data,simplifyDataFrame = T,flatten = T)
data2021_31<-fromJSON(txt = data$`a29820ef-1567-4cb2-9990-6d921bbbaaee`$data,simplifyDataFrame = T,flatten = T)
data2021_32<-fromJSON(txt = data$`85c5517a-07ff-49d0-becf-7c6b52180b52`$data,simplifyDataFrame = T,flatten = T)
data2021_33<-fromJSON(txt = data$`4e0c8887-0ce4-455b-b19a-6a2dd6c02f7e`$data,simplifyDataFrame = T,flatten = T)

data2021_34<-fromJSON(txt = data$`1d0ae75b-53a2-48a1-8bff-174da4e507f9`$data,simplifyDataFrame = T,flatten = T)
data2021_35<-fromJSON(txt = data$`24d76e5a-5f0a-48f1-861c-c5c536c7a3ec`$data,simplifyDataFrame = T,flatten = T)
data2021_36<-fromJSON(txt = data$`281aa767-a789-4cc7-8e16-2ef629e5f0d3`$data,simplifyDataFrame = T,flatten = T)
data2021_37<-fromJSON(txt = data$`51326444-8f60-4844-892d-6a0bc907aeef`$data,simplifyDataFrame = T,flatten = T)
data2021_38<-fromJSON(txt = data$`6b9310ef-0d2d-47e9-8d03-42e3bfdc8dc8`$data,simplifyDataFrame = T,flatten = T)
data2021_39<-fromJSON(txt = data$`7c702ba2-3f2e-4333-8e21-a4515e02234d`$data,simplifyDataFrame = T,flatten = T)
data2021_40<-fromJSON(txt = data$`8d9d9342-d497-45e3-b475-4810663df22d`$data,simplifyDataFrame = T,flatten = T)
data2021_41<-fromJSON(txt = data$`a980f3c5-f0a5-4bea-8ede-7a20c1b30599`$data,simplifyDataFrame = T,flatten = T)
data2021_42<-fromJSON(txt = data$`c05c7ac4-48bc-4808-967e-aca033dea61f`$data,simplifyDataFrame = T,flatten = T)
data2021_43<-fromJSON(txt = data$`e291b791-19ce-4b6b-99cc-a1bde60d01e2`$data,simplifyDataFrame = T,flatten = T)
data2021_44<-fromJSON(txt = data$`eb0e5f91-13e7-4d52-8535-856369c19107`$data,simplifyDataFrame = T,flatten = T)
data2021_45<-fromJSON(txt = data$`3b4d4348-2d54-4a7c-b1d5-efc1c8b02113`$data,simplifyDataFrame = T,flatten = T)
data2021_46<-fromJSON(txt = data$`3d89f368-3376-4cdf-a4d7-0b02615e7b07`$data,simplifyDataFrame = T,flatten = T)
data2021_47<-fromJSON(txt = data$`3ef4a319-24c5-473b-a98f-41fe8b0bc7c0`$data,simplifyDataFrame = T,flatten = T)
data2021_48<-fromJSON(txt = data$`4c94e354-f40f-4b71-83bc-751013f5dc1f`$data,simplifyDataFrame = T,flatten = T)
data2021_49<-fromJSON(txt = data$`9a62fce5-d41e-4acb-bc5f-6e19629021cf`$data,simplifyDataFrame = T,flatten = T)
data2021_50<-fromJSON(txt = data$`d458b45d-216f-4a27-9acf-b3e19c9fb434`$data,simplifyDataFrame = T,flatten = T)
data2021_51<-fromJSON(txt = data$`edb41a46-7603-48da-9e15-2104ece37b90`$data,simplifyDataFrame = T,flatten = T)
data2021_52<-fromJSON(txt = data$`6371dbbf-52cf-45e2-aed3-b397be0dc3ec`$data,simplifyDataFrame = T,flatten = T)
data2021_53<-fromJSON(txt = data$`d8429b58-c526-49c6-aae4-b88aac25a438`$data,simplifyDataFrame = T,flatten = T)
data2021_54<-fromJSON(txt = data$`e2085b40-908c-4a64-a832-59b5cc71ac85`$data,simplifyDataFrame = T,flatten = T)
data2021_55<-fromJSON(txt = data$`e3d5d4d9-3ff1-47d3-97b0-659052c25e0f`$data,simplifyDataFrame = T,flatten = T)

data2021_56<-fromJSON(txt = data$`060f6013-42c4-417d-9725-81d39e68cbd7`$data,simplifyDataFrame = T,flatten = T)
data2021_57<-fromJSON(txt = data$`08a39e22-850e-45d7-baab-450cc3d88876`$data,simplifyDataFrame = T,flatten = T)
data2021_58<-fromJSON(txt = data$`09d64913-47c2-4172-9da7-e21bf978eef0`$data,simplifyDataFrame = T,flatten = T)
data2021_59<-fromJSON(txt = data$`09ef71fb-bd05-4a0e-bad3-48786ea55b18`$data,simplifyDataFrame = T,flatten = T)
data2021_60<-fromJSON(txt = data$`0fafb5ff-22a9-4531-9c05-c7e54e65b22a`$data,simplifyDataFrame = T,flatten = T)
data2021_61<-fromJSON(txt = data$`136c6508-ce3b-4415-95d1-d213962a6b3c`$data,simplifyDataFrame = T,flatten = T)
data2021_62<-fromJSON(txt = data$`2463ab64-f3c0-4a08-b99c-8edde89bdc86`$data,simplifyDataFrame = T,flatten = T)
data2021_63<-fromJSON(txt = data$`25dde9fb-7dd4-4041-97a0-f53448251ada`$data,simplifyDataFrame = T,flatten = T)
data2021_64<-fromJSON(txt = data$`294185a5-d6e7-488b-949b-be2e29f4e553`$data,simplifyDataFrame = T,flatten = T)
data2021_65<-fromJSON(txt = data$`3e3b683f-6025-4292-a3ac-0c0c37c2595d`$data,simplifyDataFrame = T,flatten = T)
data2021_66<-fromJSON(txt = data$`400fe304-6df1-47b0-9eac-1d86f00eeaf1`$data,simplifyDataFrame = T,flatten = T)
data2021_67<-fromJSON(txt = data$`44a07824-63fa-44f4-97af-b79bcd393c32`$data,simplifyDataFrame = T,flatten = T)
data2021_68<-fromJSON(txt = data$`558c40ca-aeaf-4758-8ac6-8ec3a9c6f359`$data,simplifyDataFrame = T,flatten = T)
data2021_69<-fromJSON(txt = data$`5a1cea05-b532-4ce5-aea5-c4ca5168873a`$data,simplifyDataFrame = T,flatten = T)
data2021_70<-fromJSON(txt = data$`5d7df46b-8d82-4df8-a060-9eead4f21da9`$data,simplifyDataFrame = T,flatten = T)
data2021_71<-fromJSON(txt = data$`5e685429-b9ad-4620-82ce-ddc3dfa0f619`$data,simplifyDataFrame = T,flatten = T)
data2021_72<-fromJSON(txt = data$`7b7931d4-b864-4441-bc5c-c2d67b8a80a5`$data,simplifyDataFrame = T,flatten = T)
data2021_73<-fromJSON(txt = data$`815776bc-9ae8-4c69-b364-1b2733ae48a7`$data,simplifyDataFrame = T,flatten = T)
data2021_74<-fromJSON(txt = data$`87c46453-d2f6-4c8a-983e-81fa737a9deb`$data,simplifyDataFrame = T,flatten = T)
data2021_75<-fromJSON(txt = data$`88f3ee74-779e-41fd-95f8-70f80630fa1f`$data,simplifyDataFrame = T,flatten = T)
data2021_76<-fromJSON(txt = data$`8a3357e4-50cc-4e41-9f54-8339d06419f0`$data,simplifyDataFrame = T,flatten = T)
data2021_77<-fromJSON(txt = data$`8f067309-ab26-4cbb-a572-1a3ac45d317a`$data,simplifyDataFrame = T,flatten = T)
data2021_78<-fromJSON(txt = data$`928c79e6-24f2-4576-bd2f-f299751b2329`$data,simplifyDataFrame = T,flatten = T)
data2021_79<-fromJSON(txt = data$`a18d8168-4921-47ed-b76b-4f94d354e160`$data,simplifyDataFrame = T,flatten = T)
data2021_80<-fromJSON(txt = data$`ad5b8bbd-7c01-48d0-9dfd-230098dfffee`$data,simplifyDataFrame = T,flatten = T)
data2021_81<-fromJSON(txt = data$`ba9b4694-20ff-4b07-a8a4-175d8e6205da`$data,simplifyDataFrame = T,flatten = T)
data2021_82<-fromJSON(txt = data$`bcc40732-bdb0-4751-aac0-530d075efb9a`$data,simplifyDataFrame = T,flatten = T)
data2021_83<-fromJSON(txt = data$`bddc539a-cd63-488f-b96f-3b4731c644f3`$data,simplifyDataFrame = T,flatten = T)
data2021_84<-fromJSON(txt = data$`c2b191c8-e7f2-46c5-be27-022bdf61c7b9`$data,simplifyDataFrame = T,flatten = T)
data2021_85<-fromJSON(txt = data$`cb656f57-a7fc-43ee-959c-1d7fee7fd731`$data,simplifyDataFrame = T,flatten = T)
data2021_86<-fromJSON(txt = data$`d86e2abe-dc68-41df-9b92-b0b7bf076948`$data,simplifyDataFrame = T,flatten = T)
data2021_87<-fromJSON(txt = data$`d8c3e0cb-30d0-40f7-99d8-919af8e1421d`$data,simplifyDataFrame = T,flatten = T)
data2021_88<-fromJSON(txt = data$`d973bc46-3d0b-4e84-ae67-7b412a2159ea`$data,simplifyDataFrame = T,flatten = T)
data2021_89<-fromJSON(txt = data$`d9d46158-72e6-4418-a606-3fe09e5232ab`$data,simplifyDataFrame = T,flatten = T)
data2021_90<-fromJSON(txt = data$`dd7aa30c-06c4-41d6-b0ea-e8b6fb86953b`$data,simplifyDataFrame = T,flatten = T)
data2021_91<-fromJSON(txt = data$`e0b48ab2-fca0-48b8-94be-ff72bae3916a`$data,simplifyDataFrame = T,flatten = T)
data2021_92<-fromJSON(txt = data$`ea73cecf-a116-4bd3-82d3-beeee193e0ab`$data,simplifyDataFrame = T,flatten = T)
data2021_93<-fromJSON(txt = data$`eb3113bb-c80e-453a-b87a-68cf3d7a5832`$data,simplifyDataFrame = T,flatten = T)

data2021_94<-fromJSON(txt = data$`4b7796ef-592e-4010-9f57-8ae5ab342946`$data,simplifyDataFrame = T,flatten = T)
data2021_95<-fromJSON(txt = data$`ad3b4c9f-a77d-4d5b-b78d-147ec601f54d`$data,simplifyDataFrame = T,flatten = T)
data2021_96<-fromJSON(txt = data$`dd0b4a4c-e227-4fa3-ac0c-111726c2d548`$data,simplifyDataFrame = T,flatten = T)

data2021_97<-fromJSON(txt = data$`00f80556-e31d-4489-9471-9270cd6afe99`$data,simplifyDataFrame = T,flatten = T)
data2021_98<-fromJSON(txt = data$`051f5662-5ae5-4b43-9394-d0f6af355f28`$data,simplifyDataFrame = T,flatten = T)
data2021_99<-fromJSON(txt = data$`192c9990-6e9e-4265-82d2-58c6bef40509`$data,simplifyDataFrame = T,flatten = T)
data2021_100<-fromJSON(txt = data$`3b448752-c35e-4c9f-b19f-f7d24b07634a`$data,simplifyDataFrame = T,flatten = T)
data2021_101<-fromJSON(txt = data$`4131625c-cd75-4556-b91a-157d4fb149ab`$data,simplifyDataFrame = T,flatten = T)
data2021_102<-fromJSON(txt = data$`48bfac73-e28c-4f0b-ad8c-4002cff0cb1e`$data,simplifyDataFrame = T,flatten = T)
data2021_103<-fromJSON(txt = data$`49eec75c-8cdb-4746-a12d-ddd9dea6a7bf`$data,simplifyDataFrame = T,flatten = T)
data2021_104<-fromJSON(txt = data$`54c17b72-90a1-43f6-b8a5-8987e9d6b5f4`$data,simplifyDataFrame = T,flatten = T)
data2021_105<-fromJSON(txt = data$`57100442-3a4d-4b41-83bb-2abec0d0b6af`$data,simplifyDataFrame = T,flatten = T)
data2021_106<-fromJSON(txt = data$`5b2f4363-0202-4973-867f-f403caf6a534`$data,simplifyDataFrame = T,flatten = T)
data2021_107<-fromJSON(txt = data$`85aacee4-4dd9-4efa-9b1c-0a5953624e67`$data,simplifyDataFrame = T,flatten = T)
data2021_108<-fromJSON(txt = data$`8672966b-e61d-4300-9115-9f739715db0e`$data,simplifyDataFrame = T,flatten = T)
data2021_109<-fromJSON(txt = data$`89fb7b71-bf6f-48a9-87d1-5d717ab479fa`$data,simplifyDataFrame = T,flatten = T)
data2021_110<-fromJSON(txt = data$`8be05e2a-5414-49fc-b3bc-e3d16faec841`$data,simplifyDataFrame = T,flatten = T)
data2021_111<-fromJSON(txt = data$`8d937787-0e92-4a31-bea8-c99721f26d59`$data,simplifyDataFrame = T,flatten = T)
data2021_112<-fromJSON(txt = data$`9acb363e-03a8-4690-91c4-7e94c31cb167`$data,simplifyDataFrame = T,flatten = T)
data2021_113<-fromJSON(txt = data$`a886f022-e974-42ce-a3ab-479d76baf5af`$data,simplifyDataFrame = T,flatten = T)
data2021_114<-fromJSON(txt = data$`b67b215e-67e9-4bbb-abeb-367e8368b4f5`$data,simplifyDataFrame = T,flatten = T)
data2021_115<-fromJSON(txt = data$`bb13089b-d79f-4d2f-99f0-f4283a15852e`$data,simplifyDataFrame = T,flatten = T)
data2021_116<-fromJSON(txt = data$`c01ee7f3-90a4-4c3f-96b4-b98c01552fa7`$data,simplifyDataFrame = T,flatten = T)
data2021_117<-fromJSON(txt = data$`c755d7d3-83d2-4989-b683-bd138b35a91b`$data,simplifyDataFrame = T,flatten = T)
data2021_118<-fromJSON(txt = data$`d816c9a7-230f-4b72-b2ea-26330af4935f`$data,simplifyDataFrame = T,flatten = T)
data2021_119<-fromJSON(txt = data$`dbca187d-6d91-4b7b-bbac-a84bec76ce4b`$data,simplifyDataFrame = T,flatten = T)
data2021_120<-fromJSON(txt = data$`e134e3a0-d7e3-4915-9310-3eb12d9662f5`$data,simplifyDataFrame = T,flatten = T)
data2021_121<-fromJSON(txt = data$`e1ec1112-7342-4791-af28-ca38fc5e2d7c`$data,simplifyDataFrame = T,flatten = T)
data2021_122<-fromJSON(txt = data$`e638122d-17be-4a8d-87d0-6910e1494055`$data,simplifyDataFrame = T,flatten = T)
data2021_123<-fromJSON(txt = data$`f56bb984-8441-42f5-a918-f2a95c7ca109`$data,simplifyDataFrame = T,flatten = T)
data2021_124<-fromJSON(txt = data$`f78eb213-d86a-48e3-ad91-95047c68f193`$data,simplifyDataFrame = T,flatten = T)
data2021_125<-fromJSON(txt = data$`fc5f6d18-ff60-48cf-abf4-55777cd33e40`$data,simplifyDataFrame = T,flatten = T)

data2021_126<-fromJSON(txt = data$`004b9835-6926-468e-9e10-f33fac98f6c2`$data,simplifyDataFrame = T,flatten = T)
data2021_127<-fromJSON(txt = data$`02526514-95b0-42d2-a4f6-0eea783b9ed4`$data,simplifyDataFrame = T,flatten = T)
data2021_128<-fromJSON(txt = data$`11be9202-24fd-4d74-a5cc-bbc1f3c956ba`$data,simplifyDataFrame = T,flatten = T)
data2021_129<-fromJSON(txt = data$`15b961f6-dad3-420e-b3f6-20057b35ea80`$data,simplifyDataFrame = T,flatten = T)
data2021_130<-fromJSON(txt = data$`1b57e196-66f5-4589-aca5-adfd2ddd95be`$data,simplifyDataFrame = T,flatten = T)
data2021_131<-fromJSON(txt = data$`2da0afa1-f2be-4f15-97aa-58d5f25f243a`$data,simplifyDataFrame = T,flatten = T)
data2021_132<-fromJSON(txt = data$`308f206a-679c-44aa-86e9-9e493b4a693a`$data,simplifyDataFrame = T,flatten = T)
data2021_133<-fromJSON(txt = data$`314548f7-14a7-48ae-8a6e-3ef580d3a97a`$data,simplifyDataFrame = T,flatten = T)
data2021_134<-fromJSON(txt = data$`39390bfd-2197-4a7a-8deb-b255fca0cd7e`$data,simplifyDataFrame = T,flatten = T)
data2021_135<-fromJSON(txt = data$`3b517e70-ebda-4782-a392-8aed339f2394`$data,simplifyDataFrame = T,flatten = T)
data2021_136<-fromJSON(txt = data$`421a1f4f-3d9e-4b6c-a2f2-f6f81e3476c9`$data,simplifyDataFrame = T,flatten = T)
data2021_137<-fromJSON(txt = data$`441fb12b-3a2d-43b4-ac71-9bdebc120b92`$data,simplifyDataFrame = T,flatten = T)
data2021_138<-fromJSON(txt = data$`4630d91a-c350-4b13-b1b0-8c02e176a4f6`$data,simplifyDataFrame = T,flatten = T)
data2021_139<-fromJSON(txt = data$`475ca12b-84e7-4bab-ae62-883f860bd297`$data,simplifyDataFrame = T,flatten = T)
data2021_140<-fromJSON(txt = data$`49612551-f7a3-43c1-b54e-35eb2c8ddb32`$data,simplifyDataFrame = T,flatten = T)
data2021_141<-fromJSON(txt = data$`4a889aef-be80-4c27-ae1b-1bbd8d71269b`$data,simplifyDataFrame = T,flatten = T)
data2021_142<-fromJSON(txt = data$`542fbf9f-5f1e-43c4-8284-d5fd0ea4c575`$data,simplifyDataFrame = T,flatten = T)
data2021_143<-fromJSON(txt = data$`63d8f5e0-60d8-487b-b84c-7dbb614d8c51`$data,simplifyDataFrame = T,flatten = T)
data2021_144<-fromJSON(txt = data$`63eb06d5-d8b0-48cc-8219-0c0807b5fb29`$data,simplifyDataFrame = T,flatten = T)
data2021_145<-fromJSON(txt = data$`6941787e-1648-4b86-af7e-7a0c95adf2f3`$data,simplifyDataFrame = T,flatten = T)
data2021_146<-fromJSON(txt = data$`69b4e7ef-1a56-4073-b5c3-e513f4ff9525`$data,simplifyDataFrame = T,flatten = T)
data2021_147<-fromJSON(txt = data$`6e58338f-6b7b-4555-88e1-24c3004b278e`$data,simplifyDataFrame = T,flatten = T)
data2021_148<-fromJSON(txt = data$`6ee791fe-2d71-4fb2-adb9-8d25d2aaaafd`$data,simplifyDataFrame = T,flatten = T)
data2021_149<-fromJSON(txt = data$`7461ed96-3abb-4b20-b58f-84d3efa2e4b6`$data,simplifyDataFrame = T,flatten = T)
data2021_150<-fromJSON(txt = data$`74de8f2b-8b69-4176-ae8e-66898c5b88a7`$data,simplifyDataFrame = T,flatten = T)
data2021_151<-fromJSON(txt = data$`7bc1ee7c-2acc-425f-b097-112272768752`$data,simplifyDataFrame = T,flatten = T)
data2021_152<-fromJSON(txt = data$`7c559f01-9388-4fb8-9fb6-effea03658d4`$data,simplifyDataFrame = T,flatten = T)
data2021_153<-fromJSON(txt = data$`8423dd21-c227-4e76-bb28-4b540eb15d23`$data,simplifyDataFrame = T,flatten = T)
data2021_154<-fromJSON(txt = data$`8b4d0acd-1811-4eb3-a1ea-09e185571a17`$data,simplifyDataFrame = T,flatten = T)
data2021_155<-fromJSON(txt = data$`8cb55fa7-4638-4675-a300-0965fcf05c07`$data,simplifyDataFrame = T,flatten = T)
data2021_156<-fromJSON(txt = data$`8d20f072-f154-4cb0-b3b0-80e5e9ff0133`$data,simplifyDataFrame = T,flatten = T)
data2021_157<-fromJSON(txt = data$`a43e3009-c706-464e-bd73-a1df49ca59c0`$data,simplifyDataFrame = T,flatten = T)
data2021_158<-fromJSON(txt = data$`a9e16227-1df6-445c-8873-b9473f545448`$data,simplifyDataFrame = T,flatten = T)
data2021_159<-fromJSON(txt = data$`ad11abb4-706d-4838-b141-2c364e027b04`$data,simplifyDataFrame = T,flatten = T)
data2021_160<-fromJSON(txt = data$`b5e8ae2f-7534-4d6a-8982-5dae80a6c220`$data,simplifyDataFrame = T,flatten = T)
data2021_161<-fromJSON(txt = data$`c1ddf1a7-7021-4c7e-87b3-d19291058e4f`$data,simplifyDataFrame = T,flatten = T)
data2021_162<-fromJSON(txt = data$`c20bef90-ceaa-4eb8-aefe-6834e704ca71`$data,simplifyDataFrame = T,flatten = T)
data2021_163<-fromJSON(txt = data$`cdc12400-3205-49f3-86d2-173af4d76fa3`$data,simplifyDataFrame = T,flatten = T)
data2021_164<-fromJSON(txt = data$`ceed4a96-0874-454f-a9fe-3c89000f5168`$data,simplifyDataFrame = T,flatten = T)
data2021_165<-fromJSON(txt = data$`d6d1f86b-b10a-4c65-a897-026a4340e22d`$data,simplifyDataFrame = T,flatten = T)
data2021_166<-fromJSON(txt = data$`d7417454-8948-42eb-8b70-263abf9e9e92`$data,simplifyDataFrame = T,flatten = T)
data2021_167<-fromJSON(txt = data$`d7767cd5-375b-4a67-8d17-c9202c6544b1`$data,simplifyDataFrame = T,flatten = T)
data2021_168<-fromJSON(txt = data$`e00287ec-a7a6-49ec-83b6-59a4a6e0662d`$data,simplifyDataFrame = T,flatten = T)
data2021_169<-fromJSON(txt = data$`e7f856d7-45d0-45f3-ad40-c4b68bb3293f`$data,simplifyDataFrame = T,flatten = T)
data2021_170<-fromJSON(txt = data$`e8ab554c-d82e-42d4-9f5f-d2d539aee109`$data,simplifyDataFrame = T,flatten = T)
data2021_171<-fromJSON(txt = data$`e9ee7534-b3c3-409b-b5da-af349796079e`$data,simplifyDataFrame = T,flatten = T)
data2021_172<-fromJSON(txt = data$`eceaa664-e460-4b68-ab40-54a5478a468a`$data,simplifyDataFrame = T,flatten = T)
data2021_173<-fromJSON(txt = data$`f1af95f0-1a51-4e6d-b2ee-289ceaa8d447`$data,simplifyDataFrame = T,flatten = T)
data2021_174<-fromJSON(txt = data$`f42735e7-7e85-407d-9da0-95841a7726c4`$data,simplifyDataFrame = T,flatten = T)
data2021_175<-fromJSON(txt = data$`f504f2dc-6cc0-4f9e-9abf-4af69892a9ad`$data,simplifyDataFrame = T,flatten = T)
data2021_176<-fromJSON(txt = data$`f752672a-a98e-4458-8a04-8478e2ca9508`$data,simplifyDataFrame = T,flatten = T)

data2021_177<-fromJSON(txt = data$`024deb1f-2d7f-422c-86b6-f2ecaba5951e`$data,simplifyDataFrame = T,flatten = T)
data2021_178<-fromJSON(txt = data$`0ffd95ad-0909-40f6-b356-ce9469fc0f47`$data,simplifyDataFrame = T,flatten = T)
data2021_179<-fromJSON(txt = data$`23a1c06c-52eb-4660-8ea4-1c0e11376a52`$data,simplifyDataFrame = T,flatten = T)
data2021_180<-fromJSON(txt = data$`2507130d-d314-4037-8b7f-194bea415a41`$data,simplifyDataFrame = T,flatten = T)
data2021_181<-fromJSON(txt = data$`40fa3147-965c-47be-8293-83ba544a0052`$data,simplifyDataFrame = T,flatten = T)
data2021_182<-fromJSON(txt = data$`41961f63-5a0f-4413-8746-5061357bdca5`$data,simplifyDataFrame = T,flatten = T)
data2021_183<-fromJSON(txt = data$`44a1e477-eee9-47b4-8cb5-11e130465d8b`$data,simplifyDataFrame = T,flatten = T)
data2021_184<-fromJSON(txt = data$`6ea7718d-a404-40ef-b6d9-d1beedccd13a`$data,simplifyDataFrame = T,flatten = T)
data2021_185<-fromJSON(txt = data$`7dfdb988-6183-4c98-bee6-6dd416d7e872`$data,simplifyDataFrame = T,flatten = T)
data2021_186<-fromJSON(txt = data$`82e92567-cd8d-4de3-81fc-12691a620b03`$data,simplifyDataFrame = T,flatten = T)
data2021_187<-fromJSON(txt = data$`8d2d617a-63b4-434f-8982-8e17df25ad67`$data,simplifyDataFrame = T,flatten = T)
data2021_188<-fromJSON(txt = data$`a241f8f3-6185-4e99-b326-b99e0eaab573`$data,simplifyDataFrame = T,flatten = T)
data2021_189<-fromJSON(txt = data$`a2dd032f-b896-47a6-a047-fe536eaaac97`$data,simplifyDataFrame = T,flatten = T)
data2021_190<-fromJSON(txt = data$`a5bff440-9a03-44f1-8c51-a43ad46a77d6`$data,simplifyDataFrame = T,flatten = T)
data2021_191<-fromJSON(txt = data$`a7f2dd3b-46a4-4013-b1a3-4cbe6c4a81aa`$data,simplifyDataFrame = T,flatten = T)
data2021_192<-fromJSON(txt = data$`b6b7de0e-744b-4562-8831-51fec4b50cc5`$data,simplifyDataFrame = T,flatten = T)
data2021_193<-fromJSON(txt = data$`c35bbe11-8700-4125-aab4-5123a768744a`$data,simplifyDataFrame = T,flatten = T)
data2021_194<-fromJSON(txt = data$`c8f87d8e-1e02-4ccb-803a-cd54be6b14ab`$data,simplifyDataFrame = T,flatten = T)
data2021_195<-fromJSON(txt = data$`cafb3fbd-7c65-424f-b60c-1649162e9f73`$data,simplifyDataFrame = T,flatten = T)
data2021_196<-fromJSON(txt = data$`d0bb9afc-e7af-44e7-b15f-9198f985d4e8`$data,simplifyDataFrame = T,flatten = T)
data2021_197<-fromJSON(txt = data$`db9d0dc4-4661-4818-adf6-24862d04ebd0`$data,simplifyDataFrame = T,flatten = T)
data2021_198<-fromJSON(txt = data$`e7f183c1-fe5e-4fe0-a9d7-1595b111fd18`$data,simplifyDataFrame = T,flatten = T)
data2021_199<-fromJSON(txt = data$`f6b73d01-bd4d-4104-a785-f11c3331f240`$data,simplifyDataFrame = T,flatten = T)
data2021_200<-fromJSON(txt = data$`ff6d264c-22bd-4ad2-bdbb-4c88987f00d8`$data,simplifyDataFrame = T,flatten = T)
data2021_201<-fromJSON(txt = data$`a6ea7db4-f328-4ff6-a0ee-b19aa220169b`$data,simplifyDataFrame = T,flatten = T)

data2021_202<-fromJSON(txt = data$`0b55d72c-fa38-41cb-85c5-fa4103c82fdb`$data,simplifyDataFrame = T,flatten = T)
data2021_203<-fromJSON(txt = data$`1354c85e-36a3-4883-bfdc-b4b25ff5517a`$data,simplifyDataFrame = T,flatten = T)
data2021_204<-fromJSON(txt = data$`1b87874e-77a3-41d5-97a9-1261cdbaebab`$data,simplifyDataFrame = T,flatten = T)
data2021_205<-fromJSON(txt = data$`273b8fe6-caad-4c72-9ec6-7e889a35d56f`$data,simplifyDataFrame = T,flatten = T)
data2021_206<-fromJSON(txt = data$`2ae5aa3f-a152-4447-9620-5ceba6348bfe`$data,simplifyDataFrame = T,flatten = T)
data2021_207<-fromJSON(txt = data$`2ae5ca6a-7104-443f-9899-bedbd3d2d7a6`$data,simplifyDataFrame = T,flatten = T)
data2021_208<-fromJSON(txt = data$`3688a131-121a-4813-959f-5cb15aea42d4`$data,simplifyDataFrame = T,flatten = T)
data2021_209<-fromJSON(txt = data$`605688bf-6741-41c2-aa41-40c4f2898f00`$data,simplifyDataFrame = T,flatten = T)
data2021_210<-fromJSON(txt = data$`95e9435a-313c-4af9-928f-6e751edc5df9`$data,simplifyDataFrame = T,flatten = T)
data2021_211<-fromJSON(txt = data$`95fe3e7d-b463-48f0-83a4-7c676f4829bb`$data,simplifyDataFrame = T,flatten = T)
data2021_212<-fromJSON(txt = data$`a1942924-6b64-4bf4-ad8a-a455ffef956c`$data,simplifyDataFrame = T,flatten = T)
data2021_213<-fromJSON(txt = data$`b69a2764-aed7-4900-b938-202b2c9d909d`$data,simplifyDataFrame = T,flatten = T)
data2021_214<-fromJSON(txt = data$`b7b8cba5-292b-4cdc-b6af-6afb4e0da90d`$data,simplifyDataFrame = T,flatten = T)
data2021_215<-fromJSON(txt = data$`bb62ef26-66c3-4b49-893f-bdb359b31fc0`$data,simplifyDataFrame = T,flatten = T)
data2021_216<-fromJSON(txt = data$`be10bc29-51a6-4d28-a6a6-59af3e6e5311`$data,simplifyDataFrame = T,flatten = T)
data2021_217<-fromJSON(txt = data$`bf7019e1-592b-41b6-8400-75eb851185bf`$data,simplifyDataFrame = T,flatten = T)
data2021_218<-fromJSON(txt = data$`c1d1563e-f9f0-4369-b961-b589faa41d13`$data,simplifyDataFrame = T,flatten = T)
data2021_219<-fromJSON(txt = data$`de1a031e-f48a-4017-b737-883b1acdc547`$data,simplifyDataFrame = T,flatten = T)
data2021_220<-fromJSON(txt = data$`e540917f-0a02-45a7-adad-772ef8c9c623`$data,simplifyDataFrame = T,flatten = T)
data2021_221<-fromJSON(txt = data$`ea8007ea-4af3-487c-9a75-cdd164bb51fd`$data,simplifyDataFrame = T,flatten = T)
data2021_222<-fromJSON(txt = data$`f934dfb5-ff92-4e0b-83ef-58d8aefba4a2`$data,simplifyDataFrame = T,flatten = T)
data2021_223<-fromJSON(txt = data$`fbc6e276-c303-4423-a5d4-317fc530ea63`$data,simplifyDataFrame = T,flatten = T)

data2021_224<-fromJSON(txt = data$`25990e52-7ea2-447a-b601-51908c8db642`$data,simplifyDataFrame = T,flatten = T)
data2021_225<-fromJSON(txt = data$`409bf6a7-9c17-4fd0-9ad5-28ba76bf9008`$data,simplifyDataFrame = T,flatten = T)
data2021_226<-fromJSON(txt = data$`7c5deb40-d311-4313-aff8-5c641e216d7f`$data,simplifyDataFrame = T,flatten = T)
data2021_227<-fromJSON(txt = data$`b21550ae-a87b-4288-8e61-22f847cc9e2c`$data,simplifyDataFrame = T,flatten = T)
data2021_228<-fromJSON(txt = data$`b295352f-a6b1-4b32-8f97-cc2f11d7a1b0`$data,simplifyDataFrame = T,flatten = T)
data2021_229<-fromJSON(txt = data$`b9ee8efc-c13d-444e-8f12-02be5ead2157`$data,simplifyDataFrame = T,flatten = T)
data2021_230<-fromJSON(txt = data$`dae48274-ff4f-4893-ab49-3baa844d770c`$data,simplifyDataFrame = T,flatten = T)
data2021_231<-fromJSON(txt = data$`13867911-1f2e-412d-8f52-f9245bed6e9b`$data,simplifyDataFrame = T,flatten = T)
data2021_232<-fromJSON(txt = data$`794f8de4-aa5b-4fbd-997b-a24be459918d`$data,simplifyDataFrame = T,flatten = T)
data2021_233<-fromJSON(txt = data$`a5989a44-9b7c-4294-93b3-fb6f8f392fad`$data,simplifyDataFrame = T,flatten = T)
data2021_234<-fromJSON(txt = data$`cc29efd3-c73c-429a-a6a9-06ba8b2aa70e`$data,simplifyDataFrame = T,flatten = T)
data2021_235<-fromJSON(txt = data$`fed2b4ab-c9a8-4990-a6df-b368984abcf5`$data,simplifyDataFrame = T,flatten = T)
data2021_236<-fromJSON(txt = data$`262238b3-e4fb-4a57-9367-6e35a833234a`$data,simplifyDataFrame = T,flatten = T)

data2021_237<-fromJSON(txt = data$`0856bfca-e1af-4517-9112-e930d9418758`$data,simplifyDataFrame = T,flatten = T)
data2021_238<-fromJSON(txt = data$`0b2bbd90-dfd7-4714-bf94-cc7b5071b7d6`$data,simplifyDataFrame = T,flatten = T)
data2021_239<-fromJSON(txt = data$`531bf797-dcbc-4cb2-8d22-f87324e1ab78`$data,simplifyDataFrame = T,flatten = T)
data2021_240<-fromJSON(txt = data$`5e4cc705-90b6-49b2-8ea7-112de7406fc1`$data,simplifyDataFrame = T,flatten = T)
data2021_241<-fromJSON(txt = data$`63d52f85-6f82-48c3-8b3e-936af89888eb`$data,simplifyDataFrame = T,flatten = T)
data2021_242<-fromJSON(txt = data$`7e441e4f-7c72-4046-bec7-bf95b7872ce2`$data,simplifyDataFrame = T,flatten = T)
data2021_243<-fromJSON(txt = data$`828d02f9-93ca-45c6-9cbb-055107178eb3`$data,simplifyDataFrame = T,flatten = T)
data2021_244<-fromJSON(txt = data$`8f5cfac1-75be-4c5e-9052-126ba9d68dfe`$data,simplifyDataFrame = T,flatten = T)
data2021_245<-fromJSON(txt = data$`b9ba3ad6-0034-42e9-b9ab-263f2c6d5d41`$data,simplifyDataFrame = T,flatten = T)
data2021_246<-fromJSON(txt = data$`e9b985ae-07d3-4c3e-a1e2-e3f58081380b`$data,simplifyDataFrame = T,flatten = T)
data2021_247<-fromJSON(txt = data$`f1237be0-dbb9-4fdd-99cc-89343577f82a`$data,simplifyDataFrame = T,flatten = T)

data2021_248<-fromJSON(txt = data$`589a8d63-7739-401c-ac29-850a403c4b4e`$data,simplifyDataFrame = T,flatten = T)
data2021_249<-fromJSON(txt = data$`506b8737-94b2-4a99-b425-87b07c1024c0`$data,simplifyDataFrame = T,flatten = T)
data2021_250<-fromJSON(txt = data$`1fc77415-80a9-4ff4-bebf-99b827d15cad`$data,simplifyDataFrame = T,flatten = T)
data2021_251<-fromJSON(txt = data$`201d6393-b425-4b86-868c-70725cc585bb`$data,simplifyDataFrame = T,flatten = T)
data2021_252<-fromJSON(txt = data$`5a76c2c7-6d64-4688-a9de-18a99b2be339`$data,simplifyDataFrame = T,flatten = T)
data2021_253<-fromJSON(txt = data$`7a6f132e-cb0c-4439-911b-d9288a918547`$data,simplifyDataFrame = T,flatten = T)
data2021_254<-fromJSON(txt = data$`aca4150f-e14f-4948-b550-df53f948aad1`$data,simplifyDataFrame = T,flatten = T)
data2021_255<-fromJSON(txt = data$`b517e358-1d9d-4d2d-b65c-a0b79f2992e3`$data,simplifyDataFrame = T,flatten = T)
data2021_256<-fromJSON(txt = data$`fd27ce85-bffb-4112-b537-e9d68f2551b2`$data,simplifyDataFrame = T,flatten = T)
data2021_257<-fromJSON(txt = data$`9ca641d4-f7cc-42de-a277-be7ec32a7731`$data,simplifyDataFrame = T,flatten = T)
data2021_258<-fromJSON(txt = data$`0505ffb4-8b56-46c0-81b5-4327a9b8c1c9`$data,simplifyDataFrame = T,flatten = T)

data2021_259<-fromJSON(txt = data$`3e21ffed-8bcb-452f-a8ce-9b14b69b6471`$data,simplifyDataFrame = T,flatten = T)
data2021_260<-fromJSON(txt = data$`82d7bf18-d1d2-437e-a948-e3029ed7e467`$data,simplifyDataFrame = T,flatten = T)

data2021_261<-fromJSON(txt = data$`09789d97-befb-46f6-9963-1d350ab35288`$data,simplifyDataFrame = T,flatten = T)
data2021_262<-fromJSON(txt = data$`549a7531-60b2-4102-9944-0cbdfc38ef7d`$data,simplifyDataFrame = T,flatten = T)
data2021_263<-fromJSON(txt = data$`ffde405c-9daa-4a40-a04f-a797901714be`$data,simplifyDataFrame = T,flatten = T)
data2021_264<-fromJSON(txt = data$`0c3a0439-5c80-43c9-a692-00de3b497500`$data,simplifyDataFrame = T,flatten = T)

data2021_265<-fromJSON(txt = data$`129a556a-c6a0-4cd5-9394-7f249156a286`$data,simplifyDataFrame = T,flatten = T)
data2021_266<-fromJSON(txt = data$`1e24a765-0c1b-494f-9cf5-f0ba767af87f`$data,simplifyDataFrame = T,flatten = T)
data2021_267<-fromJSON(txt = data$`21e9bbd0-1331-43fa-8b02-fa172c6e6046`$data,simplifyDataFrame = T,flatten = T)
data2021_268<-fromJSON(txt = data$`4111df07-5aa1-4dd4-b82d-e479ca902946`$data,simplifyDataFrame = T,flatten = T)
data2021_269<-fromJSON(txt = data$`53259235-d1ec-4ed0-9fae-23d2f07507c4`$data,simplifyDataFrame = T,flatten = T)
data2021_270<-fromJSON(txt = data$`6a9e4d7b-288a-4922-83f5-7b2345c5ae44`$data,simplifyDataFrame = T,flatten = T)
data2021_271<-fromJSON(txt = data$`748f3a8d-b163-4e16-a104-f0e2529b83de`$data,simplifyDataFrame = T,flatten = T)
data2021_272<-fromJSON(txt = data$`8f9a94aa-4bc5-4aa2-8c47-391315e568a3`$data,simplifyDataFrame = T,flatten = T)
data2021_273<-fromJSON(txt = data$`911ca4e5-9764-4db6-afa4-66d3e652e14f`$data,simplifyDataFrame = T,flatten = T)
data2021_274<-fromJSON(txt = data$`9583e593-6e73-450e-99b2-bd189f5a2905`$data,simplifyDataFrame = T,flatten = T)
data2021_275<-fromJSON(txt = data$`c6c7736c-38af-4c27-a818-45e0b4d67f0e`$data,simplifyDataFrame = T,flatten = T)

data2021_276<-fromJSON(txt = data$`06508e4c-e8fa-425f-856c-ab2431b35bc9`$data,simplifyDataFrame = T,flatten = T)
data2021_277<-fromJSON(txt = data$`0854a2a2-7fe3-4670-b5f6-3077d8a4960d`$data,simplifyDataFrame = T,flatten = T)
data2021_278<-fromJSON(txt = data$`1191984f-1cf2-424a-af32-8c55062704e2`$data,simplifyDataFrame = T,flatten = T)
data2021_279<-fromJSON(txt = data$`239f2b41-7c04-464b-a4af-0d934eabb4b5`$data,simplifyDataFrame = T,flatten = T)
data2021_280<-fromJSON(txt = data$`2eff90b0-a754-4f63-a685-adec81ffb1b7`$data,simplifyDataFrame = T,flatten = T)
data2021_281<-fromJSON(txt = data$`36807f4e-6a90-429d-a7a4-52c7138d258a`$data,simplifyDataFrame = T,flatten = T)
data2021_282<-fromJSON(txt = data$`51bf6c65-ba1a-40b8-9827-775cde0c2816`$data,simplifyDataFrame = T,flatten = T)
data2021_283<-fromJSON(txt = data$`c1b66631-8827-47aa-acb2-71dd302196f2`$data,simplifyDataFrame = T,flatten = T)

data2021_284<-fromJSON(txt = data$`c30a51a3-ffc2-45cb-8511-4206056d1e1b`$data,simplifyDataFrame = T,flatten = T)
data2021_285<-fromJSON(txt = data$`e64cc931-52b5-4f1e-85d5-e79c13b60f74`$data,simplifyDataFrame = T,flatten = T)
data2021_286<-fromJSON(txt = data$`ecabba10-ae8a-4e2d-b9d2-70a1d510212c`$data,simplifyMatrix = T,flatten = T)

data2021_287<-fromJSON(txt = data$`418d64c9-7ff9-43bc-a563-e96db86650d0`$data,simplifyMatrix = T,flatten = T)
data2021_288<-fromJSON(txt = data$`a6c5ce7d-9348-4578-8f2b-5820957f74e8`$data,simplifyMatrix = T,flatten = T)
data2021_289<-fromJSON(txt = data$`b564be4a-6870-4478-9f7c-460ce79318f0`$data,simplifyMatrix = T,flatten = T)

data2021_290<-fromJSON(txt = data$`5800318f-02fc-4297-97ba-699eccf5c504`$data,simplifyMatrix = T,flatten = T)
data2021_291<-fromJSON(txt = data$`5b727f09-7740-4117-a594-933a01f65ac0`$data,simplifyMatrix = T,flatten = T)
data2021_292<-fromJSON(txt = data$`6bfb0ef8-5501-4f66-bd4f-fd9be315ca5c`$data,simplifyMatrix = T,flatten = T)
data2021_293<-fromJSON(txt = data$`8f0058c9-6129-4272-8dfb-78546a6666fb`$data,simplifyMatrix = T,flatten = T)
data2021_294<-fromJSON(txt = data$`94cb97ef-edd1-481f-aa08-784c39d06302`$data,simplifyMatrix = T,flatten = T)
data2021_295<-fromJSON(txt = data$`9df6c3c8-6092-4e5a-9f8d-0ee35b3fc625`$data,simplifyMatrix = T,flatten = T)
data2021_296<-fromJSON(txt = data$`c18ac9e9-f663-49ec-a327-cc6f13daa764`$data,simplifyMatrix = T,flatten = T)
data2021_297<-fromJSON(txt = data$`c4831175-0878-40b6-9cfb-390fe64d97d4`$data,simplifyMatrix = T,flatten = T)
data2021_298<-fromJSON(txt = data$`e24208d3-97cf-47fb-9a10-2dda24e44614`$data,simplifyMatrix = T,flatten = T)

data2021_299<-fromJSON(txt = data$`128e2f4b-06ce-4cf2-a5e7-69b90f7dc072`$data,simplifyMatrix = T,flatten = T)
data2021_300<-fromJSON(txt = data$`182fba26-a9bd-495a-858f-b24ecb7d44da`$data,simplifyMatrix = T,flatten = T)
data2021_301<-fromJSON(txt = data$`4c6d8f90-7d68-4f6d-b8fb-487fcc72349a`$data,simplifyMatrix = T,flatten = T)
data2021_302<-fromJSON(txt = data$`7f57b7cc-41ac-40df-8e62-3c772541e8c7`$data,simplifyMatrix = T,flatten = T)
data2021_303<-fromJSON(txt = data$`9285331a-a0e4-46ab-a8c5-f19ee4f1d182`$data,simplifyMatrix = T,flatten = T)
data2021_304<-fromJSON(txt = data$`be37c50f-9568-4ea9-b46b-150a30c62225`$data,simplifyMatrix = T,flatten = T)
data2021_305<-fromJSON(txt = data$`c308361d-d0d1-4fb2-bc1e-acb99c8c1c25`$data,simplifyMatrix = T,flatten = T)
data2021_306<-fromJSON(txt = data$`e0962e86-f41f-468d-8a5c-bda6725767da`$data,simplifyMatrix = T,flatten = T)
data2021_307<-fromJSON(txt = data$`ed885058-5387-47d2-9684-1535c733daaf`$data,simplifyMatrix = T,flatten = T)
data2021_308<-fromJSON(txt = data$`f78c6841-6597-40cb-96e5-79565b823388`$data,simplifyMatrix = T,flatten = T)
data2021_309<-fromJSON(txt = data$`f7b8a427-da91-46b7-8eb3-670788561a41`$data,simplifyMatrix = T,flatten = T)
data2021_310<-fromJSON(txt = data$`fe966460-442f-49ee-a127-2e9219b0f48b`$data,simplifyMatrix = T,flatten = T)
data2021_311<-fromJSON(txt = data$`511062e7-25de-4ddc-ac93-a66852499050`$data,simplifyMatrix = T,flatten = T)
data2021_312<-fromJSON(txt = data$`3f1232f6-7964-4556-a40e-10726ce3ef78`$data,simplifyMatrix = T,flatten = T)

data2021_313<-fromJSON(txt = data$`cc33b753-1644-4850-a420-4fde6970b3f5`$data,simplifyMatrix = T,flatten = T)
data2021_314<-fromJSON(txt = data$`5b231752-50a2-4742-a12e-f0ddb6e3167f`$data,simplifyMatrix = T,flatten = T)



limitTest<-as.data.frame(fromJSON(txt = data$`6008ea54-8196-4893-9cdc-568fff7612e2`$data,simplifyDataFrame = T,flatten = T))


#********************************************************Circle-Size-Experiment-2***************************#

#data3<-cbind(data1,data2)



# install.packages("plyr")
library("plyr")

# collapse json levels
#data<-rbind.fill(data)

#********************************************************************************************************************************
#*******************Data will still have json levels that need to be unpacked if you collected survey responses******************
#*******************One way to do this will be demonstrated in data_analysis.R***************************************************
#********************************************************************************************************************************

# number of subjects
#length(unique(data$subject))

# save data to .csv file
#write.csv(data1, "./data/data1.csv", row.names = FALSE)
library(data.table)
library(dplyr)

Demographics <-head(data2021_313[c("Participant_Consent", 
                            "if-you-would-like-to-receive-a-general-summary-of-the-results-from-this-study-when-it-is-completed-please-provide-your-email-address-below:", 
                            "please-record-the-makemodel-and-(diagonal)-screen-size-of-the-device-you-are-using-to-complete-the-experiment-(e.g.-macbook-pro-13.3-in):", 
                            "how-are-you-controlling-the-cursor-on-your-device-(reminder:-please-only-complete-this-experiment-using-a-touchpad-or-trackpad-of-a-laptop-computer.-if-you-are-using-a-device-that-does-not-have-a-touchpad-or-trackpad-please-exit-the-experiment-now-and-contact-the-experimenter).-1", 
                            #"how-are-you-controlling-the-cursor-on-your-device-2", 
                            #"how-are-you-controlling-the-cursor-on-your-device-3", 
                            "what-is-your-age-(years)", 
                            "vision:", 
                            "what-is-the-sex-you-were-assigned-at-birth",
                            "throw-a-ball:", 
                            "brush-your-teeth:", 
                            "eat-soup-with-a-spoon:", 
                            "comb-your-hair:", 
                            "cut-bread-with-a-knife:", 
                            "swing-a-tennisbadminton-racquet-or-bat:", 
                            "hammer-a-nail:", 
                            "point-to-something-accurately:", 
                            "write-your-name:", 
                            "control-the-cursor-when-using-a-computer:", 
                            "do-you-play-any-eye-hand-coordination-sports", 
                            "if-yes-which-sports-do-you-play"
                            )], n = 1000)

Screen_Dim <- data2021_313[,2]


                                                         
#Screen_Dim <- head(data2021_286[c("meta.screen_width",	
                           #"meta.screen_height",	
                           #"meta.scroll_width",	
                           #"meta.scroll_height",	
                           #"meta.window_innerWidth",	
                           #"meta.window_innerHeight",
                           #"meta.devicePixelRatio"
                           #)], n = 1000)

Condition <- head(data2021_313[c("sender",
                          "duration",
                          "Horizontal_Pos",
                          "Vertical_Pos",
                          #"P_Size_L",
                          #"P_Size_R",
                          #"P_Size",
                          "Context_Size",
                          "Target_Size",
                          "Position",
                          "Context_L",
                          "Context_R",
                          "Target_Size_L",
                          "Target_Size_R",
                          "sender_id"
                          )], n = 1000)

xPos <-capture.output(data2021_313["xpos"])
yPos <-capture.output(data2021_313["ypos"])




write.csv(Demographics, "C:\\Users\\Ryan Langridge\\Desktop\\Online Participant Data\\data2021\\Accuracy\\313/Demo.csv", row.names = FALSE)
write.csv(Condition, "C:\\Users\\Ryan Langridge\\Desktop\\Online Participant Data\\data2021\\Accuracy\\313/Conditions.csv", row.names = FALSE)
write.csv(Screen_Dim, "C:\\Users\\Ryan Langridge\\Desktop\\Online Participant Data\\data2021\\Accuracy\\313/Screen_Dim.csv", row.names = FALSE)
write.csv(xPos, "C:\\Users\\Ryan Langridge\\Desktop\\Online Participant Data\\data2021\\Accuracy\\313/xPos.csv", row.names = FALSE)
write.csv(yPos, "C:\\Users\\Ryan Langridge\\Desktop\\Online Participant Data\\data2021\\Accuracy\\313/yPos.csv", row.names = FALSE)




#write.csv(P_data, "C:\\Users\\Ryan Langridge\\Desktop\\Online Participant Data\\P9/P_data.csv", row.names = FALSE)
#write.csv(timestamps, "C:\\Users\\Ryan Langridge\\Desktop\\Online Participant Data\\P9/timestamps.csv", row.names = FALSE)


#Trying to merge data.

library(writexl)
sheets <- list("xPos" = xPos, "yPos" = yPos) #assume sheet1 and sheet2 are data frames
write_xlsx(sheets, "C:\\Users\\Ryan Langridge\\Desktop\\Github\\Circle Size Experiment\\data\\P2/yPos.csv")

library(xlsx)

write.xlsx(xPos, file = "C:\\Users\\Ryan Langridge\\Desktop\\Github\\Circle Size Experiment\\data\\P2/mouse_pos.xlsx", sheetName="X_Pos", row.names=FALSE) #"C:\\Users\\Ryan Langridge\\Desktop\\Github\\Circle Size Experiment\\data\\P2/mouse_pos2.csv", row.names = FALSE)
write.xlsx(yPos, file = "C:\\Users\\Ryan Langridge\\Desktop\\Github\\Circle Size Experiment\\data\\P2/mouse_pos.xlsx", sheetName="Y_Pos", append=TRUE, row.names=FALSE)



print(head(data2021_251[1,'meta.userAgent']))
