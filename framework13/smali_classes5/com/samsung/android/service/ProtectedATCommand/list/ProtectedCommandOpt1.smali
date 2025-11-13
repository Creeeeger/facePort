.class public Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;
.super Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.source "ProtectedCommandOpt1.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;-><init>()V

    .line 27
    const/16 v0, 0xa3

    :try_start_0
    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->addATCommands()V
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
    .locals 3

    .line 36
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ENGMODES=8,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 37
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+FUNCTEST=0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 38
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RGBPDISP=0,1,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 39
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+FIRMVERS=3,2,7"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 40
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+FIRMVERS=3,3,7"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 41
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DISPTEST=1,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 42
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HEADINFO=1,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 43
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+FUNCTEST=0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 44
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+VIBRTEST=0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 45
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+VIBRTEST=0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 46
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,0,9"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 47
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,1,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 48
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,1,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 49
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LOOPTEST=0,0,8"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 50
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LIGHTEST=0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 51
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LIGHTEST=0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 52
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LIGHTEST=1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 53
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BARCODEE=0,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 54
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BARCODEE=0,2,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 55
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CONNTEST=3,0,2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 56
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ARPCHECK=1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 57
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHIPIDTT=1,0,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 58
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHIPIDTT=1,0,1,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 59
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHIPIDTT=1,0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 60
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHIPIDTT=1,0,0,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 61
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHIPIDTT=1,0,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 62
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHIPIDTT=1,0,5,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 63
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHIPIDTT=1,0,2,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 64
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ACTIVEID=0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 65
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DEBUGLVC=1,3"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 66
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DEBUGLVC=0,5"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 67
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DEBUGLVC=0,6"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 68
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NFCMTEST=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 69
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NFCMTEST=1,5"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 70
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ALERTDIS=0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 71
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ALERTDIS=0,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 72
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+VERSNAME=1,1,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 73
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LDUCCSUM=1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 74
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+PDPBACKU=0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 75
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+PDPBACKU=0,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 76
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+PDPBACKU=1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 77
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ISOSECHW=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 78
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,0,6,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 79
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SWIZSKIP=0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 80
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SWIZSKIP=0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 81
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SWIZSKIP=0,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 82
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SWIZSKIP=0,3"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 83
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SWIZSKIP=0,4"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 84
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SWIZSKIP=1,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 85
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SWIZSKIP=1,3"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 86
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TESTAPKU=1,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 87
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,3,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 88
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RFNVCHKS=0,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 89
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,0,7"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 90
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LDUCCSUM=1,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 91
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,8,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 92
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DISPTEST=1,1"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 93
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DISPTEST=4,5"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 94
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DISPTEST=7,*"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 95
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DISPTEST=4,6"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 96
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+RFNVCHKS=1,0,2"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 97
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DEBUGLVC=0,7"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 98
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+DEBUGLVC=0,8"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 99
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+TSSCHECK=0,0,0"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 100
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+TSSCHECK=1,0,0"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 101
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+FACMTEST=0,3,2,0"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 102
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v2, "AT+FACMTEST=0,2,2,0"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 103
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 104
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 105
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 106
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 107
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 108
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,5,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 109
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,6,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 110
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,1,3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 111
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 112
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,0,4,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 113
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,4,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 114
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+COFPDATA =2,0,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 115
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+COFPDATA =1,0,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 116
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SVCAINIT=0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 117
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SVCAINIT=1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 118
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SELFTEST=4,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 119
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SELFTEST=3,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 120
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BOOTMODE=0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 121
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BOOTMODE=1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 122
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+GEOMAGSS=3,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 123
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+EGMC=1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 124
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+EFUN=0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 125
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ESUO=4"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 126
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+QUESTCHK=1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 127
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+PMICTEST=0,1,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 128
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BATTTEST=1,9"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 129
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BATTTEST=2,4"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 130
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BATTTEST=3,9"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 131
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+VIBRTEST=4,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 132
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RSTCOUNT=1,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 133
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HAICTEST=4,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 134
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HAICTEST=5,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 135
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=1,0,0,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 136
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,0,0,3"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 137
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,0,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 138
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,0,0,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 139
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,1,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 140
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,1,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 141
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,2,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 142
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,2,1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 143
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,2,2,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 144
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ZIGBTEST=0,2,3,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 145
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,1,1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 146
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+UWBDTEST=0,1,2,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 147
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTEICODE=1,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 148
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+IRTEMPSC=0,1,2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 149
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+EWRITECK=1,7"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 150
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+EWRITECK=6,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 151
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+EWRITECK=6,1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 152
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,1,2,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 153
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,0,5,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 154
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=0,2,2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 155
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=1,4,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 156
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 157
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL_1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 158
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL_2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 159
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL_OIS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 160
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL_PARAMETER_READ"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 161
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL_READ"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 162
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL_READ_1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 163
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,0,1,MULTICAL_READ_2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 164
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCAMTEST=5,2,0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 165
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HWPARAMD=0,0,2,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 166
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HWPARAMD=1,3,0,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 167
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LANGUSET=0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 168
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DEVROOTK=1,3,0"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 169
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MSLSECUR=0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 170
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MSLSECUR=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 171
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MSLSECUR=3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 172
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+IMEITEST=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 173
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+IMEITEST=3,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 174
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+IMEITEST=4,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 175
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+IMEICERT=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 176
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MEIDAUTH=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 177
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+AOTKEYWR=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 178
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+IMEISIGN=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 179
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DETALOCK=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 180
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LOCKINFO=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 181
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RFBYCODE=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 182
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CPLDUCFG=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 183
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+BLOBSIGN=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 184
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CPMGCASS=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 185
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LVOFLOCK=1,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 186
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+PRODCODE=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 187
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SIMSWITC=0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 188
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SSUCONFG=0,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 189
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SSUCONFG=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 190
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TFSTATUS=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 191
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RFCALSTR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 192
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RFCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 193
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RXRSSI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 194
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ERXCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 195
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+AFCSTR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 196
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+AFCCHG=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 197
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+AFCPDM=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 198
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TXCODE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 199
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TXSACODE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 200
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TXSAALLCODE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 201
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ETXSAPAMGAINCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 202
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TXLOAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 203
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TXCORRECT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 204
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TXALLCORRECT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 205
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TXALLARFCN=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 206
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RFCALTEMP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 207
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RFCALEND=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 208
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TESTSTR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 209
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TESTRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 210
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TESTRSSI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 211
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TESTTX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 212
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TXSWEEP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 213
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TESTPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 214
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RFCALREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 215
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RFCALWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 216
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RFCALDONE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 217
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TESTSCANSTR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 218
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TESTSCANREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 219
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TESTSYNC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 220
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TESTBER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 221
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+GEARLYDET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 222
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TESTRESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 223
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TESTEND=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 224
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ESPIWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 225
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ESPIREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 226
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ERXSEL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 227
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ERXBANDSEL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 228
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ETXBANDSEL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 229
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TXPWRGAP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 230
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ETXPAMGAINMOD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 231
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ETXPAMEXTGAINMOD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 232
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ETXPAMGAINCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 233
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ETXINTPDCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 234
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+EANTSWSEL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 235
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ELMTRUNGSM=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 236
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ETESTLOG=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 237
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+EASCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 238
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+GFBRPROC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 239
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ANTSWSEL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 240
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFCALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 241
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFPRECALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 242
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFMAINCALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 243
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFINTCALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 244
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LSYNCSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 245
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LSYNCRSLTREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 246
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LMODETEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 247
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LMODENORMAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 248
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTONETEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 249
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFBANDSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 250
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTARGETRESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 251
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LREGSETMTM=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 252
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LREGSETNORMAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 253
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTARGETMODERD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 254
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRX1RSRPOFFRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 255
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRX2RSRPOFFRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 256
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LFREQRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 257
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LFACTORYRESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 258
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFICTYPESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 259
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTGTMDLREVNOSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 260
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LLOADEXTCALDATA=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 261
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LLOADPRECALDATA=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 262
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFBANDBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 263
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LUSEDRFBANDBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 264
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LUSEDDUALTXRFBANDBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 265
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFICTYPEBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 266
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFMODELBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 267
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LFABP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 268
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXRSRPOVALBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 269
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXRSRPFREQOVALBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 270
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTEMPGPADCBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 271
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXRSRPMIXEROFFSETBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 272
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXRSRPMIXEROFFSETRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 273
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXDCOCVALBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 274
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXIQIMBCALBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 275
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXDCOFFRFCALBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 276
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXDCOCMODEMCALBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 277
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXIQIMBBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 278
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCALDONEBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 279
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCALDATEBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 280
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCALPWRBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 281
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXNOMPWRBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 282
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTGTMDLREVNOBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 283
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LNUMTXCOMPPTBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 284
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCOMPFREQBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 285
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCOMPPWRLVLBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 286
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCOMPPWRBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 287
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCOMPGPADCBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 288
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPATHBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 289
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LHWREVBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 290
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPWRTEMPCOMPBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 291
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPWRFCCCOMPBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 292
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCALPOINTCOMPBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 293
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXVCOCALBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 294
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXVCOCALBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 295
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCALIIP2BP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 296
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXIIP2BP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 297
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXIIP2RES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 298
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXDCOFFSETIIP2CALREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 299
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFBANDRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 300
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LUSEDRFBANDRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 301
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LUSEDDUALTXRFBANDRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 302
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFICTYPERES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 303
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFMODELRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 304
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LFARES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 305
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXRSRPOVALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 306
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXRSRPFREQOVALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 307
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTEMPGPADCRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 308
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXDCOCVALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 309
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXIQIMBCALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 310
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXDCOFFRFCALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 311
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXDCOCMODEMCALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 312
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXIQIMBRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 313
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCALDONERES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 314
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCALDATERES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 315
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCALPWRRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 316
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXNOMPWRRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 317
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTGTMDLREVNORES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 318
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LNUMTXCOMPPTRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 319
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCOMPFREQRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 320
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCOMPPWRLVLRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 321
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCOMPPWRRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 322
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCOMPGPADCRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 323
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPATHRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 324
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LHWREVRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 325
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPWRTEMPCOMPRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 326
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPWRFCCCOMPRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 327
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCALPOINTCOMPRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 328
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXVCOCALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 329
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXVCOCALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 330
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LALLCALVALRESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 331
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPWRLVLSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 332
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXFREQSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 333
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXFREQSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 334
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LFERMEASURE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 335
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXDCOFFCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 336
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXIQIMBCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 337
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXDCOCRF=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 338
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXDCOCMODEM=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 339
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXIQIMBCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 340
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPWRCALPTSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 341
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LSDMEASUREDPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 342
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LSDNOMINALPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 343
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTEMPGPADCRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 344
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LBUILDGAINTABLE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 345
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXRSRPOFFSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 346
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXRSRPREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 347
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXCINRREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 348
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXRSRPFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 349
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRX2RSRPOFFSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 350
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXBWSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 351
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXBWSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 352
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXEARFCNSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 353
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXEARFCNSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 354
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXCALFREQSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 355
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCALFREQSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 356
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXDCOCRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 357
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXIQIMBCALRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 358
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXDCOCRFRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 359
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXDCOCMODEMRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 360
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXIQIMBCALRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 361
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPWRVALIDSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 362
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LPUCCHFORMATSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 363
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LPUCCHCQISZSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 364
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LPUCCHANVALSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 365
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LPUSCHRBSZSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 366
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LPUSCHRBOFFSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 367
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LPUSCHMCSIDXSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 368
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LPRACHCONIDXSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 369
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LPRACHRBOFFSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 370
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LSRSRBSZSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 371
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LSRSRBOFFSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 372
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LSRSPDSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 373
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCHNCONSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 374
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCHNSDREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 375
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSENDREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 376
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSENDREQSLO=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 377
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXMCSENDREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 378
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCALSTSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 379
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCALSTRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 380
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFMODELSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 381
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCALDATESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 382
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCALDATERD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 383
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTEMPCOMPSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 384
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCHNCOMPSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 385
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXDCOCREP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 386
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCALPWRRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 387
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXIQIMBCALIDXSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 388
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXIQIMBCALVALSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 389
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXVCOCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 390
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXVCOCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 391
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LLRXVCOCALRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 392
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LLTXVCOCALRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 393
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LNUMTXCOMPPTSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 394
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCOMPFREQSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 395
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCOMPPWRLVLSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 396
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCOMPPWRSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 397
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LGETCURRGPADC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 398
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPAHITOMIDTHSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 399
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPAMIDTOHITHSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 400
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LHWREVSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 401
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LHWREVREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 402
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCHNLCOMPPTSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 403
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPAMIDTOLOWTHSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 404
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPALOWTOMIDTHSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 405
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTEPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 406
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAPTVOLSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 407
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPABIASSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 408
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXVOLBIASREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 409
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPOWERREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 410
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXCCSASETUP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 411
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXRSRPOFFTXGAINSETUP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 412
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXMSRPWRSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 413
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXRSRPOFFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 414
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFBANDSWITCH=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 415
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFCALFINISH=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 416
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRFCALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 417
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LFCCMODESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 418
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 419
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAPOWERRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 420
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAPOWERBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 421
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAPOWEREXT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 422
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAPOWERRESEXT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 423
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAPOWERRESEXT2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 424
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAPOWERBPEXT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 425
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LINTERNALCALBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 426
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LINTERNALCALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 427
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXAPTBIASNVWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 428
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXAPTVOLNVWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 429
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXAPTBIASNVREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 430
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXAPTVOLNVREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 431
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXGAINCALSA=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 432
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXGAINCALSARES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 433
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXRFICGAINCALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 434
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXRFICGAINCALBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 435
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFAPTTUNESTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 436
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFAPTTUNEFINISH=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 437
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFFINALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 438
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFFINALFINISH=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 439
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXIQCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 440
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXETPWRCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 441
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXETPWRCALSA=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 442
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXETPWRCALINT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 443
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXETPWRCALINTALL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 444
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LINSTARTSAPTPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 445
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LINSTARTSAPTTXFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 446
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXETCLDELAY=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 447
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXETCLDELAYV2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 448
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXETCLDELAYIPC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 449
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LETCLDPDCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 450
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFPWRCTRL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 451
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXPATHPWRCTRL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 452
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPATHPWRCTRL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 453
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LPAPWRCTRL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 454
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LMTMDBGMODE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 455
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRX1RX2AGCIDXRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 456
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXFREQCOMPCTRLSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 457
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXTEMPCOMPCTRLSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 458
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXFREQCOMPCTRLSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 459
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXTEMPCOMPCTRLSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 460
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPWRFCCCOMPCTRLSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 461
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LANTCFGSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 462
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRSSISCAN=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 463
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPDCOMPCTRLSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 464
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPDGPADCRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 465
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPDCOMPBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 466
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPDCOMPRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 467
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAPDCOMP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 468
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LFBRDELAYMUL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 469
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LFBRDELAYBAND=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 470
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LFBRPROC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 471
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LDCTCTRL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 472
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LINSTRTYPESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 473
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LDPDMEMWRITEMODE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 474
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LDPDLUTWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 475
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXGAIN=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 476
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LSPIWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 477
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LSPIREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 478
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXPAVCONSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 479
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAITLUT0NVWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 480
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAITLUT1NVWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 481
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAITLUT0NVRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 482
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAITLUT1NVRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 483
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAITXGNDANTSWTEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 484
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAITTMNSWEEPSA=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 485
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAITINITCAPTURE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 486
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAITFWDCAPTURE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 487
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAITREVCAPTURE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 488
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAITCALCAPTURE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 489
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAITMIPIWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 490
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCACONFIG=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 491
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCAACT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 492
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCADEACT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 493
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCARELEASE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 494
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXRFICPDCOMPBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 495
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXRFICPDCOMPRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 496
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MIPIWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 497
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MIPIREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 498
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFTSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 499
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFTFINISH=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 500
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LSYNC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 501
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LSYNCINNOSIGNAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 502
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LPLLLOCKCHK=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 503
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFICPATHCHK=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 504
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LEXTLNACHK=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 505
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXIQPATHCHK=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 506
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXMODESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 507
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFPATHSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 508
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAFCPDMCALREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 509
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+AFCTONECALREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 510
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAFCPDMCALBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 511
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LAFCPDMCALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 512
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAETDELAY=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 513
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAETDELAYBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 514
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAETDELAYRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 515
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LFBRDELAYCALBANDBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 516
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LFBRDELAYCALBANDRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 517
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LETCMD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 518
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HETCMD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 519
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CETCMD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 520
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ETNVCMD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 521
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LETMTMCALDATABP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 522
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LETMTMCALDATARES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 523
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HETMTMCALDATABP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 524
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HETMTMCALDATARES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 525
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CETMTMCALDATABP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 526
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CETMTMCALDATARES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 527
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXAPTTUNESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 528
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXASTUNESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 529
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFCACONFIG=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 530
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRF4RXCONFIG=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 531
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFPOWERONOFF=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 532
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXONECAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 533
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXTONECAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 534
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXRSSIMEAS=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 535
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXMIXERCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 536
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXMIXERTONECAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 537
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXONECALBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 538
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXONECALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 539
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXONECALOFFSETDISPLAY=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 540
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXFREQTONECAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 541
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXGAINCALRSRPMEAS=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 542
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXGAINCALBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 543
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXGAINCALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 544
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXGAINCALVERBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 545
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXGAINCALVERRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 546
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXASFREQCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 547
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXASFREQCALMODERES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 548
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRXASFREQRSRPOFFSETRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 549
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFFEVERIF=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 550
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LCALIIP2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 551
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAGETFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 552
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXFBRXCOMPRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 553
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXFBRXCOMPBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 554
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LGETFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 555
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAGAINCALFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 556
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAGAINCALFBRXV2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 557
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAFREQCALFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 558
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAINTERNALAPT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 559
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXSAFREQCALFBRXRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 560
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTONECAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 561
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXASFBRXCOMPRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 562
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXASFREQCALFBRXRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 563
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LLMTINPUTDATA=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 564
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LLMTRUNPRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 565
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LLMTRUNDRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 566
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRSRPMEAS=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 567
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRSRPTONEMEAS=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 568
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LPRECALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 569
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LMAINCALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 570
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LPOSTCALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 571
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HDLCELLSYNC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 572
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETRXAGC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 573
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETRXBYPAGC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 574
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETRXAGC1=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 575
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HBUILDAGCTAB=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 576
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 577
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXAGCBUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 578
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRXFREQBUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 579
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRXFREQ1BUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 580
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXSTARTFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 581
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HBUILDTXFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 582
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HFBRDELAYMUL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 583
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSPARFCALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 584
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSPARFCALEND=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 585
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HBUILDTXDCCALFINAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 586
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HBUILDTXDCCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 587
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HCALIIP2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 588
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETDLPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 589
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETPDMVALUE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 590
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETTXPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 591
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETRXFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 592
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETTXFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 593
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETTXMULTICHFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 594
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HWRITETXPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 595
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETBANDPAMODE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 596
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXDCCALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 597
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HVCOTXCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 598
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HVCORXCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 599
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HDRXCALON=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 600
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRXPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 601
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HPDMVALSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 602
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HBUILDMULTICH=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 603
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETCALOFFSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 604
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HLOADRXDEFAULTCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 605
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXAPTBUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 606
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETTXGAININDEX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 607
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETAPTTXINDEX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 608
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HMSRDAPTTXPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 609
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HREADPDGPADC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 610
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETPDPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 611
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HPDRETPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 612
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HPDSASTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 613
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRETPDSATABLE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 614
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRETPDTABLE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 615
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXAPTSASETUP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 616
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HBUILDRFIC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 617
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HBUILDFREQTX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 618
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HDINSETRFIC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 619
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HDINSETPD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 620
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HDINSETFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 621
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINSTARTRFIC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 622
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINBUILDRFIC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 623
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINREADYPDPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 624
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINSETPDPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 625
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINSTARTPDPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 626
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINBUILDPDPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 627
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINSTARTAPTPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 628
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINSTARTPDFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 629
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINSTARTTXFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 630
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINSTARTETCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 631
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINSTARTETCALV2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 632
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINSTARTSAPTPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 633
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINSTARTSAPTTXFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 634
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINSTARTFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 635
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINSTARTFBRXV2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 636
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HINBUILDFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 637
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETTONE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 638
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 639
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 640
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETPDMONLY=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 641
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HMSRDTXPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 642
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXPWRMSRDFREQCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 643
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXMULTICHPWRMSRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 644
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HDLSYNC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 645
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETRXRSSI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 646
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETSENSE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 647
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXPERSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 648
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 649
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETMAXPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 650
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETMINPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 651
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXRETPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 652
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXFREQSETPDM=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 653
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXMULTICHPDM=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 654
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HPDSETPDM=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 655
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HPDBUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 656
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HUMTSCALREGREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 657
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HUMTSCALREGWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 658
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXTRANSSWITCH=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 659
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXGSSASETUP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 660
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXFSSASETUP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 661
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXMULTICHSASETUP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 662
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSMRTTXPOW=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 663
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSMRTTXFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 664
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXPDSASETUP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 665
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSMRTPDCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 666
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRETPDVAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 667
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSPATMSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 668
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSPATMEND=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 669
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HLMTRUNPRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 670
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HLMTRUNDRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 671
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HLMTRUN=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 672
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HCHANGEMODE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 673
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSENDSPI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 674
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HWRITESPI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 675
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HREADSPI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 676
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HREADPDMSPI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 677
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HENDGAINCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 678
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGAINTABINDEX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 679
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXSPISASETUP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 680
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXRFICSASETUP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 681
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETTHERMISTORVAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 682
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HLOADTHRTEMP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 683
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTEMPCALFINISHED=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 684
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSCANRSSI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 685
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETRSSISCANRESULT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 686
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HPDTXPWRMSRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 687
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRXAGCGET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 688
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRXAGCGET1=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 689
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRXAGCFREQCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 690
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRXAGCFREQCAL1=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 691
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRXAGCFREQCAL4RX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 692
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXSABUILDAPTTABLE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 693
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXSABUILDRFICTABLE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 694
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXSABUILDGAINTABLE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 695
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRXRSSIGET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 696
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGET4RXRSSI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 697
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETRXRSSIPRXONLY=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 698
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETRXRSSIDRXONLY=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 699
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETRXRSSIACTIVEONLY=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 700
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CHECKMARC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 701
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXASTUNESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 702
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HCALAS=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 703
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSETTX2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 704
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HNSSTOP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 705
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ENSSTOP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 706
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LNSSTOP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 707
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HILPC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 708
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HDELULCHAN=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 709
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETRXRSCP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 710
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSPITEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 711
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSPITESTEND=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 712
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HMSRRXRSSI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 713
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXETFREQSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 714
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXETFREQSTARTV2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 715
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXETFREQSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 716
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXETFREQPWRRET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 717
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HBUILDTXETFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 718
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HBUILDTXETFREQV2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 719
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXETSASETUP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 720
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXETSASETUPV2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 721
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETTEMPGPADC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 722
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXDSPSTOP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 723
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSPA_CAL_HSENDMIPI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 724
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSPA_CAL_HREADMIPI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 725
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HSPA_CAL_HSET_SMVCC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 726
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXAPTTUNE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 727
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HREADMIPI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 728
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HWRITEMIPI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 729
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HREADAPTVALUE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 730
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HWRITEAPTVALUE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 731
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TDSCDMARFCALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 732
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TDSCDMARSSISCAN=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 733
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TDSCDMARFCALEND=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 734
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 735
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXDCIQCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 736
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TDLCELLSYNC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 737
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TRXPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 738
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TGETRXAGC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 739
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TGETRXDIVAGC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 740
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TBUILDAGCTAB=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 741
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TBUILDDIVAGCTAB=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 742
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TRXUARFCNSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 743
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TGETSENSE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 744
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TGETRXAGCMSR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 745
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TGETRXDIVAGCMSR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 746
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TRXFREQBUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 747
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TRXDIVFREQBUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 748
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TCHANGEMODE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 749
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TGAINTABINDEX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 750
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TENDGAINCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 751
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TPGCTABINDEX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 752
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TMSRDTXPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 753
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXPWRBUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 754
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXFREQPGCIDX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 755
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXFREQUARFCN=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 756
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXPWRMSRDFREQCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 757
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TBUILDTXFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 758
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TDEBUGDUMP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 759
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TFBRPROC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 760
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TAPTTABINDEX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 761
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TAPTMSRDTXPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 762
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TAPTTXPWRBUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 763
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TLNAMODE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 764
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TPAMODE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 765
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TASCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 766
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TDSCDMACALREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 767
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TDSCDMACALWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 768
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TPDSETPGCINDEX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 769
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TPDMSRDTXPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 770
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TPDBUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 771
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TPAVCCSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 772
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TDSCDMAFINALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 773
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TDLFINALCELLSYNC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 774
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TGETRXRSSI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 775
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TGETRXRSSI_RAW=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 776
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TASFINALTEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 777
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TGETRXRSCP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 778
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXPERSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 779
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TSETTXPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 780
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TSETTXCLPC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 781
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TDELULCHAN=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 782
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TDSCDMAFINALEND=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 783
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TSENDSPI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 784
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TALLSPIREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 785
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TREADSPI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 786
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TSACALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 787
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TCALMODESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 788
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXGAINSA=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 789
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXFREQSA=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 790
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXPREPDSA=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 791
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXPDSA=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 792
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXAPTGAINSA=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 793
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXGAINSABUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 794
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXFREQSABUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 795
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXPDSABUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 796
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TTXAPTGAINSABUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 797
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+TLMTRUNPRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 798
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRF2CALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 799
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRF2CALEND=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 800
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HDLCELLSYNC2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 801
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRXPOWER2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 802
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETRXAGC2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 803
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HBUILDAGCTAB2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 804
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRXFREQSETUARFCN2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 805
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGETRXAGCMSR2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 806
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HRXFREQBUILD2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 807
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXSTART2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 808
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HBUILDTXDCCAL2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 809
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HGAINTABINDEX2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 810
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HENDGAINCAL2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 811
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HPDSETPDM2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 812
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HPDMSRDTXPWR2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 813
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HPDBUILD2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 814
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HPDMVALSET2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 815
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HMSRDTXPOWER2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 816
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXAGCBUILD2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 817
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXFREQSETPDM2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 818
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXFREQSETUARFCN2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 819
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXPWRMSRDFREQCAL2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 820
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HBUILDTXFREQ2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 821
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RSSISCAN=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 822
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CDMARFCALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 823
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CDLCELLSYNC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 824
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CRXPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 825
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CRXCALSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 826
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CGETRXAGC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 827
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CBUILDAGC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 828
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CRXAGCFREQCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 829
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CRXAGCFREQCALDRXONLY=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 830
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CRXFREQBUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 831
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTXSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 832
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CDMARFCALEND=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 833
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CBUILDTXDCCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 834
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTXDCIIP2CAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 835
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSETBANDPAMODE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 836
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSETTXGAININDEX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 837
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CMSRDTXPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 838
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTXAGCBUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 839
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTXAPTBUILD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 840
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSETAPTTXINDEX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 841
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CMSRDAPTTXPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 842
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CPDRETPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 843
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSETTXFREQPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 844
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSETPDPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 845
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSETCALOFFSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 846
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTXPWRMSRDFREQCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 847
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSETTXFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 848
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CBUILDTXFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 849
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CREADSPI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 850
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTXASTUNESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 851
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CCALAS=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 852
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSETTX2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 853
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSETTONE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 854
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSETFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 855
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CGETFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 856
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTXETFREQSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 857
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTXETFREQSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 858
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTXETFREQPWRRET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 859
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CBUILDTXETFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 860
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CINSTARTETCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 861
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CBUILDRFIC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 862
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CBUILDFREQTX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 863
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTXAPTTUNE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 864
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTXPWRCOMP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 865
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CREADAPTVALUE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 866
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CWRITEAPTVALUE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 867
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CINSTARTRFIC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 868
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CINBUILDRFIC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 869
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CINREADYPDPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 870
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CINSETPDPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 871
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CINBUILDPDPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 872
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CINSTARTPDFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 873
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSMRTTXFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 874
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CINSTARTAPTPWR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 875
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CINSTARTTXFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 876
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CINSTARTFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 877
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CINSTARTFBRXV2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 878
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CINBUILDFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 879
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CDMACALREGREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 880
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CDMACALREGWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 881
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CDMATMSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 882
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CDMATMEND=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 883
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CDLSYNC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 884
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CRXMEASURE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 885
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CRXLOSSMEASURE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 886
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTXPERSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 887
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSETPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 888
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSETRXPATH=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 889
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CFBRPROC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 890
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRFFINALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 891
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRFFINALFINISH=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 892
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NMODETEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 893
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NMODENORMAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 894
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRFSYNC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 895
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRSRPREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 896
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NSINRREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 897
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NAGCIDXRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 898
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NFERMEASURE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 899
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXMODESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 900
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXSENDREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 901
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NSPIWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 902
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NSPIREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 903
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NMIPIWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 904
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NMIPIREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 905
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXPOWERTEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 906
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXAPTTUNESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 907
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRPOWERT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 908
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRFEEDBK=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 909
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXAPTBIASNVWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 910
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXAPTVOLNVWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 911
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXAPTBIASNVREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 912
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXAPTVOLNVREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 913
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRFCALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 914
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NPRECALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 915
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NMAINCALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 916
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NPOSTCALSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 917
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXONECAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 918
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXMIXERCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 919
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXRSRPMIXEROFFSETBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 920
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXRSRPMIXEROFFSETRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 921
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXTONECAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 922
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXONECALBP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 923
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXONECALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 924
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXONECALOFFSETDISPLAY=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 925
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NREGSETNORMAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 926
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCALSTSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 927
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRFCALFINISH=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 928
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXSAGAINCALFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 929
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXSAFREQCALFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 930
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXSARBCALFBRX=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 931
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXSAINTERNALAPT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 932
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXSAINTERNALMCHAPT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 933
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXSAFREQCALFBRXRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 934
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXSARBCALFBRXRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 935
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXFBRXCOMPRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 936
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NNUMTXCOMPPTRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 937
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXCOMPPWRLVLRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 938
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXCOMPFREQRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 939
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTEMPGPADCRD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 940
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCALDATESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 941
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCALDATERD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 942
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCALIIP2=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 943
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCALTXDC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 944
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXPWRLVLSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 945
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXSRSSWPATHSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 946
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRFICPATHCHK=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 947
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRFICREGDUMP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 948
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NEXTLNACHK=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 949
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXIQPATHCHK=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 950
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXFREQCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 951
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXFREQTONECAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 952
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXFREQCALMODERES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 953
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXFREQRSRPOFFSETRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 954
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXFREQGAINCALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 955
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NGETTXDCVAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 956
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXASTUNESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 957
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXASFREQCALMODERES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 958
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRXASFREQRSRPOFFSETRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 959
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXASFREQCALFBRXRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 960
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXASFBRXCOMPRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 961
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NETCMD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 962
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXETCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 963
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXSAETCALRES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 964
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXETCLDELAY=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 965
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXSAPTCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 966
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXETSAPTCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 967
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NETMTMCALDATABP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 968
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NETMTMCALDATARES=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 969
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NPLLLOCKCHK=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 970
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NAPTVOLSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 971
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXPABIASSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 972
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXVOLBIASREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 973
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NTXPARANGEMAPSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 974
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRSRPTONEMEAS=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 975
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRSRPMEAS=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 976
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NLMTDATA=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 977
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NLMTRUN=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 978
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MMWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 979
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MMREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 980
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MMCALTEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 981
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MMTXSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 982
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MMTXEND=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 983
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MMBEAMSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 984
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MMTXGAINSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 985
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NBEAMSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 986
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NUSERBEAMSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 987
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MMTEMPREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 988
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MMPDREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 989
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCALRXBW=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 990
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCALINTERNALRSSI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 991
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MMCFRSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 992
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCALINTERNALTXPOWER=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 993
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCALINTERNALRXGAIN=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 994
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NCALINTERNALTXGAIN=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 995
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MMTEMPCOMPENSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 996
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MMBEAMNVSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 997
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MMBEAMNVGET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 998
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MMOTPCALREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 999
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RFCALBACKUP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1000
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+RFCALRESTORE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1001
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NRFACTREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1002
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LRFACTREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1003
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTXETSAPTCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1004
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HTXETSAPTCAL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1005
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+AUDIOREAD=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1006
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+AUDIOWRITE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1007
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTMTEXT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1008
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTMNEGO=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1009
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTMCFG=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1010
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CEMODE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1011
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MPLMNSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1012
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MSRVREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1013
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MSESSIONREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1014
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MSSNLISTREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1015
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MSIGREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1016
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MTIMEREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1017
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MPRIOSET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1018
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CMOAR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1019
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CMOLRE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1020
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CMOLR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1021
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CMTLRANS=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1022
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SETPHYCTEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1023
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SETCLCKGATING=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1024
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+GETNVITEM=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1025
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SETNVITEM=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1026
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CPON=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1027
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CPOF=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1028
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DIALUP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1029
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+HANGUP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1030
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ALERTING=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1031
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CRM=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1032
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SENDSHORTMESSAGESERVICE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1033
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+PPPTEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1034
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SETURTGDELAY=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1035
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SETDORLCTRL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1036
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CL1TEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1037
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DL1SLEEPTEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1038
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DL1TEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1039
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CTA=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1040
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+GETSTATE=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1041
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+GETCHANNEL=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1042
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+PRFSRVOPT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1043
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+GETMEID=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1044
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+PSTDATA=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1045
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CPRESET=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1046
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+OTAMASK=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1047
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+ENABLEEVDOSYSEVENT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1048
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+EVDOSIGNALINGMASK=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1049
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DSSTCONFIG=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1050
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+DSSTTEST=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1051
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSGS=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1052
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+MODESELECT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1053
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CSMSR=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1054
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+NWSTATEIND=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1055
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+GETGPIO=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1056
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SETGPIO=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1057
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SETCPUFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1058
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SETMIFFREQ=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1059
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+GETPMIC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1060
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SETPMIC=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1061
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+SMSUP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1062
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+AUTOCONFIG=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1063
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+LTPUT=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1064
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+CLKMON=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1065
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+FCRASHDMP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1066
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+FACTORYSTART=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1067
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+FACTORYSTOP=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1068
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+GPIODVS=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1069
    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    const-string v1, "AT+GPIOVERI=*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    .line 1070
    return-void
.end method
