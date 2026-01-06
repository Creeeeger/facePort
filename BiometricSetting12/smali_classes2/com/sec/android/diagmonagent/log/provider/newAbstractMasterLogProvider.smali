.class public abstract Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;
.super Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;
.source "newAbstractMasterLogProvider.java"


# static fields
.field public static final AGREED:Ljava/lang/String; = "agreed"

.field public static final DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final DEVICE_INFO:Ljava/lang/String; = "deviceInfo"

.field public static final NONCE:Ljava/lang/String; = "nonce"

.field public static final PUSH_REGISTERED:Ljava/lang/String; = "pushRegistered"

.field public static final REGISTERED:Ljava/lang/String; = "registered"

.field public static final SERVICE_NAME:Ljava/lang/String; = "serviceName"

.field public static final SUPPORT_PUSH:Ljava/lang/String; = "supportPush"

.field public static final TRY_REGISTERING:Ljava/lang/String; = "tryRegistering"

.field public static final UPLOAD_WIFIONLY:Ljava/lang/String; = "uploadWifionly"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;-><init>()V

    return-void
.end method

.method private enforceAgreement()V
    .locals 0

    return-void
.end method

.method private makeAuthorityListBundle(Ljava/util/List;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->enforceSelfOrSystem()V

    const-string v0, "get"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "registered"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->enforceAgreement()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .locals 7

    invoke-super {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->onCreate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "registered"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "pushRegistered"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v1, "tryRegistering"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v1, "nonce"

    const-string v3, ""

    invoke-direct {p0, v1, v3}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setAuthorityList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeAuthorityListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "authorityList"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setServiceName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "serviceName"

    invoke-direct {p0, v3, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "deviceId"

    invoke-direct {p0, v3, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setDeviceInfo()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "deviceInfo"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setUploadWiFiOnly()Z

    move-result v1

    const-string v3, "uploadWifionly"

    invoke-direct {p0, v3, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setSupportPush()Z

    move-result v1

    const-string v3, "supportPush"

    invoke-direct {p0, v3, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setLogList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeLogListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v4, "logList"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setPlainLogList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeLogListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v6, "plainLogList"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return v2
.end method

.method protected abstract setAuthorityList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V
    .locals 6

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getOldConfig()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getAuthorityList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeAuthorityListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "authorityList"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getOldConfig()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getServiceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceName"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getAgree()Z

    move-result v1

    const-string v2, "agreed"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getOldConfig()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getLogList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeLogListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v3, "logList"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setPlainLogList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeLogListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v5, "plainLogList"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected setDeviceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->instance:Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->getTWID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setDeviceInfo()Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->instance:Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->getDeviceInfoBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected abstract setServiceName()Ljava/lang/String;
.end method

.method protected setSupportPush()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected setUploadWiFiOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
