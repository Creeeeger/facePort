.class public Lcom/samsung/android/knox/zt/service/KnoxZtService;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/service/KnoxZtService$ZtfwReceiver;,
        Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;,
        Lcom/samsung/android/knox/zt/service/KnoxZtService$Chunk;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME_KNOXZT:Ljava/lang/String; = "knoxzt"

.field public static final TAG:Ljava/lang/String; = "KnoxZtService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mKeyAttestationHelper:Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

.field public final mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;",
            "Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;",
            ">;"
        }
    .end annotation
.end field

.field public mRegisteredMonitoringListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mRegisteredMonitoringListenerSet:Ljava/util/Set;

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mKeyAttestationHelper:Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

    new-instance v0, Lcom/samsung/android/knox/zt/service/KnoxZtService$ZtfwReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService$ZtfwReceiver;-><init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.knox.zt.devicetrust.monitor.action.ZERO_TRUST_FRAMEWORK_STARTED"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public ackSignal([J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> ackSignal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->ackSignal([J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "<= ackSignal"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public attestKey(Ljava/lang/String;[B)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> attestKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mKeyAttestationHelper:Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->attestKey(Ljava/lang/String;[BZ)Z

    move-result p0

    const-string p1, "<= attestKey"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getAppIdStatus(Ljava/security/cert/X509Certificate;Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> getAppIdStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getAppIdStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;[Ljava/lang/String;)I

    move-result p0

    const-string p1, "<= getAppIdStatus"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getCertificate(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)Ljava/security/cert/Certificate;
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public final getCertificates([Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)[Ljava/security/cert/Certificate;
    .locals 2

    array-length p0, p1

    new-array p0, p0, [Ljava/security/cert/Certificate;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getChallenge(Ljava/security/cert/X509Certificate;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> getChallenge"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {p0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getChallenge(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)[B

    move-result-object p0

    const-string p1, "<= getChallenge"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getDeviceId(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> getDeviceId"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {p0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getDeviceId(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "<= getDeviceId"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getDeviceIdStatus(Ljava/security/cert/X509Certificate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> getDeviceIdStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {p0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getDeviceIdStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    move-result p0

    const-string p1, "<= getDeviceIdStatus"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getInodeNumber(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    new-array v0, p0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string/jumbo v1, "unix:ino"

    new-array p0, p0, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1, p0}, Ljava/nio/file/Files;->getAttribute(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get ino for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getIntegrityStatus(Ljava/security/cert/X509Certificate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> getIntegrityStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {p0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getIntegrityStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    move-result p0

    const-string p1, "<= getIntegrityStatus"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getMonitoringSnapshot(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> getMonitoringSnapshot"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getMonitoringSnapshot(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "<= getMonitoringSnapshot"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getOrigin(Ljava/security/cert/X509Certificate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> getOrigin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {p0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getOrigin(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    move-result p0

    const-string p1, "<= getOrigin"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;
    .locals 3

    const-string p0, "Succeeded to get pfd : "

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Only normal file is supported for IPC"

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p2, 0x10000000

    invoke-static {v1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    sget-object p2, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get pfd : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public final getParcelableCertificate(Ljava/security/cert/Certificate;)Lcom/samsung/android/knox/zt/service/ParcelableCertificate;
    .locals 0

    new-instance p0, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    return-object p0
.end method

.method public final getParcelableCertificates([Ljava/security/cert/Certificate;)[Lcom/samsung/android/knox/zt/service/ParcelableCertificate;
    .locals 3

    array-length p0, p1

    new-array p0, p0, [Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    new-instance v2, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-direct {v2, v1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    aput-object v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final getParcelableProfile(Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;)Lcom/samsung/android/knox/zt/service/ParcelableProfile;
    .locals 20

    new-instance v19, Lcom/samsung/android/knox/zt/service/ParcelableProfile;

    move-object/from16 v0, v19

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getRootCA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getProvisionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getKeyProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getKeyOwner()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getKeyAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSubject()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getServerHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getServerPort()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getServerPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSubjectAltName()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getKeyExtendedPurposes()Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getChallengePassword()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getClientIdentifierType()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getClientIdentifiers()Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSystemKeyType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSystemKeyPurposes()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSystemKeySize()I

    move-result v18

    invoke-direct/range {v0 .. v18}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;II)V

    return-object v19
.end method

.method public getRootOfTrustStatus(Ljava/security/cert/X509Certificate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> getRootOfTrustStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {p0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getRootOfTrustStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    move-result p0

    const-string p1, "<= getRootOfTrustStatus"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getSecurityLevel(Ljava/security/cert/X509Certificate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> getSecurityLevel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {p0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getSecurityLevel(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    move-result p0

    const-string p1, "<= getSecurityLevel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    :try_start_0
    const-string p0, "android.os.ServiceManager"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getService"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "knoxzt"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "failed to find knoxzt service"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> getVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getVersion()Ljava/lang/String;

    move-result-object p0

    const-string v1, "<= getVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final onKnoxZtFrameworkStarted()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onKnoxZtFrameworkStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->restartTracingIfNecessary()V

    return-void
.end method

.method public provisionCert(Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> provisionCert"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getParcelableProfile(Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;)Lcom/samsung/android/knox/zt/service/ParcelableProfile;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;-><init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;)V

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->provisionCert(Lcom/samsung/android/knox/zt/service/ParcelableProfile;Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener;)I

    move-result p0

    const-string p1, "<= provisionCert"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public queryAllSignals(Lcom/samsung/android/knox/zt/devicetrust/monitor/IChunkedStringCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> queryAllSignals"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/zt/service/KnoxZtService$5;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService$5;-><init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/monitor/IChunkedStringCallback;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->queryAllSignals(Lcom/samsung/android/knox/zt/service/IChunkedAidlInterface;)I

    move-result p0

    const-string p1, "<= queryAllSignals"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public querySignals(Ljava/lang/String;Lcom/samsung/android/knox/zt/devicetrust/monitor/IChunkedStringCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> querySignals"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/zt/service/KnoxZtService$6;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/knox/zt/service/KnoxZtService$6;-><init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/monitor/IChunkedStringCallback;)V

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->querySignals(Ljava/lang/String;Lcom/samsung/android/knox/zt/service/IChunkedAidlInterface;)I

    move-result p0

    const-string p1, "<= querySignals"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final restartTracingIfNecessary()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mRegisteredMonitoringListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mRegisteredMonitoringListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;

    iget v2, v1, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->type:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->supportMultipleListeners(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->options:Landroid/os/Bundle;

    iget-object v1, v1, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    iget-object v4, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    sget-object v4, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restart tracing - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v3, v1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->startTracing(ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string/jumbo v1, "restartTracing failed : "

    invoke-static {v1, p0}, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public startMonitoringDomains(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> startMonitoringDomains"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/zt/service/KnoxZtService$3;

    invoke-direct {v2, p0, p3}, Lcom/samsung/android/knox/zt/service/KnoxZtService$3;-><init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)V

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->startMonitoringDomains(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    move-result p0

    const-string p1, "<= startMonitoringDomains"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public startMonitoringFiles(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> startMonitoringFiles"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "path"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, "pfd"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getInodeNumber(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "ino"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/knox/zt/service/KnoxZtService$2;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/knox/zt/service/KnoxZtService$2;-><init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)V

    invoke-interface {p2, p1, v0, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->startMonitoringFiles(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    move-result p0

    sget-object p1, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string p2, "<= startMonitoringFiles"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public startMonitoringSignals(Lcom/samsung/android/knox/zt/devicetrust/monitor/SignalMonitoringListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> startMonitoringSignals"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->startTracing(ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I

    move-result p0

    const-string p1, "<= startMonitoringSignals"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public declared-synchronized startTracing(ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> startTracing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->supportMultipleListeners(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p1, "listener already presents"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/samsung/android/knox/zt/service/KnoxZtService$4;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/knox/zt/service/KnoxZtService$4;-><init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->startTracing(ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->supportMultipleListeners(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;-><init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)V

    iget-object p1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mRegisteredMonitoringListenerSet:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p1, "<= startTracing"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public stopMonitoringDomains()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> stopMonitoringDomains"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->stopMonitoringDomains()I

    move-result p0

    const-string v1, "<= stopMonitoringDomains"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public stopMonitoringFiles()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> stopMonitoringFiles"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->stopMonitoringFiles()I

    move-result p0

    const-string v1, "<= stopMonitoringFiles"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public stopMonitoringSignals(Lcom/samsung/android/knox/zt/devicetrust/monitor/SignalMonitoringListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> stopMonitoringSignals"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x9

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->stopTracing(ILcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I

    move-result p0

    const-string p1, "<= stopMonitoringSignals"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public declared-synchronized stopTracing(ILcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v1, "=> stopTracing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->supportMultipleListeners(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "listener doesn\'t present"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->supportMultipleListeners(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;

    iget-object v1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mMonitoringListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mRegisteredMonitoringListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mRegisteredMonitoringListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;

    iget v3, v2, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->type:I

    if-ne v3, p1, :cond_2

    iget-object v3, v2, Lcom/samsung/android/knox/zt/service/KnoxZtService$RegisteredMonitoringListener;->listener:Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mRegisteredMonitoringListenerSet:Ljava/util/Set;

    invoke-interface {p2, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getService()Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->stopTracing(ILcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    move-result p1

    sget-object p2, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string v0, "<= stopTracing"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final supportMultipleListeners(I)Z
    .locals 0

    const/16 p0, 0x8

    if-eq p1, p0, :cond_1

    const/16 p0, 0x9

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
