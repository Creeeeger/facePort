.class public Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;
.super Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.source "UserOpenCommand.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;-><init>()V

    const/16 v0, 0xa1

    :try_start_0
    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->addATCommands()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected blacklist addATCommands()V
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "AT+ENGMODES=8,0,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=7,0,1,0,0|SLO"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=7,1,0,0,0|CRO(VZW,EUX,EUR,XME)"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=7,1,1,0,0|SLO|CRO(VZW,EUX,EUR,XME)"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=7,2,0,0,0|CRB(VZW,EUX,EUR,XME)"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=7,2,1,0,0|SLO|CRB(VZW,EUX,EUR,XME)"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=7,0,0,1,0|SBB"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=7,0,0,2,0|FBOAD"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=7,0,0,3,0|FBOA"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=7,0,0,4,0|FBOD"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=7,0,0,5,0|CSO"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=7,0,0,0,1|ABO"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=0,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=0,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=0,2"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=0,3"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=0,4"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=0,5"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=0,6"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=0,7"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=0,9"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=1,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=1,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=1,5"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=3,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=3,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=3,2"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=3,3"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=3,5"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=3,6"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=3,7"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=3,8"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=3,9"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=4,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=4,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=4,2"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=5,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=5,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=5,2"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=5,3"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=5,4"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DISPTEST=5,5"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IMEITEST=*|SLO|ABO"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IMEMTEST=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=1,2"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=1,6"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=3,2"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=4,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=4,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=1,7"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=1,8"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=2,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=3,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=3,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=3,3"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=3,4"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BTIDTEST=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+WIFIIDRW=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FUELGAIC=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SPKSTEST=3,3,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SPKSTEST=3,3,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SPKSTEST=3,3,2"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SPKSTEST=3,3,3"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+EMEMTEST=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HMACMISM=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IFPMICCN=0,0,5,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IFPMICCN=0,0,5,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,0,0,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,1,0,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,1,0,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,1,0,2"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,1,0,4"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,1,0,5"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,1,1,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,1,2,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,1,2,2"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,1,2,3"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,2,2,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,2,2,3"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,3,2,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,3,3,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,9,0,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,9,1,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=1,2,0,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+UARTSWIT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FCBTTEST=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BTLETEST=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FCEPTEST=0,0,0,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FCEPTEST=0,0,1,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOOPTEST=0,0,2"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOOPTEST=0,0,5"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOOPTEST=0,1,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOOPTEST=0,1,5"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FAILHIST=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RAPPLIST=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RAMSIZEC=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SECUREBT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+WPROTECT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+POWRESET=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+WIFITEST=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PAYMENTS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FIRMVERS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+EWRITECK=0,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+EWRITECK=0,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+EWRITECK=0,2"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+EWRITECK=0,3"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+EWRITECK=0,4"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+EWRITECK=0,5"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+EWRITECK=0,6"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+EWRITECK=1,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+EWRITECK=1,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+EWRITECK=1,2"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+EWRITECK=1,6"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+EWRITECK=1,9"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+EWRITECK=3,6"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SYSSCOPE=*|SLO"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FLCRFCAL=0,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FLCRFCAL=0,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FLCRFCAL=1,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FLCRFCAL=2,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FLCRFCAL=2,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FLCRFCAL=3,0"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FLCRFCAL=4,1"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FLCRFCAL=4,2"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BAROMETE=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+KSTRINGB=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IDCHIPTT=0,1,0"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IDCHIPTT=0,2,0"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IDCHIPTT=0,2,1"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IDCHIPTT=1,0,0"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+UENCRYPT=*"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+GPSSTEST=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+NFCMTEST=*"

    iget v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SENSORHB=*"

    iget v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ACSENSOR=*"

    iget v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GYROSCOP=*"

    iget v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GEOMAGSS=*"

    iget v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HRMOSENS=*"

    iget v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+UVSENSOR=*"

    iget v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DEBUGLVC=*"

    iget v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+WCOLORID=*"

    iget v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+GRIPSENS=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+TSPPTEST=0,6,0"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+TSPPTEST=0,6,5"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+TSPPTEST=3,2,3"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+TSPPTEST=3,6,0"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+TSPPTEST=3,7,*"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LEDLAMPT=0,0"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LEDLAMPT=0,1"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LEDLAMPT=0,2"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LEDLAMPT=0,3"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LEDLAMPT=0,4"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+COUNTRST=*"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+AIRPMODE=*"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HWPARAMD=1,0,2,0"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+USERDATA=*"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+COFPDATA=1,0,0,0"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+COFPDATA=2,0,0,*"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+OQCSBFTT=*"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ACTTDATA=*"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RGBPDISP=0,0,0"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+NEEDCMDT=*"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+UBCTTEST=*|FBOD"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+USBDEBUG=2|SLO"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+USBDEBUG=*"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SYSDUMP=*|CRB(USC,VZW)"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ACTIVATE=0,0,0|ABO"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,1,0,7"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,1,3,0"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,1,3,1"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,1,5,*"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,4,1,1"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,5,1,2"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=2,0,0"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GETDOTESTNV"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HEADINFO=1,0|ABO"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HEADINFO=1,1,0"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SETDOTESTNV"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SETTESTNV=*"

    iget v5, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v5, "AT+ACLTESTT=*"

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+AIRPLANEVALUE=*|CRO(ATT,AIO)"

    iget v6, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+ASDIVTES=*"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT"

    iget v7, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "ATE"

    iget v7, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v7, "ATE0"

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v8, "ATE1"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "ATI|CRO(ATT,AIO,SPR,USC,VZW)"

    iget v9, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "ATI1"

    iget v9, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "ATQ0E0V1"

    iget v9, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "ATZ"

    iget v9, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+BAKUPCHK=*"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATGETLEVEL?=*|SLO"

    iget v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BTVALUE=*|CRO(ATT,AIO)"

    iget v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CALRM=*|CRO(ATT,AIO)"

    iget v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CBCAST=*|CRO(ATT,AIO)"

    iget v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CBLKFTDF=*"

    iget v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CBLTH=*|CRO(ATT,AIO)"

    iget v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CCALD=*|CRO(ATT,AIO)"

    iget v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CCLGS=*|CRO(ATT,AIO)"

    iget v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CDCONT=*|CRO(ATT,AIO)"

    iget v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CDUR=*|CRO(ATT,AIO)"

    iget v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CDVOL=*|CRO(ATT,AIO)"

    iget v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CEMAIL=*|CRO(ATT,AIO)"

    iget v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v10, "AT+CFUN=*"

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+CGMI=*"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGMM=*|CRO(ATT,AIO,SPR,USC,VZW)"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGMR=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGSN=*|CRO(ATT,AIO,SPR,USC,VZW)"

    iget v13, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v13}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CIMI=*|CRO(ATT,AIO,SPR,USC,VZW)"

    iget v13, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v13}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CIMSG=*|CRO(ATT,AIO)"

    iget v13, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v13}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v13, "AT+CKPD=*"

    invoke-virtual {v0, v13, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CLOGIN=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMSG=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CNPAD=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CNUM=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPICTR=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPRMTEST=*"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CRST=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSHM=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSMCT=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSS=*"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSYNC=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CTACT=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CTASK=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CTBCPS=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CTMRV=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CTSA=*"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CVCMD=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CVRCD=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CWAP=*|CRO(ATT,AIO)"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DEVCONINFO=*|SLO"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DEVROOTK=*|SBB"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DTCPTEST=*"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DUMPCTRL=*"

    iget v14, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v14, "AT+EFSSYNCC=*"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FENRIRCN=*|SLO"

    iget v15, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FUS?"

    iget v15, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GETFULLHISTNV=*"

    iget v15, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GETTESTNV=*"

    iget v15, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GMM=*|SLO"

    iget v15, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GPSVALUE=*|CRO(ATT,AIO)"

    iget v15, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+GSN=*"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HDCPTEST=*"

    move-object/from16 v16, v8

    iget v8, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ICCCINFO=*|SLO"

    iget v8, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IMSVAL=*|CRO(ATT,AIO)"

    iget v8, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOGERASE=*"

    iget v8, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MITSRFTS=*"

    iget v8, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+NFCVALUE=*|CRO(ATT,AIO)"

    iget v8, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+NSRI=*|SLO|CRO(SKC,KTC)"

    iget v8, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RTCCTEST=*"

    iget v8, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v8, "AT+SCMMONIT=*"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SCODCHAN=*"

    move-object/from16 v17, v7

    iget v7, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SECUREOS=*"

    iget v7, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SETFULLTESTNV=*"

    iget v7, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SIZECHECK=*|SLO"

    iget v7, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SOCFIOTK=0,0,0,0|SBB"

    iget v7, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SOCFIOTK=1,0,0,0|SBB"

    iget v7, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SUDDLMOD=*"

    iget v7, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+USBMODEM=*|CRO(VZW)"

    iget v7, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+WIFIVALUE=*|CRO(ATT,AIO)"

    iget v7, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+COPS?"

    iget v7, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v7, "AT+COPS=*"

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v18, v15

    const-string v15, "AT+CGTFT=*"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v19, v7

    const-string v7, "AT+CCFC=*"

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v20, v13

    const-string v13, "AT+CCWA=*"

    invoke-virtual {v0, v13, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CDV=*"

    move-object/from16 v21, v15

    iget v15, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CEER=*"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CEMODE=*"

    move-object/from16 v22, v12

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGACT=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGATT=*"

    move-object/from16 v23, v11

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGCMOD=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGDATA=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGDCONT=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGDSCONT=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGEQMIN=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGEQOS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGEQREQ=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CHLD=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CHUP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CLCC=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CLCK=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMEC=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMEE=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMER=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMGD=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMGF=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMGS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMGW=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMOD=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMSS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CNMPSD=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPIN=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPMS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPWD=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CREG=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CRSM=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSCA=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSCS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSIM=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSMP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSMS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CUSD=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CVHU=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CVMOD=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VTS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+XDATACHANNEL=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "ATA"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "ATD"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "ATH"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "CHLD"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT#CGSEND=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCDGEN=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT^ATDVIDEO=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCMIP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCMIPEP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCMIPHA=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCMIPMASPI=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCMIPMHSS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCMIPMASS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCMIPMHSPI=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCMIPNAI=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCMIPPHA=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCMIPRT=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCMIPSHA=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCMIPT=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCMRUC=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$CRM=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCPDPCFGE?"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$QCPDPCFGE=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BAUDRATE=0,0,1,1"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BAUDRATE=0,0,1,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=9,0|SLO|ABO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=0,*|SLO|ABO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=1,*|SLO|ABO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=2,2,*|SLO|ABO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MGRTCASS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HEADINFO=1,3"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HEADINFO=1,4"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HEADINFO=1,5"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FCFMTEST=0,0,0,*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FCFMTEST=0,0,1,*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FCFMTEST=0,1,0,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FCFMTEST=1,0,0,*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SPKSTEST=3,3,4"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,1,0,3"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMETEST=0,9,3,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOOPTEST=3,0,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOOPTEST=3,0,1"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOOPTEST=3,0,2"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=1,3"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=1,4"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LIGHTEST=0,2"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LIGHTEST=0,3"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LIGHTEST=0,4"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LIGHTEST=1,3"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LIGHTEST=1,4"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RSTVERIF=0,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+TSPPTEST=3,4,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+TSPPTEST=3,5,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DEVICEPN=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ATSCTEST=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ETHERNET=1,0,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ETHERNET=1,1,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOCKUTIL=0,1,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOCKUTIL=1,1,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BGLUCOSE=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SKUCODEC=1,0,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SKUCODEC=2,0,*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VOLTECON=0,0,0,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VOLTECON=1,0,1,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IFPMICCN=0,0,3,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IFPMICCN=0,0,4,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IFPMICCN=0,0,6,0|CRO(DCM,KDI,RKT)"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IFPMICCN=0,0,7,*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HOPATHCK=1,0,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MIPITEST=0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MIPITEST=1"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CHIPIDTT=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+NEEDCMDT=0,0,0,*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RFEVTAIT=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RGBPDISP=0,0,0,*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BLOBSIGN=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PRXDRXCK=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ARPCHECK=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CESP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSDH=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSCB=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSAS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CRES=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMGL=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CNMA=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMGC=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMMS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CBST=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPAS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGQREQ=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CNMI=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMGR=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPOL=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GMR=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GMI=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSQ=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPBS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPBR=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPBW=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CLIP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CLIR=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CBKLT=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGSMS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$ARMEE=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$ARME=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "ATV1"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "ATX4"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PACSP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$CSQ=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$CREG=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT$CCLK=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT*CNTI=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RSRP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RSRQ=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RSCP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ECNO=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CEINFO=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+NCELL=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SCELL=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CCHC=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CCHO=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGLA=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CCLK=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CEREQ=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGCONTRDP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGEQOSRDP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGEREP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGPADDR=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGSCONTRDP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGTFTRDP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CIND=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+COPN=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPLS=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CRM=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSTF=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GCAP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CLAC=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CEREG=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+WS46=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGPIAF=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CESQ=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VZWAPNE=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VZWRSRP=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VZWRSRQ=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SWATD=1|ABO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SWATD=0|ABO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+NCAMTEST=1,9,0,*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+NCAMTEST=1,9,1,*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+TOUCH=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FPSENSOR=1,2,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PRECONFG=0,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PRECONFG=1,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PRECONFG=*|CRB(LGT,LUC,LUO,SKT,SKC,SKO,KTT,KTC,KTO,ANY,KOO)"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SERIALNO=*|SLO|ABO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+APCHIPTT=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SWVER=*|SLO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IMEINUM=*|SLO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FEEDBACK=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SKT=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LTPUT=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOCKCODE=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LVOFLOCK=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DETALOCK=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PRODCODE=2,*|CSO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PRODCODE=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GRDMTEST=0,1"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GRDMTEST=0,2"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+TSPPTEST=0,9,*|CSO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FAILDUMP=*|FBOD"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+NADCHECK=*|FBOD"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BANSELCT=*|SLO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LIFETIME=*|SLO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MAXPOWER=*|SLO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IMEITEST=0,*|SLO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IMEITEST=1,*|SLO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VERSNAME=*|SLO|ABO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+REACTIVE=1,0,0|SLO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+REACTIVE=2,0,*|SLO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+REACTIVE=2,1,*|SLO "

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+REACTIVE=2,2,*|SLO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GRDMTEST=0,3"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HAICTEST=0,*|CSO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HAICTEST=1,0|CSO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HAICTEST=1,1|CSO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RSTCOMPC=0,0,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ACTIVEID=1,0,0"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FRPUNLCK=1,0,*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FRPUNLCK=1,1,*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FRPUNLCK=3,0,0|SLO|ABO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BIASENSO=0,2,0|CSO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BIASENSO=1,2,0|CSO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MTKEDLBK=0,0|CRO(TFN)"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MTKEDLBK=1,0|CRO(TFN)"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DDPRO=*|SLO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VIBRTEST=1,0|CSO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VIBRTEST=0,10|CSO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VIBRTEST=0,11|CSO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VIBRTEST=1,2|CSO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VIBRTEST=1,3|CSO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VERSNAME=1,1,3"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BATTTEST=4,7|CRO(DCM,KDI,RKT)"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SIMDETEC=4,8|SLO"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SIMDETEC=6,0,*|CRO(ATT,AIO,XAU,VZW,CCT,CHA,DSH,USC,XAA)"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+SIMDETEC=*"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ABSTACHK=0,0|SLO|ABO"

    move-object/from16 v24, v12

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ABSTACHK=1,0|SLO|ABO"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FACTOLOG=0,7,1,2|ABO"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CONTROLN=1,1,0|ABO"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GETFULLTESTNV=*|ABO"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+URDEVICE=1,0,0,0|ABO"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPLDUCFG=1,0|ABO"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CONTROLN=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FACTOLOG=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+URDEVICE=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPLDUCFG=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SWDLMODE=0|ABO"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SWDLMODE=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+XOCALCHK=0,1"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+XOCALCHK=1,0"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+XOCALCHK=1,1"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+INITTEST=1,0,0|SLO"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SVCIFPGM=1,3|SLO|ABO"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SVCIFPGM=1,7|SLO|ABO"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SVCIFPGM=*|SLO"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ENGMODES=8,0,3"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VERSNAME=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CALIDATE=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FACTORST=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MSLSECUR=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+TEMPTEST=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SYSSLEEP=0,0"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SYSSLEEP=0,1"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SYSSLEEP=0,4"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOCKREAD=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MAXPOWER=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MODECHAN=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IMEICERT=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IMEISIGN=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+AKSEEDNO=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BANSELCT=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SIMLOCKU=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HWINDICK=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LIFETIME=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CHNSELCT=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MEIDAUTH=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FAILDUMP=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+READRSSI=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+NAMCHECK=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PRLVERIF=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RECONDIT=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ERITTEST=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SVCBANDB=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PARALLEL=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+OBDMTEST=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+AOTKEYWR=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOCKINFO=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RFBKOFFC=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SECNRSSI=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CALLCONN=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RFNVCHKS=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RFBYCODE=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PROVCASS=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPMGCASS=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SYSSLEEP=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VERSNAME=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MAXPOWER=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+TEMPTEST=*"

    iget v12, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CALIDATE=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BANSELCT=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SECNRSSI=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+READRSSI=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CALLCONN=*"

    iget v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+TESTMODE=*"

    iget v8, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+AKSEEDNO=*"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LIFETIME=*"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOCKREAD=*"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CHNSELCT=*"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+AOTKEYWR=*"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FACTORST=*"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FAILDUMP=*"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+NAMCHECK=*"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PRLVERIF=*"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ERITTEST=*"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SVCBANDB=*"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RECONDIT=*"

    iget v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MODECHAN=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FACTOLOG=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+OBDMTEST=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SIMLOCKU=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MIPITEST=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PARALLEL=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RFNVCHKS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HOPATHCK=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RFBKOFFC=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LDUSTCHK=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RFMIPITT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RFEVTAIT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PROVCASS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PRODCODE=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HWINDICK=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+NADCHECK=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+FEEDBACK=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+APCHIPTT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PRXDRXCK=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BAUDRATE=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IMEINUM=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MEIDAUTH=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CHIPIDTT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+NETMODEC=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MSLSECUR=1,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IMEITEST=0,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IMEITEST=1,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IMEISIGN=0,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+IMEISIGN=1,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DETALOCK=0,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DETALOCK=1,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOCKINFO=0,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LOCKINFO=1,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RFBYCODE=0,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RFBYCODE=1,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPLDUCFG=0,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPLDUCFG=1,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BLOBSIGN=0,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+BLOBSIGN=1,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SIMSWITC=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+LVOFLOCK=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SSUCONFG=1,*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ESIMBIND=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+PACSP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VZWAPNE=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VZWMRUC=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VZWMRUE=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RSRP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RSRQ=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+RSCP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+ECNO=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+HANDLEDRX=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+SKT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DEVFEAT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DSDORMANT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CACM=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAMM=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CAOC=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CBST=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v13, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CCLK=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CDIS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v24

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGANS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGATT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGAUTH=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGAUTO=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGCLASS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGCMOD=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGDATA=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGDCONT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGDSCONT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGEREP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGEQOS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGEQOSRDP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGEQNEG=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v23

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGMM=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v22

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGLA=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CCHC=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CCHO=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CUAD=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGPADDR=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGPIAF=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGQMIN=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGEQMIN=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGQREQ=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGEQREQ=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGREG=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CEREG=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGSN=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGSMS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v21

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGTFTRDP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CHLD=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CHSD=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CHSN=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CHST=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CHUP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CIMI=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v20

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CLAC=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CLAE=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CLCC=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CLCK=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CLIP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+COLR=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CCFCU=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CLIR=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CNAP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CLVL=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMEC=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMEE=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMER=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMGD=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMGF=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMGL=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMGR=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMGS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMGW=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSSN=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSTA=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CTFR=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMMS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMOD=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMSS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMUT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CMUX=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CNMA=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CNMI=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CNUM=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CNMPSD=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+COLP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+COPN=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v19

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPAS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPBF=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPBR=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPBS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPBW=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPLS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPIN=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPMS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPOL=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPWD=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPUC=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CRC=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CREG=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CRES=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CRLP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CR=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CRSM=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSAS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSCA=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSCB=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSDF=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSDH=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSIM=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSCS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSMP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSMS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSQ=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CSUS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CUSD=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CVMOD=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+WS46=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+DS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GCAP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GMI=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GMM=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+GMR=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v18

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VTS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+VTD=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGCONTRDP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CGSCONTRDP=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CTZR=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+CPSMS=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v17

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v16

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALSTART_EXT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALFINISH_EXT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALVHALL_EXT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALTXSTARTMOD_EXT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALTXEND_EXT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALPHAIDREAD_EXT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALTXDC_EXT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALRXSCAN_EXT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALTXPWR_EXT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALTXGAINPHA_EXT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALTXGAINCTR_EXT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALPHADETFREQ_EXT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALIQMC_EXT=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALDPD=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMCALAMGDPD=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v1, "AT+MMRXIQMC=*"

    iget v2, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    return-void
.end method
