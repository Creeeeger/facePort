.class public Lcom/sec/android/iaft/IAFDService;
.super Landroid/app/Service;
.source "IAFDService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFDService$IAFDBinder;
    }
.end annotation


# static fields
.field static final blacklist CMD_TYPE_GETUPDATESTATUS:I = 0x5

.field static final blacklist CMD_TYPE_GETUPDATESTATUS_RESULT:I = 0x6

.field static final blacklist CMD_TYPE_PARSE:I = 0x3

.field static final blacklist CMD_TYPE_REPAIR:I = 0x2

.field static final blacklist CMD_TYPE_SHOW:I = 0x4

.field static final blacklist CMD_TYPE_START:I = 0x1

.field static final blacklist CMD_TYPE_START_SmartManagerApp:I = 0x7

.field static final blacklist CMD_TYPE_START_VocApp:I = 0x8

.field private static final blacklist TAG:Ljava/lang/String; = "IAFDService"

.field private static blacklist mContext:Landroid/content/Context;

.field private static blacklist mIAFDDiagnosis:Lcom/sec/android/iaft/IAFDDiagnosis;


# instance fields
.field private blacklist mBinder:Lcom/sec/android/iaft/IAFDService$IAFDBinder;

.field private blacklist mIAFDServiceImpl:Lcom/sec/android/iaft/IAFDServiceImpl;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist IAFDServiceInit(Landroid/content/Context;)V
    .locals 2
    .param p1, "ct"    # Landroid/content/Context;

    .line 39
    sput-object p1, Lcom/sec/android/iaft/IAFDService;->mContext:Landroid/content/Context;

    .line 40
    sget-object v0, Lcom/sec/android/iaft/IAFDService;->mIAFDDiagnosis:Lcom/sec/android/iaft/IAFDDiagnosis;

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iaft/IAFDService;->mIAFDDiagnosis:Lcom/sec/android/iaft/IAFDDiagnosis;

    .line 42
    sget-object v1, Lcom/sec/android/iaft/IAFDService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/iaft/IAFDDiagnosis;->init(Landroid/content/Context;)V

    .line 44
    :cond_0
    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDService;->mBinder:Lcom/sec/android/iaft/IAFDService$IAFDBinder;

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 3

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    invoke-virtual {p0, p0}, Lcom/sec/android/iaft/IAFDService;->IAFDServiceInit(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lcom/sec/android/iaft/IAFDService$IAFDBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/iaft/IAFDService$IAFDBinder;-><init>(Lcom/sec/android/iaft/IAFDService;)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDService;->mBinder:Lcom/sec/android/iaft/IAFDService$IAFDBinder;

    .line 50
    new-instance v0, Lcom/sec/android/iaft/IAFDServiceImpl;

    sget-object v1, Lcom/sec/android/iaft/IAFDService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/iaft/IAFDService;->mIAFDDiagnosis:Lcom/sec/android/iaft/IAFDDiagnosis;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/iaft/IAFDServiceImpl;-><init>(Landroid/content/Context;Lcom/sec/android/iaft/IAFDDiagnosis;)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDService;->mIAFDServiceImpl:Lcom/sec/android/iaft/IAFDServiceImpl;

    .line 51
    return-void
.end method

.method public whitelist onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "isAllow":Z
    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 59
    return v1

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 61
    .local v2, "bundle":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 62
    .local v3, "msg":Landroid/os/Message;
    if-eqz v2, :cond_2

    .line 63
    const/4 v4, -0x1

    const-string/jumbo v5, "pkgUserId"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 64
    .local v4, "appuid":I
    const-string v5, "checkSum"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "checksum":Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "commandType"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 72
    .local v6, "commandtype":I
    const/4 v0, 0x1

    .line 75
    if-nez v0, :cond_1

    return v1

    .line 77
    :cond_1
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 79
    :pswitch_0
    const/4 v7, 0x2

    iput v7, v3, Landroid/os/Message;->what:I

    .line 80
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 81
    iget-object v7, p0, Lcom/sec/android/iaft/IAFDService;->mIAFDServiceImpl:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-virtual {v7, v3}, Lcom/sec/android/iaft/IAFDServiceImpl;->IAFDServiceHandlerMessage(Landroid/os/Message;)V

    .line 82
    goto :goto_0

    .line 84
    :pswitch_1
    iput v1, v3, Landroid/os/Message;->what:I

    .line 85
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 86
    iget-object v7, p0, Lcom/sec/android/iaft/IAFDService;->mIAFDServiceImpl:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-virtual {v7, v3}, Lcom/sec/android/iaft/IAFDServiceImpl;->IAFDServiceHandlerMessage(Landroid/os/Message;)V

    .line 92
    .end local v4    # "appuid":I
    .end local v5    # "checksum":Ljava/lang/String;
    .end local v6    # "commandtype":I
    :cond_2
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 100
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
