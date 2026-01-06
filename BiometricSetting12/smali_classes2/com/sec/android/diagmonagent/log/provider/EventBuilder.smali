.class public Lcom/sec/android/diagmonagent/log/provider/EventBuilder;
.super Ljava/lang/Object;
.source "EventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/String;

.field private mErrorCode:Ljava/lang/String;

.field private mExtData:Lorg/json/JSONObject;

.field public mIsCalledNetworkMode:Z

.field private mLogPath:Ljava/lang/String;

.field private mNetworkMode:Z

.field private mRelayClientType:Ljava/lang/String;

.field private mRelayClientVer:Ljava/lang/String;

.field private mServiceDefinedKey:Ljava/lang/String;

.field private mZipFile:Ljava/lang/String;

.field private oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mLogPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mServiceDefinedKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mErrorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mRelayClientVer:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mRelayClientType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mZipFile:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mNetworkMode:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mIsCalledNetworkMode:Z

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    new-instance v0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;-><init>(Lcom/sec/android/diagmonagent/log/provider/EventBuilder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    :cond_0
    return-void
.end method

.method private isConfigured()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getConfiguration()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->getResultCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExtData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mExtData:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mLogPath:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->getWifiOnly()Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mNetworkMode:Z

    return v0
.end method

.method public getOldEventBuilder()Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRelayClientType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->getRelayClient()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mRelayClientType:Ljava/lang/String;

    return-object v0
.end method

.method public getRelayClientVer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->getRelayClientVer()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mRelayClientVer:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceDefinedKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->getEventId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mServiceDefinedKey:Ljava/lang/String;

    return-object v0
.end method

.method public getZipPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mZipFile:Ljava/lang/String;

    return-object v0
.end method

.method public makeLogList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->setDescription(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public setErrorCode(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mErrorCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->setResultCode(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public setExtData(Lorg/json/JSONObject;)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mExtData:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setLogPath(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mLogPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mLogPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->isValidLogPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getConfiguration()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getOldConfig()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mLogPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->makeLogList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->setLogList(Ljava/util/List;)V

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getElp()Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getConfiguration()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;->setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :cond_3
    :goto_1
    nop

    :goto_2
    return-object p0
.end method

.method public setNetworkMode(Z)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mIsCalledNetworkMode:Z

    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mNetworkMode:Z

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->setWifiOnly(Z)V

    :cond_1
    return-object p0
.end method

.method public setRelayClientType(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mRelayClientType:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->setRelayClient(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public setRelayClientVer(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mRelayClientVer:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->setRelayClientVer(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public setServiceDefinedKey(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mServiceDefinedKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->setEventId(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public setZipFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mZipFile:Ljava/lang/String;

    return-void
.end method
