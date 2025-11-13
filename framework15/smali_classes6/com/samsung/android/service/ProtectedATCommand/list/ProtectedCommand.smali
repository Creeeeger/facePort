.class public Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;
.super Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.source "ProtectedCommand.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;-><init>()V

    const/16 v0, 0xa2

    :try_start_0
    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->addATCommands()V
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
    .locals 11

    const-string v0, "AT+ENGMODES=8,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ENGMODES=8,0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AKSEEDNO=0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AKSEEDNO=1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AOTKEYWR=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AOTKEYWR=2,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BTIDTEST=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPRMTEST=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=1,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,3,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,4,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,5,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,6,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DTCPTEST=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETHERNET=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETHERNET=2,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,3,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,4,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,5,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEICERT=1,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v1, "AT+IMEICERT=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=1,3"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,1,*"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,2,*"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,3,*"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,4,*"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,5,*"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v2, "AT+IMEITEST=2,*"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v3, "AT+IMEITEST=3,*"

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v4, "AT+IMEITEST=4,*"

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEITEST=5,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKCODE=0,0"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=1,0,0"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=1,2,0"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=2,0,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=2,1,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=2,2,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=0,0,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=0,1,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=1,0,0"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=2,0,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v5, "AT+MSLSECUR=2,*"

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SECUREOS=2,0,*"

    iget v6, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SERIALNO=2,*"

    iget v6, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SIMLOCKU=0,0,0"

    iget v6, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WIFIIDRW=2,*"

    iget v6, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DETALOCK=1,0"

    iget v6, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v6, "AT+DETALOCK=2,*"

    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v7, "AT+LVOFLOCK=1,*"

    invoke-virtual {p0, v7, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAUNCH_PKG=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GET_COUNT_IMAGE=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GET_COUNT_VIDEO=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEMERASE=0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SDSCRIPT=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCTEST=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRMTEST=0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PAYMT=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PAYSTART=1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSTTON"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSTOFF"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCTON"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCOFF"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BARCTEST=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AEAS=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WCRTTEST=0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WCRTTEST=1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WCRTTEST=2"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WCRTTEST=3"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RDSMSG"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ASKPEDOCOUNT=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ASK_YUDO_RUNCOUNT=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ASK_AK_DONG_RUNCOUNT=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCREENTURNON=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+OBJECTOUCH=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+OBJECTDOUBLETOUCH=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TOUCHXY=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MAKEDUMPFILE=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETENGLISH=1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEBUGLVC=1,2"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FPSENSOR=1,3,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=0,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=0,1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=1,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=0,6"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=0,7"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFNVCHKS=1,0,1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+KEY=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+KEYHOLD=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,0,1,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,0,1,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,0,2,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,1,0,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,1,0,1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,1,0,2"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,1,1,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,1,1,1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,1,1,2"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,0,0,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,0,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,1,1,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,1,0,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=2,0,1,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=2,0,0,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,9,2,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=6,0,0,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,3,9,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,3,2,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,2,0,1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,2,0,2"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=0,3,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=0,5,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=0,6,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=0,6,0,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=1,0,0,3"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WHO=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATQ0V1E0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATE0Q0V1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSLSECUR=1,1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v8, "AT+MSLSECUR=3,*"

    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,7,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DTCPTEST=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,6,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,7,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPRMTEST=0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FPSENSOR=1,4,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VIBRTEST=0,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=3,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,6,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,7,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,8,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v9, "AT+LOOPTEST=0,9,*"

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v9, "AT+LOOPTEST=3,3,*"

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,3,4"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,3,5"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,3,6"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,3,9"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,3,8"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FUNCTEST=0,1"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RGBPDISP=0,1,0,*"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FIRMVERS=3,2,7"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FIRMVERS=3,3,7"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=1,2"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HEADINFO=1,2"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FUNCTEST=0,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VIBRTEST=0,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VIBRTEST=0,1"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,0,9"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,1,1"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,1,2"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,0,8"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,8"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,9"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=1,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=1,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,12"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BARCODEE=0,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BARCODEE=0,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CONNTEST=3,0,2,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ARPCHECK=1,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,1,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,0,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,5,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,2,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ACTIVEID=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEBUGLVC=1,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEBUGLVC=0,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEBUGLVC=0,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCMTEST=2,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCMTEST=1,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCMTEST=4,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCMTEST=5,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCMTEST=1,9"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCMTEST=1,A"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ALERTDIS=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ALERTDIS=0,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VERSNAME=1,1,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VERSNAME=1,3,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LDUCCSUM=1,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PDPBACKU=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PDPBACKU=0,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PDPBACKU=1,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ISOSECHW=*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,0,6,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWIZSKIP=0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWIZSKIP=0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWIZSKIP=0,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWIZSKIP=0,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWIZSKIP=0,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWIZSKIP=1,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWIZSKIP=1,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TESTAPKU=1,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,3,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFNVCHKS=0,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,0,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LDUCCSUM=1,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v9, "AT+UWBDTEST=0,0,8,*"

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=1,1"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=4,5"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=7,*"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=4,6"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=10,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=10,2"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=10,3"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=2,7"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFNVCHKS=1,0,2"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEBUGLVC=0,7"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEBUGLVC=0,8"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSSCHECK=0,0,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSSCHECK=1,0,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACMTEST=0,3,2,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACMTEST=0,2,2,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,2,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,3,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,5,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,6,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,1,3,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,4,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,4,0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COFPDATA=2,0,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COFPDATA=1,0,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COFPDATA=1,0,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COFPDATA=2,0,2,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COFPDATA=1,0,3,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SVCAINIT=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SVCAINIT=1,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SELFTEST=4,0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SELFTEST=3,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SELFTEST=2,0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SELFTEST=2,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SELFTEST=3,0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BOOTMODE=0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BOOTMODE=1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GEOMAGSS=3,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EGMC=1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EFUN=0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ESUO=4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+QUESTCHK=1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PMICTEST=0,1,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=1,9"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=2,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,9"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,10"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,11"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,12"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,13"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=2,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=2,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VIBRTEST=4,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VIBRTEST=0,8"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VIBRTEST=1,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RSTCOUNT=1,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HAICTEST=4,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HAICTEST=5,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=1,0,0,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,0,0,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,0,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,1,0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,1,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,2,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,2,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,2,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,2,3,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,1,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,1,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTEICODE=1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IRTEMPSC=0,1,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=1,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=6,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=6,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=1,A"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,1,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,0,5,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,2,2,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,4,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_OIS"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_PARAMETER_READ"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_READ"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_READ_1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_READ_2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,2,0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,0,8,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,1,4,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWPARAMD=0,0,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWPARAMD=1,3,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWPARAMD=1,3,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWPARAMD=1,3,0,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWPARAMD=1,3,0,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWPARAMD=0,0,2,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LANGUSET=0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=1,3,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BTIDTEST=3,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BTIDTEST=1,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NETMODEC=1,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NETMODEC=1,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WIFIDEBG=0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WIFIDEBG=0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WIFIDEBG=1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SQTPACHK=0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACTOLOG=0,6,1,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FAILHIST=2,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DVFSCTRL=0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DVFSCTRL=0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IFPMICCN=0,0,6,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,8,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,9,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AUTHEKEY=0,0,0 "

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ESIMBIND=1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ESIMBIND=1,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ESIMBIND=1,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEMTEST=1,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WIFITEST=0,9,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FRPUNLCK=3,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,0,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,0,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,0,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,0,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,0,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,0,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,5,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,5,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,5,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,5,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,5,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,5,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,5,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSLSECUR=0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSLSECUR=1,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSLSECUR=7,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AOTKEYWR=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFBYCODE=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPLDUCFG=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BLOBSIGN=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPMGCASS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v7, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SIMSWITC=0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SSUCONFG=0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SSUCONFG=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TFSTATUS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ESIMBIND=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFCALSTR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RXRSSI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ERXCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AFCSTR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AFCCHG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AFCPDM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TXCODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TXSACODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TXSAALLCODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETXSAPAMGAINCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TXLOAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TXCORRECT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TXALLCORRECT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TXALLARFCN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFCALTEMP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFCALEND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TESTSTR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TESTRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TESTRSSI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TESTTX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TXSWEEP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TESTPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFCALREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFCALWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFCALDONE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TESTSCANSTR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TESTSCANREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TESTSYNC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TESTBER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GEARLYDET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TESTRESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TESTEND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ESPIWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ESPIREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ERXSEL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ERXBANDSEL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETXBANDSEL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TXPWRGAP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETXPAMGAINMOD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETXPAMEXTGAINMOD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETXPAMGAINCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETXINTPDCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EANTSWSEL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ELMTRUNGSM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETESTLOG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EASCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GFBRPROC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ANTSWSEL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFCALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFPRECALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFMAINCALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFINTCALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LSYNCSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LSYNCRSLTREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LMODETEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LMODENORMAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTONETEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFBANDSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTARGETRESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LREGSETMTM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LREGSETNORMAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTARGETMODERD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRX1RSRPOFFRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRX2RSRPOFFRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LFREQRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LFACTORYRESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFICTYPESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTGTMDLREVNOSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LLOADEXTCALDATA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LLOADPRECALDATA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFBANDBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LUSEDRFBANDBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LUSEDDUALTXRFBANDBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFICTYPEBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFMODELBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LFABP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXRSRPOVALBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXRSRPFREQOVALBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTEMPGPADCBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXRSRPMIXEROFFSETBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXRSRPMIXEROFFSETRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXDCOCVALBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXIQIMBCALBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXDCOFFRFCALBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXDCOCMODEMCALBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXIQIMBBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCALDONEBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCALDATEBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCALPWRBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXNOMPWRBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTGTMDLREVNOBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LNUMTXCOMPPTBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCOMPFREQBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCOMPPWRLVLBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCOMPPWRBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCOMPGPADCBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPATHBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LHWREVBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPWRTEMPCOMPBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPWRFCCCOMPBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCALPOINTCOMPBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXVCOCALBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXVCOCALBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCALIIP2BP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXIIP2BP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXIIP2RES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXDCOFFSETIIP2CALREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFBANDRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LUSEDRFBANDRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LUSEDDUALTXRFBANDRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFICTYPERES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFMODELRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LFARES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXRSRPOVALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXRSRPFREQOVALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTEMPGPADCRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXDCOCVALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXIQIMBCALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXDCOFFRFCALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXDCOCMODEMCALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXIQIMBRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCALDONERES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCALDATERES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCALPWRRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXNOMPWRRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTGTMDLREVNORES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LNUMTXCOMPPTRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCOMPFREQRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCOMPPWRLVLRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCOMPPWRRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCOMPGPADCRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPATHRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LHWREVRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPWRTEMPCOMPRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPWRFCCCOMPRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCALPOINTCOMPRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXVCOCALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXVCOCALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LALLCALVALRESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPWRLVLSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXFREQSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXFREQSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LFERMEASURE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXDCOFFCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXIQIMBCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXDCOCRF=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXDCOCMODEM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXIQIMBCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPWRCALPTSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LSDMEASUREDPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LSDNOMINALPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTEMPGPADCRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LBUILDGAINTABLE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXRSRPOFFSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXRSRPREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXCINRREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXRSRPFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRX2RSRPOFFSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXBWSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXBWSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXEARFCNSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXEARFCNSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXCALFREQSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCALFREQSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXDCOCRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXIQIMBCALRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXDCOCRFRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXDCOCMODEMRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXIQIMBCALRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPWRVALIDSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LPUCCHFORMATSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LPUCCHCQISZSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LPUCCHANVALSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LPUSCHRBSZSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LPUSCHRBOFFSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LPUSCHMCSIDXSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LPRACHCONIDXSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LPRACHRBOFFSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LSRSRBSZSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LSRSRBOFFSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LSRSPDSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCHNCONSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCHNSDREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSENDREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSENDREQSLO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXMCSENDREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCALSTSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCALSTRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFMODELSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCALDATESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCALDATERD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTEMPCOMPSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCHNCOMPSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXDCOCREP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCALPWRRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXIQIMBCALIDXSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXIQIMBCALVALSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXVCOCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXVCOCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LLRXVCOCALRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LLTXVCOCALRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LNUMTXCOMPPTSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCOMPFREQSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCOMPPWRLVLSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCOMPPWRSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LGETCURRGPADC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPAHITOMIDTHSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPAMIDTOHITHSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LHWREVSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LHWREVREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCHNLCOMPPTSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPAMIDTOLOWTHSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPALOWTOMIDTHSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTEPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAPTVOLSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPABIASSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXVOLBIASREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPOWERREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXCCSASETUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXRSRPOFFTXGAINSETUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXMSRPWRSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXRSRPOFFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFBANDSWITCH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFCALFINISH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRFCALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LFCCMODESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAPOWERRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAPOWERBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAPOWEREXT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAPOWERRESEXT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAPOWERRESEXT2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAPOWERBPEXT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LINTERNALCALBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LINTERNALCALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXAPTBIASNVWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXAPTVOLNVWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXAPTBIASNVREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXAPTVOLNVREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXGAINCALSA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXGAINCALSARES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXRFICGAINCALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXRFICGAINCALBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFAPTTUNESTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFAPTTUNEFINISH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFFINALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFFINALFINISH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXIQCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXETPWRCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXETPWRCALSA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXETPWRCALINT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXETPWRCALINTALL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LINSTARTSAPTPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LINSTARTSAPTTXFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXETCLDELAY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXETCLDELAYV2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXETCLDELAYIPC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LETCLDPDCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFPWRCTRL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXPATHPWRCTRL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPATHPWRCTRL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LPAPWRCTRL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LMTMDBGMODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRX1RX2AGCIDXRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXFREQCOMPCTRLSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXTEMPCOMPCTRLSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXFREQCOMPCTRLSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXTEMPCOMPCTRLSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPWRFCCCOMPCTRLSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LANTCFGSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRSSISCAN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPDCOMPCTRLSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPDGPADCRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPDCOMPBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPDCOMPRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAPDCOMP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LFBRDELAYMUL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LFBRDELAYBAND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LFBRPROC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LDCTCTRL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LINSTRTYPESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LDPDMEMWRITEMODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LDPDLUTWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXGAIN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LSPIWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LSPIREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXPAVCONSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAITLUT0NVWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAITLUT1NVWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAITLUT0NVRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAITLUT1NVRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAITXGNDANTSWTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAITTMNSWEEPSA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAITINITCAPTURE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAITFWDCAPTURE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAITREVCAPTURE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAITCALCAPTURE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAITMIPIWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCACONFIG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCAACT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCADEACT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCARELEASE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXRFICPDCOMPBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXRFICPDCOMPRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MIPIWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MIPIREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFTSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFTFINISH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LSYNC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LSYNCINNOSIGNAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LPLLLOCKCHK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFICPATHCHK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LEXTLNACHK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXIQPATHCHK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXMODESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFPATHSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAFCPDMCALREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AFCTONECALREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAFCPDMCALBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAFCPDMCALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAETDELAY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAETDELAYBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAETDELAYRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LFBRDELAYCALBANDBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LFBRDELAYCALBANDRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LETCMD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HETCMD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CETCMD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETNVCMD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LETMTMCALDATABP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LETMTMCALDATARES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HETMTMCALDATABP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HETMTMCALDATARES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CETMTMCALDATABP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CETMTMCALDATARES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXAPTTUNESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXASTUNESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFCACONFIG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRF4RXCONFIG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFPOWERONOFF=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXONECAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXTONECAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXRSSIMEAS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXMIXERCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXMIXERTONECAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXONECALBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXONECALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXONECALOFFSETDISPLAY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXFREQTONECAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXGAINCALRSRPMEAS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXGAINCALBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXGAINCALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXGAINCALVERBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXGAINCALVERRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXASFREQCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXASFREQCALMODERES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRXASFREQRSRPOFFSETRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFFEVERIF=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCALIIP2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAGETFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXFBRXCOMPRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXFBRXCOMPBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LGETFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAGAINCALFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAGAINCALFBRXV2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAFREQCALFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAINTERNALAPT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXSAFREQCALFBRXRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTONECAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXASFBRXCOMPRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXASFREQCALFBRXRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LLMTINPUTDATA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LLMTRUNPRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LLMTRUNDRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRSRPMEAS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRSRPTONEMEAS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LPRECALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LMAINCALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LPOSTCALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDLCELLSYNC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETRXAGC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETRXBYPAGC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETRXAGC1=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HBUILDAGCTAB=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXAGCBUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRXFREQBUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRXFREQ1BUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXSTARTFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HBUILDTXFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HFBRDELAYMUL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSPARFCALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSPARFCALEND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HBUILDTXDCCALFINAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HBUILDTXDCCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HCALIIP2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETDLPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETPDMVALUE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETTXPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETRXFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETTXFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETTXMULTICHFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWRITETXPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETBANDPAMODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXDCCALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HVCOTXCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HVCORXCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDRXCALON=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRXPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HPDMVALSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HBUILDMULTICH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETCALOFFSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HLOADRXDEFAULTCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXAPTBUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETTXGAININDEX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETAPTTXINDEX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HMSRDAPTTXPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HREADPDGPADC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETPDPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HPDRETPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HPDSASTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRETPDSATABLE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRETPDTABLE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXAPTSASETUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HBUILDRFIC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HBUILDFREQTX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDINSETRFIC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDINSETPD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDINSETFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINSTARTRFIC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINBUILDRFIC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINREADYPDPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINSETPDPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINSTARTPDPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINBUILDPDPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINSTARTAPTPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINSTARTPDFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINSTARTTXFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINSTARTETCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINSTARTETCALV2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINSTARTSAPTPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINSTARTSAPTTXFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINSTARTFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINSTARTFBRXV2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HINBUILDFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETTONE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETPDMONLY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HMSRDTXPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXPWRMSRDFREQCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXMULTICHPWRMSRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDLSYNC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETRXRSSI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETSENSE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXPERSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETMAXPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETMINPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXRETPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXFREQSETPDM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXMULTICHPDM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HPDSETPDM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HPDBUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HUMTSCALREGREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HUMTSCALREGWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXTRANSSWITCH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXGSSASETUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXFSSASETUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXMULTICHSASETUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSMRTTXPOW=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSMRTTXFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXPDSASETUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSMRTPDCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRETPDVAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSPATMSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSPATMEND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HLMTRUNPRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HLMTRUNDRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HLMTRUN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HCHANGEMODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSENDSPI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWRITESPI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HREADSPI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HREADPDMSPI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HENDGAINCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGAINTABINDEX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXSPISASETUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXRFICSASETUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETTHERMISTORVAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HLOADTHRTEMP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTEMPCALFINISHED=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSCANRSSI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETRSSISCANRESULT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HPDTXPWRMSRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRXAGCGET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRXAGCGET1=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRXAGCFREQCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRXAGCFREQCAL1=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRXAGCFREQCAL4RX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXSABUILDAPTTABLE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXSABUILDRFICTABLE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXSABUILDGAINTABLE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRXRSSIGET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGET4RXRSSI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETRXRSSIPRXONLY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETRXRSSIDRXONLY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETRXRSSIACTIVEONLY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHECKMARC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXASTUNESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HCALAS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSETTX2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HNSSTOP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ENSSTOP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LNSSTOP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HILPC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDELULCHAN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETRXRSCP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSPITEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSPITESTEND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HMSRRXRSSI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXETFREQSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXETFREQSTARTV2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXETFREQSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXETFREQPWRRET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HBUILDTXETFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HBUILDTXETFREQV2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXETSASETUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXETSASETUPV2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETTEMPGPADC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXDSPSTOP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSPA_CAL_HSENDMIPI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSPA_CAL_HREADMIPI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HSPA_CAL_HSET_SMVCC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXAPTTUNE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HREADMIPI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWRITEMIPI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HREADAPTVALUE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWRITEAPTVALUE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TDSCDMARFCALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TDSCDMARSSISCAN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TDSCDMARFCALEND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXDCIQCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TDLCELLSYNC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TRXPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TGETRXAGC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TGETRXDIVAGC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TBUILDAGCTAB=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TBUILDDIVAGCTAB=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TRXUARFCNSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TGETSENSE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TGETRXAGCMSR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TGETRXDIVAGCMSR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TRXFREQBUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TRXDIVFREQBUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TCHANGEMODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TGAINTABINDEX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TENDGAINCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TPGCTABINDEX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TMSRDTXPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXPWRBUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXFREQPGCIDX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXFREQUARFCN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXPWRMSRDFREQCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TBUILDTXFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TDEBUGDUMP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TFBRPROC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TAPTTABINDEX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TAPTMSRDTXPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TAPTTXPWRBUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TLNAMODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TPAMODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TASCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TDSCDMACALREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TDSCDMACALWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TPDSETPGCINDEX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TPDMSRDTXPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TPDBUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TPAVCCSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TDSCDMAFINALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TDLFINALCELLSYNC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TGETRXRSSI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TGETRXRSSI_RAW=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TASFINALTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TGETRXRSCP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXPERSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSETTXPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSETTXCLPC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TDELULCHAN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TDSCDMAFINALEND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSENDSPI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TALLSPIREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TREADSPI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSACALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TCALMODESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXGAINSA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXFREQSA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXPREPDSA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXPDSA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXAPTGAINSA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXGAINSABUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXFREQSABUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXPDSABUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TTXAPTGAINSABUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TLMTRUNPRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRF2CALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRF2CALEND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDLCELLSYNC2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRXPOWER2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETRXAGC2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HBUILDAGCTAB2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRXFREQSETUARFCN2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGETRXAGCMSR2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRXFREQBUILD2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXSTART2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HBUILDTXDCCAL2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HGAINTABINDEX2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HENDGAINCAL2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HPDSETPDM2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HPDMSRDTXPWR2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HPDBUILD2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HPDMVALSET2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HMSRDTXPOWER2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXAGCBUILD2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXFREQSETPDM2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXFREQSETUARFCN2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXPWRMSRDFREQCAL2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HBUILDTXFREQ2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RSSISCAN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CDMARFCALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CDLCELLSYNC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CRXPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CRXCALSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGETRXAGC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CBUILDAGC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CRXAGCFREQCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CRXAGCFREQCALDRXONLY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CRXFREQBUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTXSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CDMARFCALEND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CBUILDTXDCCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTXDCIIP2CAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSETBANDPAMODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSETTXGAININDEX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMSRDTXPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTXAGCBUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTXAPTBUILD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSETAPTTXINDEX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMSRDAPTTXPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPDRETPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSETTXFREQPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSETPDPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSETCALOFFSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTXPWRMSRDFREQCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSETTXFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CBUILDTXFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CREADSPI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTXASTUNESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CCALAS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSETTX2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSETTONE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSETFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGETFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTXETFREQSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTXETFREQSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTXETFREQPWRRET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CBUILDTXETFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CINSTARTETCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CBUILDRFIC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CBUILDFREQTX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTXAPTTUNE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTXPWRCOMP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CREADAPTVALUE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CWRITEAPTVALUE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CINSTARTRFIC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CINBUILDRFIC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CINREADYPDPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CINSETPDPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CINBUILDPDPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CINSTARTPDFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSMRTTXFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CINSTARTAPTPWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CINSTARTTXFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CINSTARTFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CINSTARTFBRXV2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CINBUILDFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CDMACALREGREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CDMACALREGWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CDMATMSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CDMATMEND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CDLSYNC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CRXMEASURE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CRXLOSSMEASURE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTXPERSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSETPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSETRXPATH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CFBRPROC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRFFINALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRFFINALFINISH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NMODETEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NMODENORMAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRFSYNC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRSRPREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NSINRREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NAGCIDXRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFERMEASURE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXMODESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXSENDREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NSPIWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NSPIREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NMIPIWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NMIPIREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXPOWERTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXAPTTUNESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRPOWERT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRFEEDBK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXAPTBIASNVWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXAPTVOLNVWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXAPTBIASNVREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXAPTVOLNVREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRFCALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NPRECALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NMAINCALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NPOSTCALSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXONECAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXMIXERCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXRSRPMIXEROFFSETBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXRSRPMIXEROFFSETRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXTONECAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXONECALBP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXONECALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXONECALOFFSETDISPLAY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NREGSETNORMAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCALSTSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRFCALFINISH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXSAGAINCALFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXSAFREQCALFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXSARBCALFBRX=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXSAINTERNALAPT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXSAINTERNALMCHAPT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXSAFREQCALFBRXRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXSARBCALFBRXRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXFBRXCOMPRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NNUMTXCOMPPTRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXCOMPPWRLVLRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXCOMPFREQRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTEMPGPADCRD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCALDATESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCALDATERD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCALIIP2=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCALTXDC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXPWRLVLSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXSRSSWPATHSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRFICPATHCHK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRFICREGDUMP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NEXTLNACHK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXIQPATHCHK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXFREQCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXFREQTONECAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXFREQCALMODERES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXFREQRSRPOFFSETRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXFREQGAINCALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NGETTXDCVAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXASTUNESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXASFREQCALMODERES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRXASFREQRSRPOFFSETRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXASFREQCALFBRXRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXASFBRXCOMPRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NETCMD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXETCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXSAETCALRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXETCLDELAY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXSAPTCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXETSAPTCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NETMTMCALDATABP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NETMTMCALDATARES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NPLLLOCKCHK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NAPTVOLSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXPABIASSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXVOLBIASREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NTXPARANGEMAPSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRSRPTONEMEAS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRSRPMEAS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NLMTDATA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NLMTRUN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MMWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MMREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MMCALTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MMTXSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MMTXEND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MMBEAMSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MMTXGAINSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NBEAMSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NUSERBEAMSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MMTEMPREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MMPDREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCALRXBW=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCALINTERNALRSSI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MMCFRSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCALINTERNALTXPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCALINTERNALRXGAIN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCALINTERNALTXGAIN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MMTEMPCOMPENSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MMBEAMNVSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MMBEAMNVGET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MMOTPCALREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFCALBACKUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFCALRESTORE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NRFACTREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LRFACTREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTXETSAPTCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HTXETSAPTCAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AUDIOREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AUDIOWRITE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTMTEXT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTMNEGO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTMCFG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CEMODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MPLMNSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSRVREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSESSIONREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSSNLISTREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSIGREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MTIMEREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MPRIOSET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMOAR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMOLRE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMOLR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMTLRANS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETPHYCTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETCLCKGATING=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GETNVITEM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETNVITEM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPON=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPOF=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DIALUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HANGUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ALERTING=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CRM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SENDSHORTMESSAGESERVICE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PPPTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETURTGDELAY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETDORLCTRL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CL1TEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DL1SLEEPTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DL1TEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GETSTATE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GETCHANNEL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PRFSRVOPT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GETMEID=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PSTDATA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPRESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+OTAMASK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ENABLEEVDOSYSEVENT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EVDOSIGNALINGMASK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DSSTCONFIG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DSSTTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSGS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MODESELECT?"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSMSR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NWSTATEIND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GETGPIO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETGPIO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETCPUFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETMIFFREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GETPMIC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETPMIC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SMSUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AUTOCONFIG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTPUT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CLKMON=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FCRASHDMP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACTORYSTART=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACTORYSTOP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GPIODVS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GPIOVERI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    return-void
.end method
