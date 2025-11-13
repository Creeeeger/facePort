.class public Landroid/sec/enterprise/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

.field private static final blacklist EDM_CLASS_NAME_NEW:Ljava/lang/String; = "com.samsung.android.knox.EnterpriseDeviceManager"

.field public static final blacklist ENTERPRISE_PROXY_SERVICE:Ljava/lang/String; = "edm_proxy"

.field public static final blacklist EXTRA_USER_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

.field private static final blacklist TAG:Ljava/lang/String; = "EnterpriseDeviceManager"

.field private static blacklist mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

.field private static blacklist mInstanceCreated:Z


# instance fields
.field private volatile blacklist mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

.field private volatile blacklist mApplicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

.field private volatile blacklist mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

.field private volatile blacklist mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

.field private volatile blacklist mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

.field private volatile blacklist mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

.field private volatile blacklist mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

.field private volatile blacklist mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

.field private volatile blacklist mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

.field private volatile blacklist mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

.field private volatile blacklist mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

.field private volatile blacklist mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private volatile blacklist mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

.field private volatile blacklist mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;
    .locals 2

    const-class v0, Landroid/sec/enterprise/EnterpriseDeviceManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/sec/enterprise/EnterpriseDeviceManager;

    invoke-direct {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;-><init>()V

    sput-object v1, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static blacklist getService()Landroid/sec/enterprise/IEDMProxy;
    .locals 1

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/ApplicationPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/ApplicationPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getApplicationRestrictionsManager()Landroid/sec/enterprise/ApplicationRestrictionsManager;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/ApplicationRestrictionsManager;

    invoke-direct {v1}, Landroid/sec/enterprise/ApplicationRestrictionsManager;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getAuditPolicy()Landroid/sec/enterprise/auditlog/AuditLog;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/auditlog/AuditLog;

    invoke-direct {v1}, Landroid/sec/enterprise/auditlog/AuditLog;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/BluetoothPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/BluetoothPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getBrowserPolicy()Landroid/sec/enterprise/BrowserPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/BrowserPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/BrowserPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getDeviceAccountPolicy()Landroid/sec/enterprise/DeviceAccountPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/DeviceAccountPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/DeviceAccountPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/DeviceInventory;

    invoke-direct {v1}, Landroid/sec/enterprise/DeviceInventory;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    nop

    return-object v0

    :catch_0
    move-exception v1

    return-object v0
.end method

.method public blacklist getKioskMode()Landroid/sec/enterprise/kioskmode/KioskMode;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/kioskmode/KioskMode;

    invoke-direct {v1}, Landroid/sec/enterprise/kioskmode/KioskMode;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/PasswordPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/PasswordPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/RestrictionPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/RestrictionPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/RoamingPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/RoamingPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/WifiPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/WifiPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
