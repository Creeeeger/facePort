.class public Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;
.super Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.source "UserOpenCommand.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;-><init>()V

    .line 27
    const/16 v0, 0xa1

    :try_start_0
    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->addATCommands()V
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
    .locals 25

    .line 36
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+ENGMODES=8,0,0"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 37
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+ENGMODES=7,0,1,0|SLO"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 38
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+ENGMODES=7,1,0,0|CRO(VZW,EUX,EUR,XME)"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 39
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+ENGMODES=7,1,1,0|SLO|CRO(VZW,EUX,EUR,XME)"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 40
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+ENGMODES=7,2,0,0|CRB(VZW,EUX,EUR,XME)"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 41
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+ENGMODES=7,2,1,0|SLO|CRB(VZW,EUX,EUR,XME)"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 42
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+ENGMODES=7,0,0,1|SBB"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 43
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+ENGMODES=7,0,0,2|FBOAD"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 44
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+ENGMODES=7,0,0,3|FBOA"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 45
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+ENGMODES=7,0,0,4|FBOD"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 46
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+ENGMODES=7,0,0,5|CSO"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 47
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+ENGMODES=9,0"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 48
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=0,0"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 49
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=0,1"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 50
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=0,2"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 51
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=0,3"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 52
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=0,4"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 53
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=0,5"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 54
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=0,6"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 55
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=0,7"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 56
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=0,9"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 57
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=1,0"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 58
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=1,1"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 59
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=1,5"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 60
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=3,0"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 61
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=3,1"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 62
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=3,2"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 63
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=3,3"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 64
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=3,5"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 65
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=3,6"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 66
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=3,7"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 67
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=3,8"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 68
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=3,9"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 69
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=4,0"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 70
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=4,1"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 71
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=4,2"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 72
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=5,0"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 73
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=5,1"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 74
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=5,2"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 75
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=5,3"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 76
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=5,4"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 77
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DISPTEST=5,5"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 78
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+IMEITEST=*|SLO"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 79
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+IMEMTEST=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 80
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BATTTEST=1,2"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 81
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BATTTEST=1,6"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 82
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BATTTEST=3,2"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 83
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BATTTEST=4,0"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 84
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BATTTEST=4,1"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 85
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BATTTEST=1,7"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 86
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BATTTEST=1,8"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 87
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BATTTEST=2,1"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 88
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BATTTEST=3,0"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 89
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BATTTEST=3,1"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 90
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BATTTEST=3,3"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 91
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BATTTEST=3,4"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 92
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BTIDTEST=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 93
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+WIFIIDRW=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 94
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+FUELGAIC=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 95
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+SPKSTEST=3,3,0"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 96
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+SPKSTEST=3,3,1"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 97
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+SPKSTEST=3,3,2"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 98
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+SPKSTEST=3,3,3"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 99
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+EMEMTEST=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 100
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+HMACMISM=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 101
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+IFPMICCN=0,0,5,0"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 102
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+IFPMICCN=0,0,5,1"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 103
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+FACTOLOG=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 104
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,0,0,1"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 105
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,1,0,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 106
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,1,0,1"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 107
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,1,0,2"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 108
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,1,0,4"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 109
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,1,0,5"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 110
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,1,1,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 111
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,1,2,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 112
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,1,2,2"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 113
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,1,2,3"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 114
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,2,2,1"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 115
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,2,2,3"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 116
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,3,2,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 117
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,3,3,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 118
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,9,0,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 119
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=0,9,1,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 120
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+CAMETEST=1,2,0,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 121
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+UARTSWIT=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 122
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+FCBTTEST=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 123
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+BTLETEST=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 124
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+FCEPTEST=0,0,0,1"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 125
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+FCEPTEST=0,0,1,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 126
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+LOOPTEST=0,0,2"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 127
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+LOOPTEST=0,0,5"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 128
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+LOOPTEST=0,1,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 129
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+LOOPTEST=0,1,5"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 130
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+FAILHIST=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 131
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+RAPPLIST=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 132
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+RAMSIZEC=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 133
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+SECUREBT=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 134
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+WPROTECT=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 135
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+POWRESET=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 136
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+WIFITEST=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 137
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+PAYMENTS=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 138
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+FIRMVERS=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 139
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+EWRITECK=0,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 140
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+EWRITECK=0,1"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 141
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+EWRITECK=0,2"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 142
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+EWRITECK=0,3"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 143
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+EWRITECK=0,4"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 144
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+EWRITECK=0,5"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 145
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+EWRITECK=0,6"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 146
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+EWRITECK=1,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 147
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+EWRITECK=1,1"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 148
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+EWRITECK=1,2"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 149
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+EWRITECK=1,6"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 150
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+EWRITECK=1,9"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 151
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+EWRITECK=3,6"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 152
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+SYSSCOPE=*|SLO"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 153
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+FLCRFCAL=0,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 154
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+FLCRFCAL=0,1"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 155
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+FLCRFCAL=1,*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 156
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+FLCRFCAL=2,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 157
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+FLCRFCAL=2,1"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 158
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+FLCRFCAL=3,0"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 159
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+FLCRFCAL=4,1"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 160
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+FLCRFCAL=4,2"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 161
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+BAROMETE=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 162
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+SWDLMODE=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 163
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+KSTRINGB=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 164
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+IDCHIPTT=0,1,0"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 165
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+IDCHIPTT=0,2,0"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 166
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+IDCHIPTT=0,2,1"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 167
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+IDCHIPTT=1,0,0"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 168
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+UENCRYPT=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 169
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+GPSSTEST=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 170
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v5, "AT+NFCMTEST=*"

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 171
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v5, "AT+SENSORHB=*"

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 172
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v5, "AT+ACSENSOR=*"

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 173
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v5, "AT+GYROSCOP=*"

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 174
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v5, "AT+GEOMAGSS=*"

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 175
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v5, "AT+HRMOSENS=*"

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 176
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v5, "AT+UVSENSOR=*"

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 177
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v5, "AT+DEBUGLVC=*"

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 178
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v5, "AT+WCOLORID=*"

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 179
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v5, "AT+GRIPSENS=*"

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 180
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+CONTROLN=*"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 181
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+TSPPTEST=0,6,0"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 182
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+TSPPTEST=0,6,5"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 183
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+TSPPTEST=3,2,3"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 184
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+TSPPTEST=3,6,0"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 185
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+TSPPTEST=3,7,*"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 186
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+LEDLAMPT=0,0"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 187
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+LEDLAMPT=0,1"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 188
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+LEDLAMPT=0,2"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 189
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+LEDLAMPT=0,3"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 190
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+LEDLAMPT=0,4"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 191
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+COUNTRST=*"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 192
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+AIRPMODE=*"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 193
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+HWPARAMD=1,0,2,0"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 194
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+USERDATA=*"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 195
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+COFPDATA=*"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 196
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+OQCSBFTT=*"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 197
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+ACTTDATA=*"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 198
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+RGBPDISP=0,0,0"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 199
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+NEEDCMDT=*"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 200
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+UBCTTEST=*|FBOD"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 201
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+USBDEBUG=*"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 202
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+SYSDUMP=*|CRB(USC,VZW)"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 203
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+ACTIVATE=0,0,0"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 204
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+CAMETEST=0,1,0,7"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 205
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+CAMETEST=0,1,3,0"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 206
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+CAMETEST=0,1,3,1"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 207
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+CAMETEST=0,1,5,*"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 208
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+CAMETEST=0,4,1,1"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 209
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+CAMETEST=0,5,1,2"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 210
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+CAMETEST=2,0,0"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 211
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+GETDOTESTNV"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 212
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+HEADINFO=1,0"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 213
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+HEADINFO=1,1,0"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 214
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+SETDOTESTNV"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 215
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+SETTESTNV=*"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 216
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v6, "AT+ACLTESTT=*"

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 217
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v7, "AT+AIRPLANEVALUE=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 218
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v7, "AT+ASDIVTES=*"

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 219
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v8, "AT"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 220
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v8, "ATE"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 221
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v8, "ATE0"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 222
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "ATE1"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 223
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v10, "ATI|CRO(ATT,AIO,SPR,USC,VZW)"

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 224
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v10, "ATI1"

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 225
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v10, "ATQ0E0V1"

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 226
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v10, "ATZ"

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 227
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v10, "AT+BAKUPCHK=*"

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 228
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+BATGETLEVEL?=*|SLO"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 229
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+BTVALUE=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 230
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+CALRM=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 231
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+CBCAST=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 232
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+CBLKFTDF=*"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 233
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+CBLTH=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 234
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+CCALD=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 235
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+CCLGS=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 236
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+CDCONT=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 237
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+CDUR=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 238
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+CDVOL=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 239
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+CEMAIL=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 240
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v11, "AT+CFUN=*"

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 241
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGMI=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 242
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v13, "AT+CGMM=*|CRO(ATT,AIO,SPR,USC,VZW)"

    invoke-virtual {v0, v13, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 243
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v13, "AT+CGMR=*"

    invoke-virtual {v0, v13, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 244
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v14, "AT+CGSN=*|CRO(ATT,AIO,SPR,USC,VZW)"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 245
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v14, "AT+CIMI=*|CRO(ATT,AIO,SPR,USC,VZW)"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 246
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v14, "AT+CIMSG=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 247
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v14, "AT+CKPD=*"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 248
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CLOGIN=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 249
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CMSG=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 250
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CNPAD=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 251
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CNUM=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 252
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CPICTR=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 253
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CPRMTEST=*"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 254
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CRST=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 255
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CSHM=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 256
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CSMCT=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 257
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CSS=*"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 258
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CSYNC=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 259
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CTACT=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 260
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CTASK=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 261
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CTBCPS=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 262
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CTMRV=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 263
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CTSA=*"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 264
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CVCMD=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 265
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CVRCD=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 266
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+CWAP=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 267
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+DEVCONINFO=*|SLO"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 268
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+DEVROOTK=*|SBB"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 269
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+DTCPTEST=*"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 270
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+DUMPCTRL=*"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 271
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v15, "AT+EFSSYNCC=*"

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 272
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v16, v9

    const-string v9, "AT+FENRIRCN=*|SLO"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 273
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+FUS?"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 274
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+GETFULLHISTNV=*"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 275
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+GETFULLTESTNV=*"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 276
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+GETTESTNV=*"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 277
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+GMM=*|SLO"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 278
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+GPSVALUE=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 279
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+GSN=*"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 280
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v17, v8

    const-string v8, "AT+HDCPTEST=*"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 281
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v8, "AT+ICCCINFO=*|SLO"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 282
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v8, "AT+IMSVAL=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 283
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v8, "AT+LOGERASE=*"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 284
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v8, "AT+MITSRFTS=*"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 285
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v8, "AT+NFCVALUE=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 286
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v8, "AT+NSRI=*|SLO|CRO(SKC,KTC)"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 287
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v8, "AT+RTCCTEST=*"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 288
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v8, "AT+SCMMONIT=*"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 289
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v18, v9

    const-string v9, "AT+SCODCHAN=*"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 290
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+SECUREOS=*"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 291
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+SETFULLTESTNV=*"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 292
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+SIMDETEC=*"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 293
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v19, v14

    const-string v14, "AT+SIZECHECK=*|SLO"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 294
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v14, "AT+SOCFIOTK=0,0,0,0|SBB"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 295
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v14, "AT+SOCFIOTK=1,0,0,0|SBB"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 296
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v14, "AT+SUDDLMOD=*"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 297
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v14, "AT+SVCIFPGM=*|SLO"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 298
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v14, "AT+URDEVICE=*"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 299
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v14, "AT+USBMODEM=*|CRO(VZW)"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 300
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v14, "AT+WIFIVALUE=*|CRO(ATT,AIO)"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 301
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v14, "AT+COPS?"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 302
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v14, "AT+COPS=*"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 303
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v20, v14

    const-string v14, "AT+CGTFT=*"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 304
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v21, v14

    const-string v14, "AT+CCFC=*"

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 305
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v22, v13

    const-string v13, "AT+CCWA=*"

    invoke-virtual {v0, v13, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 306
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v23, v12

    const-string v12, "AT+CDV=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 307
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CEER=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 308
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v24, v12

    const-string v12, "AT+CEMODE=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 309
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGACT=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 310
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGATT=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 311
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGCMOD=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 312
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGDATA=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 313
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGDCONT=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 314
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGDSCONT=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 315
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGEQMIN=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 316
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGEQOS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 317
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGEQREQ=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 318
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CHLD=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 319
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CHUP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 320
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CLCC=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 321
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CLCK=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 322
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CMEC=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 323
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CMEE=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 324
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CMER=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 325
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CMGD=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 326
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CMGF=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 327
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CMGS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 328
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CMGW=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 329
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CMOD=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 330
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CMSS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 331
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CPIN=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 332
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CPMS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 333
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CPWD=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 334
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CREG=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 335
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CRSM=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 336
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CSCA=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 337
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CSCS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 338
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CSIM=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 339
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CSMP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 340
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CSMS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 341
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CUSD=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 342
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CVHU=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 343
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CVMOD=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 344
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+VTS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 345
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+XDATACHANNEL=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 346
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "ATA"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 347
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "ATD"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 348
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "ATH"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 349
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "CHLD"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 350
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT#CGSEND=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 351
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCDGEN=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 352
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT^ATDVIDEO=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 353
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCMIP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 354
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCMIPEP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 355
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCMIPHA=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 356
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCMIPMASPI=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 357
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCMIPMHSS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 358
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCMIPMASS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 359
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCMIPMHSPI=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 360
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCMIPNAI=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 361
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCMIPPHA=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 362
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCMIPRT=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 363
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCMIPSHA=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 364
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCMIPT=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 365
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCMRUC=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 366
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$CRM=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 367
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCPDPCFGE?"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 368
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$QCPDPCFGE=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 369
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+BAUDRATE=0,0,1,1"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 370
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+BAUDRATE=0,0,1,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 371
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+ENGMODES=0,*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 372
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+ENGMODES=1,*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 373
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+ENGMODES=2,2,*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 374
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+MGRTCASS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 375
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+HEADINFO=1,3"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 376
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+HEADINFO=1,4"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 377
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+HEADINFO=1,5"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 378
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+FCFMTEST=0,0,0,*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 379
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+FCFMTEST=0,0,1,*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 380
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+FCFMTEST=0,1,0,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 381
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+FCFMTEST=1,0,0,*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 382
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+SPKSTEST=3,3,4"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 383
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CAMETEST=0,1,0,3"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 384
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CAMETEST=0,9,3,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 385
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+LOOPTEST=3,0,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 386
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+LOOPTEST=3,0,1"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 387
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+LOOPTEST=3,0,2"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 388
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+BATTTEST=1,3"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 389
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+BATTTEST=1,4"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 390
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+LIGHTEST=0,2"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 391
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+LIGHTEST=0,3"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 392
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+LIGHTEST=0,4"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 393
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+LIGHTEST=1,3"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 394
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+LIGHTEST=1,4"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 395
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+RSTVERIF=0,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 396
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+TSPPTEST=3,4,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 397
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+TSPPTEST=3,5,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 398
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+DEVICEPN=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 399
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+ATSCTEST=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 400
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+ETHERNET=1,0,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 401
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+ETHERNET=1,1,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 402
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+LOCKUTIL=0,1,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 403
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+LOCKUTIL=1,1,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 404
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+BGLUCOSE=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 405
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+SKUCODEC=1,0,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 406
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+SKUCODEC=2,0,*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 407
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+VOLTECON=0,0,0,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 408
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+VOLTECON=1,0,1,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 409
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+IFPMICCN=0,0,3,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 410
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+IFPMICCN=0,0,4,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 411
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+IFPMICCN=0,0,6,0|CRO(DCM,KDI,RKT)"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 412
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+IFPMICCN=0,0,7,*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 413
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+HOPATHCK=1,0,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 414
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+MIPITEST=0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 415
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+MIPITEST=1"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 416
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CHIPIDTT=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 417
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+NEEDCMDT=0,0,0,*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 418
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+RFEVTAIT=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 419
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+RGBPDISP=0,0,0,*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 420
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+BLOBSIGN=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 421
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CPLDUCFG=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 422
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+PRXDRXCK=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 423
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+ARPCHECK=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 424
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CESP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 425
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CSDH=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 426
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CSCB=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 427
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CSAS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 428
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CRES=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 429
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CMGL=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 430
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CNMA=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 431
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CMGC=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 432
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CMMS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 433
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CBST=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 434
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CPAS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 435
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGQREQ=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 436
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CNMI=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 437
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CMGR=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 438
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CPOL=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 439
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+GMR=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 440
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+GMI=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 441
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CSQ=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 442
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CPBS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 443
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CPBR=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 444
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CPBW=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 445
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CLIP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 446
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CLIR=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 447
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CBKLT=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 448
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGSMS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 449
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$ARMEE=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 450
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$ARME=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 451
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "ATV1"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 452
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "ATX4"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 453
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+PACSP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 454
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$CSQ=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 455
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$CREG=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 456
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT$CCLK=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 457
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT*CNTI=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 458
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+RSRP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 459
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+RSRQ=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 460
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+RSCP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 461
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+ECNO=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 462
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CEINFO=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 463
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+NCELL=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 464
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+SCELL=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 465
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CCHC=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 466
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CCHO=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 467
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGLA=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 468
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CCLK=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 469
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CEREQ=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 470
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGCONTRDP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 471
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGEQOSRDP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 472
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGEREP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 473
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGPADDR=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 474
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGSCONTRDP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 475
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGTFTRDP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 476
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CIND=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 477
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+COPN=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 478
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CPLS=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 479
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CRM=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 480
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CSTF=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 481
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+GCAP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 482
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CLAC=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 483
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CEREG=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 484
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+WS46=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 485
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CGPIAF=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 486
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+CESQ=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 487
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+VZWAPNE=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 488
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+VZWRSRP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 489
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+VZWRSRQ=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 490
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+SWATD=1"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 491
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+SWATD=0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 492
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+NCAMTEST=1,9,0,*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 493
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+NCAMTEST=1,9,1,*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 494
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+TOUCH=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 495
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+FPSENSOR=1,2,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 496
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+PRECONFG=0,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 497
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+PRECONFG=1,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 498
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+PRECONFG=*|CRB(LGT,LUC,LUO,SKT,SKC,SKO,KTT,KTC,KTO,ANY,KOO)"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 499
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+SERIALNO=*|SLO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 500
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+APCHIPTT=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 501
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+SWVER=*|SLO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 502
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+IMEINUM=*|SLO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 503
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+FEEDBACK=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 504
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+SKT=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 505
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+LTPUT=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 506
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+LOCKCODE=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 507
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+LVOFLOCK=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 508
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+DETALOCK=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 509
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+PRODCODE=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 510
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+GRDMTEST=0,1"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 511
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+GRDMTEST=0,2"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 512
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+TSPPTEST=0,9,*|CSO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 513
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+FAILDUMP=*|FBOD"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 514
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+NADCHECK=*|FBOD"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 515
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+BANSELCT=*|SLO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 516
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+LIFETIME=*|SLO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 517
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+MAXPOWER=*|SLO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 518
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+IMEITEST=0,*|SLO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 519
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+IMEITEST=1,*|SLO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 520
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+VERSNAME=*|SLO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 521
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+REACTIVE=1,0,0|SLO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 522
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+REACTIVE=2,0,*|SLO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 523
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+REACTIVE=2,1,*|SLO "

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 524
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+REACTIVE=2,2,*|SLO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 525
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+GRDMTEST=0,3"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 526
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+HAICTEST=0,*|CSO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 527
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+HAICTEST=1,0|CSO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 528
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+HAICTEST=1,1|CSO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 529
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+RSTCOMPC=0,0,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 530
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+ACTIVEID=1,0,0"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 531
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+FRPUNLCK=1,0,*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 532
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+FRPUNLCK=1,1,*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 533
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+BIASENSO=0,2,0|CSO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 534
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+BIASENSO=1,2,0|CSO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 535
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+MTKEDLBK=0,0|CRO(TFN)"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 536
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+MTKEDLBK=1,0|CRO(TFN)"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 537
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+DDPRO=*|SLO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 538
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+VIBRTEST=1,0|CSO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 539
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+VIBRTEST=0,10|CSO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 540
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+VIBRTEST=0,11|CSO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 541
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+VIBRTEST=1,2|CSO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 542
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+VIBRTEST=1,3|CSO"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 543
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+VERSNAME=1,1,3"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 544
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+SYSSLEEP=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 545
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+VERSNAME=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 546
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+MAXPOWER=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 547
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v12, "AT+TEMPTEST=*"

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 548
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 549
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+CALIDATE=*"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 550
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+BANSELCT=*"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 551
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+SECNRSSI=*"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 552
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+READRSSI=*"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 553
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v9, "AT+CALLCONN=*"

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 554
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 555
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v8, "AT+TESTMODE=*"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 556
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 557
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+AKSEEDNO=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 558
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+LIFETIME=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 559
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 560
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+LOCKREAD=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 561
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 562
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+CHNSELCT=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 563
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+AOTKEYWR=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 564
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+FACTORST=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 565
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 566
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+FAILDUMP=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 567
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+NAMCHECK=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 568
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+PRLVERIF=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 569
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+ERITTEST=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 570
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 571
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+SVCBANDB=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 572
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v4, "AT+RECONDIT=*"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 573
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 574
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v3, "AT+MODECHAN=*"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 575
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 576
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+OBDMTEST=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 577
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+SIMLOCKU=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 578
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MIPITEST=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 579
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+PARALLEL=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 580
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+RFNVCHKS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 581
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 582
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 583
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+HOPATHCK=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 584
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+RFBKOFFC=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 585
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+LDUSTCHK=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 586
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+RFMIPITT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 587
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+RFEVTAIT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 588
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+PROVCASS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 589
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+PRODCODE=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 590
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+HWINDICK=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 591
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+NADCHECK=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 592
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+FEEDBACK=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 593
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+APCHIPTT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 594
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+PRXDRXCK=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 595
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BAUDRATE=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 596
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+IMEINUM=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 597
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MEIDAUTH=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 598
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CHIPIDTT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 599
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MSLSECUR=1,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 600
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+IMEITEST=0,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 601
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+IMEITEST=1,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 602
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+IMEISIGN=0,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 603
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+IMEISIGN=1,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 604
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DETALOCK=0,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 605
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DETALOCK=1,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 606
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+LOCKINFO=0,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 607
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+LOCKINFO=1,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 608
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+RFBYCODE=0,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 609
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+RFBYCODE=1,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 610
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CPLDUCFG=0,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 611
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CPLDUCFG=1,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 612
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BLOBSIGN=0,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 613
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+BLOBSIGN=1,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 614
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+SIMSWITC=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 615
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+LVOFLOCK=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 616
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+SSUCONFG=1,*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 617
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+PACSP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 618
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+VZWAPNE=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 619
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+VZWMRUC=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 620
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+VZWMRUE=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 621
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+RSRP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 622
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+RSRQ=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 623
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+RSCP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 624
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+ECNO=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 625
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+HANDLEDRX=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 626
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+SKT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 627
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DEVFEAT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 628
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DSDORMANT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 629
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CACM=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 630
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CAMM=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 631
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CAOC=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 632
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CBST=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 633
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 634
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v13, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 635
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CCLK=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 636
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CDIS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 637
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v24

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 638
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 639
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGACT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 640
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGANS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 641
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGATT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 642
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGAUTH=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 643
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGAUTO=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 644
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGCLASS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 645
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGCMOD=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 646
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGDATA=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 647
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGDCONT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 648
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGDSCONT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 649
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGEREP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 650
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGEQOS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 651
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGEQOSRDP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 652
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGEQNEG=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 653
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v23

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 654
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGMM=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 655
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v22

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 656
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGLA=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 657
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CCHC=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 658
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CCHO=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 659
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CUAD=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 660
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGPADDR=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 661
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGPIAF=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 662
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGQMIN=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 663
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGEQMIN=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 664
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGQREQ=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 665
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGEQREQ=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 666
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGREG=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 667
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CEREG=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 668
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGSN=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 669
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGSMS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 670
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v21

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 671
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGTFTRDP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 672
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CHLD=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 673
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CHSD=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 674
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CHSN=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 675
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CHST=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 676
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CHUP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 677
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CIMI=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 678
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v19

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 679
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CLAC=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 680
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CLAE=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 681
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CLCC=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 682
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CLCK=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 683
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CLIP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 684
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+COLR=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 685
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CCFCU=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 686
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CLIR=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 687
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CNAP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 688
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CLVL=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 689
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CMEC=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 690
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CMEE=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 691
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CMER=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 692
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CMGD=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 693
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CMGF=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 694
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CMGL=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 695
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CMGR=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 696
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CMGS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 697
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CMGW=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 698
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CSSN=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 699
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CSTA=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 700
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CTFR=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 701
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CMMS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 702
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CMOD=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 703
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CMSS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 704
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CMUT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 705
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CMUX=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 706
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CNMA=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 707
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CNMI=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 708
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CNUM=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 709
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CNMPSD=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 710
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+COLP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 711
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+COPN=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 712
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v20

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 713
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CPAS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 714
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CPBF=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 715
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CPBR=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 716
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CPBS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 717
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CPBW=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 718
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CPLS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 719
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CPIN=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 720
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CPMS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 721
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CPOL=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 722
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CPWD=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 723
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CPUC=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 724
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CRC=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 725
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CREG=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 726
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CRES=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 727
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CRLP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 728
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CR=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 729
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CRSM=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 730
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CSAS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 731
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CSCA=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 732
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CSCB=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 733
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CSDF=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 734
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CSDH=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 735
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CSIM=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 736
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CSCS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 737
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CSMP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 738
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CSMS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 739
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CSQ=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 740
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CSUS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 741
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CUSD=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 742
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CVMOD=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 743
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+WS46=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 744
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+DS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 745
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+GCAP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 746
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+GMI=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 747
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+GMM=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 748
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+GMR=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 749
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v18

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 750
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+VTS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 751
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+VTD=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 752
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGCONTRDP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 753
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CGSCONTRDP=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 754
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CTZR=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 755
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+CPSMS=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 756
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v17

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 757
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    move-object/from16 v2, v16

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 758
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MMCALSTART_EXT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 759
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MMCALFINISH_EXT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 760
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MMCALVHALL_EXT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 761
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MMCALTXSTARTMOD_EXT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 762
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MMCALTXEND_EXT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 763
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MMCALPHAIDREAD_EXT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 764
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MMCALTXDC_EXT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 765
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MMCALRXSCAN_EXT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 766
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MMCALTXPWR_EXT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 767
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MMCALTXGAINPHA_EXT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 768
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MMCALTXGAINCTR_EXT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 769
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MMCALPHADETFREQ_EXT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 770
    iget v1, v0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    const-string v2, "AT+MMCALIQMC_EXT=*"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    .line 771
    return-void
.end method
