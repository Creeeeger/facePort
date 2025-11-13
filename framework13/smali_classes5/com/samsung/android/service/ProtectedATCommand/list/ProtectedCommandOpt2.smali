.class public Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;
.super Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.source "ProtectedCommandOpt2.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;-><init>()V

    .line 27
    const/16 v0, 0xa4

    :try_start_0
    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->addATCommands()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected blacklist addATCommands()V
    .locals 2

    .line 36
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+ENGMODES=8,0,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 37
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+AKSEEDNO=0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 38
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+AKSEEDNO=1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 39
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+AOTKEYWR=2,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 40
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+AOTKEYWR=2,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 41
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+BTIDTEST=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 42
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+CPRMTEST=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 43
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DEVROOTK=1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 44
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DEVROOTK=1,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 45
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DEVROOTK=2,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 46
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DEVROOTK=2,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 47
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DEVROOTK=2,2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 48
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DEVROOTK=2,3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 49
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DEVROOTK=2,4,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 50
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DEVROOTK=2,5,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 51
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DEVROOTK=2,6,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 52
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DTCPTEST=2,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 53
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+ETHERNET=2,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 54
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+ETHERNET=2,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 55
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+HDCPTEST=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 56
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+HDCPTEST=3,3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 57
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+HDCPTEST=3,4,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 58
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+HDCPTEST=3,5,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 59
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+IMEICERT=1,3"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 60
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+IMEICERT=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 61
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+IMEISIGN=1,3"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 62
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+IMEISIGN=2,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 63
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+IMEISIGN=2,2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 64
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+IMEISIGN=2,3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 65
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+IMEISIGN=2,4,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 66
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+IMEISIGN=2,5,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 67
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+IMEITEST=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 68
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+IMEITEST=3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 69
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+IMEITEST=4,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 70
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+IMEITEST=5,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 71
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOCKCODE=0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 72
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOCKINFO=1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 73
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOCKINFO=1,2,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 74
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOCKINFO=2,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 75
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOCKINFO=2,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 76
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOCKINFO=2,2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 77
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+MEIDAUTH=0,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 78
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+MEIDAUTH=0,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 79
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+MEIDAUTH=1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 80
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+MEIDAUTH=2,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 81
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+MSLSECUR=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 82
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+SECUREOS=2,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 83
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+SERIALNO=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 84
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+SIMLOCKU=0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 85
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+WIFIIDRW=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 86
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DETALOCK=1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 87
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DETALOCK=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 88
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LVOFLOCK=1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 89
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LAUNCH_PKG=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 90
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+GET_COUNT_IMAGE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 91
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+GET_COUNT_VIDEO=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 92
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+MEMERASE=0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 93
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+SDSCRIPT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 94
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NFCTEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 95
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+HRMTEST=0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 96
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+PAYMT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 97
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+PAYSTART=1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 98
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+MSTTON"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 99
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+MSTOFF"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 100
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NFCTON"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 101
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NFCOFF"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 102
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+BARCTEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 103
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+AEAS=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 104
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+WCRTTEST=0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 105
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+WCRTTEST=1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 106
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+WCRTTEST=2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 107
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+WCRTTEST=3"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 108
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+RDSMSG"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 109
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+ASKPEDOCOUNT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 110
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+ASK_YUDO_RUNCOUNT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 111
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+ASK_AK_DONG_RUNCOUNT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 112
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+SCREENTURNON=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 113
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+OBJECTOUCH=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 114
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+OBJECTDOUBLETOUCH=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 115
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+TOUCHXY=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 116
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+MAKEDUMPFILE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 117
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+SETENGLISH=1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 118
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DEBUGLVC=1,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 119
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+FPSENSOR=1,3,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 120
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+PROXIMIT=0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 121
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+PROXIMIT=0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 122
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+PROXIMIT=1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 123
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+PROXIMIT=0,6"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 124
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+PROXIMIT=0,7"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 125
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+RFNVCHKS=1,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 126
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+KEY=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 127
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+KEYHOLD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 128
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,0,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 129
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,0,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 130
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,0,2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 131
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 132
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,1,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 133
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,1,0,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 134
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,1,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 135
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,1,1,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 136
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,1,1,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 137
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=1,0,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 138
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 139
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,1,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 140
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,1,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 141
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=2,0,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 142
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=2,0,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 143
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=1,9,2,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 144
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=6,0,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 145
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=1,3,9,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 146
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=1,3,2,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 147
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=1,2,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 148
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+NCAMTEST=1,2,0,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 149
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+SCAMPARA=0,3,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 150
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+SCAMPARA=0,5,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 151
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+SCAMPARA=0,6,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 152
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+SCAMPARA=0,6,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 153
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+SCAMPARA=1,0,0,3"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 154
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+WHO=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 155
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "ATQ0V1E0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 156
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "ATE0Q0V1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 157
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+MSLSECUR=1,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 158
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+MSLSECUR=3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 159
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DEVROOTK=2,7,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 160
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+DTCPTEST=0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 161
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+HDCPTEST=3,6,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 162
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+HDCPTEST=3,7,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 163
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+CPRMTEST=0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 164
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+FPSENSOR=1,4,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 165
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+VIBRTEST=0,6"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 166
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LIGHTEST=0,5"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 167
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LIGHTEST=0,6"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 168
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+SPKSTEST=3,2,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 169
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,6,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 170
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,7,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 171
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,8,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 172
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,9,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 173
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 174
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOOPTEST=3,3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 175
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,3,4"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 176
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,3,5"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 177
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,3,6"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 178
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,3,9"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 179
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,3,8"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    .line 180
    return-void
.end method
