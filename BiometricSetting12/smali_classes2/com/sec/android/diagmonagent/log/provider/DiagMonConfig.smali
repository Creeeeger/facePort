.class public Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
.super Ljava/lang/Object;
.source "DiagMonConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;
    }
.end annotation


# instance fields
.field public globalNetworkMode:Z

.field private isCustomConfig:Z

.field private mAgreeAsString:Ljava/lang/String;

.field private mAgreement:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceId:Ljava/lang/String;

.field public mIsDefaultNetwork:Z

.field private mServiceId:Ljava/lang/String;

.field private mServiceVer:Ljava/lang/String;

.field private mTrackingId:Ljava/lang/String;

.field private oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceVer:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mTrackingId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isCustomConfig:Z

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->globalNetworkMode:Z

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mIsDefaultNetwork:Z

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceVer:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;-><init>(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAgree()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getAgree()Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    return v0
.end method

.method public getAgreeAsString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getAgreeAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultNetworkMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->globalNetworkMode:Z

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getOldConfig()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceVer:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mTrackingId:Ljava/lang/String;

    return-object v0
.end method

.method protected isCustomConfiguration()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isCustomConfig:Z

    return v0
.end method

.method public isEnabledDefaultNetwork()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mIsDefaultNetwork:Z

    return v0
.end method

.method public setAgree(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 3

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    if-nez p1, :cond_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "You can\'t use agreement as null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->setAgree(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    const-string v2, "S"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    const-string v2, "D"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->isErrorLogAgreed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    :cond_4
    :goto_0
    return-object p0
.end method

.method protected setCustomConfigStatus(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isCustomConfig:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isCustomConfig:Z

    :goto_0
    return-void
.end method

.method public setDefaultNetwork(Z)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mIsDefaultNetwork:Z

    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->globalNetworkMode:Z

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultNetwork : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mIsDefaultNetwork:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "globalNetworkMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->globalNetworkMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 2

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mDeviceId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->setDeviceId(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setServiceId(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 2

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->setServiceId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->setAuthorityList(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setTrackingId(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 2

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mTrackingId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->setTrackingId(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
