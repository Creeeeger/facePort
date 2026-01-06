.class public abstract Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;
.super Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;
.source "AbstractMasterLogProvider.java"


# static fields
.field public static final AGREED:Ljava/lang/String; = "agreed"

.field public static final DEFAULT_MO:Ljava/lang/String; = "defaultMO"

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

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;-><init>()V

    return-void
.end method

.method private enforceAgreement()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->isAgreed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission Denial"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->enforceSelfOrSystem()V

    const-string v0, "get"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "agreed"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->isAgreed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "registered"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->enforceAgreement()V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected abstract isAgreed()Z
.end method

.method public onCreate()Z
    .locals 4

    invoke-super {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->onCreate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "registered"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "pushRegistered"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v1, "tryRegistering"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v1, "nonce"

    const-string v3, ""

    invoke-direct {p0, v1, v3}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->setAuthorityList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeAuthorityListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "authorityList"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->setServiceName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "serviceName"

    invoke-direct {p0, v3, v1}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->setDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "deviceId"

    invoke-direct {p0, v3, v1}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->setDefaultMO()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "defaultMO"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->setDeviceInfo()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "deviceInfo"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->setUploadWiFiOnly()Z

    move-result v1

    const-string v3, "uploadWifionly"

    invoke-direct {p0, v3, v1}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->setSupportPush()Z

    move-result v1

    const-string v3, "supportPush"

    invoke-direct {p0, v3, v1}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

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

.method protected abstract setDefaultMO()Landroid/os/Bundle;
.end method

.method protected setDeviceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/v1/PackageInformation;->instance:Lcom/sec/android/diagmonagent/log/provider/v1/PackageInformation;

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/v1/PackageInformation;->getTWID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setDeviceInfo()Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/v1/PackageInformation;->instance:Lcom/sec/android/diagmonagent/log/provider/v1/PackageInformation;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/v1/PackageInformation;->getDeviceInfoBundle(Landroid/content/Context;)Landroid/os/Bundle;

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
