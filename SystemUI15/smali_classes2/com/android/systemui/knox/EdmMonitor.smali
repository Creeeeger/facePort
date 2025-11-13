.class public final Lcom/android/systemui/knox/EdmMonitor;
.super Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

.field public mAirplaneModeAllowed:Z

.field public mBluetoothAllowed:Z

.field public mCellularDataAllowed:Z

.field public mEnableAdminLock:Z

.field public mGPSStateChangeAllowed:Z

.field public mIsCameraDisabledByMdm:Z

.field public mIsDeviceDisableForMaxFailedAttempt:Z

.field public mIsFaceRecognitionAllowedEvenCameraBlocked:Z

.field public mIsLockscreenInvisibleOverlayConfigured:Z

.field public mIsLockscreenWallpaperConfigured:Z

.field public mIsMDMKioskMode:Z

.field public mIsNavigationBarHidden:Z

.field public mIsProfileDisableForMaxFailedAttempt:Z

.field public mIsStatusBarHidden:Z

.field public mLicenseExpired:Z

.field public final mLocationProviderAllowed:Ljava/util/HashMap;

.field public mLockDelay:I

.field public mLockedIccIdList:[Ljava/lang/String;

.field public mMaxNumFailedAttemptForDisable:I

.field public mMaxNumFailedAttemptForProfileDisable:I

.field public mMultiFactorAuthEnabled:Z

.field public final mNFCAllowed:Z

.field public mNFCStateChangeAllowed:Z

.field public mPasswordVisibilityEnabled:Z

.field public mPkgNameForMaxAttemptDisable:Ljava/lang/String;

.field public mPwdChangeRequest:I

.field public mRoamingAllowed:Z

.field public mSettingsChangesAllowed:Z

.field public mStatusBarExpandAllowed:Z

.field public final mUserManager:Landroid/os/UserManager;

.field public mWifiAllowed:Z

.field public mWifiStateChangeAllowed:Z

.field public mWifiTetheringAllowed:Z

.field public mWipeExcludeExternalStorage:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 2

    invoke-direct {p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsMDMKioskMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mWipeExcludeExternalStorage:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsProfileDisableForMaxFailedAttempt:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mStatusBarExpandAllowed:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mAirplaneModeAllowed:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mCellularDataAllowed:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCAllowed:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiTetheringAllowed:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mBluetoothAllowed:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCStateChangeAllowed:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiStateChangeAllowed:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiAllowed:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mGPSStateChangeAllowed:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMultiFactorAuthEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mPasswordVisibilityEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsCameraDisabledByMdm:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    iput v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mPwdChangeRequest:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockDelay:I

    iput v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    iput v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mPkgNameForMaxAttemptDisable:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p2, "EdmMonitor state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "-mIsStatusBarHidden="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mIsNavigationBarHidden="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mIsMDMKioskMode="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsMDMKioskMode:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mWipeExcludeExternalStorage="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mWipeExcludeExternalStorage:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mLockDelay="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockDelay:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "-mMaxNumFailedAttemptForDisable="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "-mPkgNameForMaxFailedAttemptDisable="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mPkgNameForMaxAttemptDisable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "-mIsDeviceDisableForMaxFailedAttempt="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mPwdChangeRequest="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mPwdChangeRequest:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "-mSettingsChangesAllowed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mStatusBarExpandAllowed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mStatusBarExpandAllowed:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mAirplaneModeAllowed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mAirplaneModeAllowed:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mCellularDataAllowed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mCellularDataAllowed:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mNFCAllowed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCAllowed:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mWifiTetheringAllowed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiTetheringAllowed:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mBluetoothAllowed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mBluetoothAllowed:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mNFCStateChangeAllowed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCStateChangeAllowed:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mRoamingAllowed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mWifiStateChangeAllowed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiStateChangeAllowed:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mWifiAllowed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiAllowed:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mLocationProviderAllowed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "-mGPSStateChangeAllowed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mGPSStateChangeAllowed:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mIsLockscreenInvisibleOverlayConfigured="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mIsLockscreenWallpaperConfigured="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mMultiFactorAuthEnabled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mMultiFactorAuthEnabled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mIsCameraDisabledByMdm="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsCameraDisabledByMdm:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mIsFaceRecognitionAllowedEvenCameraBlocked="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-object p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p2, "-mLockedIccIdList="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p0, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final excludeExternalStorageForFailedPasswordsWipe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWipeExcludeExternalStorage:Z

    return-void
.end method

.method public final getCurrentFailedAttempts()I
    .locals 7

    const-string v0, "content://com.sec.knox.provider/PasswordPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string p0, "getCurrentFailedPasswordAttempts"

    move-object v4, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    :catch_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setAdminLock(ZZ)V
    .locals 3

    const-string/jumbo v0, "setAdminLock enabled:"

    const-string v1, "  licenseExpired:"

    const-string v2, "EdmMonitor"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    if-eq v0, p2, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    iput-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 p2, 0x13a2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public final setAirplaneModeAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mAirplaneModeAllowed:Z

    return-void
.end method

.method public final setApplicationNameControlEnabled(Z)V
    .locals 0

    return-void
.end method

.method public final setBluetoothAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mBluetoothAllowed:Z

    return-void
.end method

.method public final setCameraAllowed(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setCameraAllowed( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdmMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsCameraDisabledByMdm:Z

    return-void
.end method

.method public final setCellularDataAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mCellularDataAllowed:Z

    return-void
.end method

.method public final setFaceRecognitionEvenCameraBlockedAllowed(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setFaceRecognitionEvenCameraBlockedAllowed( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdmMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    return-void
.end method

.method public final setGPSStateChangeAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mGPSStateChangeAllowed:Z

    return-void
.end method

.method public final setKioskModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsMDMKioskMode:Z

    return-void
.end method

.method public final setLocationProviderAllowed(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setLockedIccIds([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    return-void
.end method

.method public final setLockscreenInvisibleOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    return-void
.end method

.method public final setLockscreenWallpaper(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v0, 0x13a0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v0, 0x13a1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final setMaximumFailedPasswordsForDisable(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    iput-object p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mPkgNameForMaxAttemptDisable:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    return-void
.end method

.method public final setMaximumFailedPasswordsForProfileDisable(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->updateFailedUnlockAttemptForProfileDisabled()V

    return-void
.end method

.method public final setMultifactorAuthEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMultifactorAuthEnabled( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdmMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mMultiFactorAuthEnabled:Z

    return-void
.end method

.method public final setNFCStateChangeAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCStateChangeAllowed:Z

    return-void
.end method

.method public final setNavigationBarHidden(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v0, 0x139c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final setPasswordLockDelay(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockDelay:I

    return-void
.end method

.method public final setPasswordVisibilityEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPasswordVisibilityEnabled( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdmMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mPasswordVisibilityEnabled:Z

    return-void
.end method

.method public final setPwdChangeRequested(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mPwdChangeRequest:I

    return-void
.end method

.method public final setRoamingAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    return-void
.end method

.method public final setSettingsChangeAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    return-void
.end method

.method public final setStatusBarExpansionAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mStatusBarExpandAllowed:Z

    return-void
.end method

.method public final setStatusBarHidden(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v0, 0x139b

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final setWifiAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiAllowed:Z

    return-void
.end method

.method public final setWifiStateChangeAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiStateChangeAllowed:Z

    return-void
.end method

.method public final setWifiTetheringAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiTetheringAllowed:Z

    return-void
.end method

.method public final updateFailedUnlockAttemptForDeviceDisabled()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "EdmMonitor"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->getCurrentFailedAttempts()I

    move-result v0

    iget v4, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    if-lt v0, v4, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportFailedUnlockAttempt : maxNumFailedAttemptForDisable="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , curNumFailedAttempts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isDeviceDisabledForMaxFailedAttempt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    invoke-static {v0, v1, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v1, 0x139e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_2
    const-string p0, "MDM is not enabled..."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public final updateFailedUnlockAttemptForProfileDisabled()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    const-string v1, "EdmMonitor"

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->getCurrentFailedAttempts()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    if-lt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsProfileDisableForMaxFailedAttempt:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reportFailedUnlockAttempt : maxNumFailedAttemptForProfileDisable="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , curNumFailedAttempts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isProfileDisableForMaxFailedAttempt="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsProfileDisableForMaxFailedAttempt:Z

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsProfileDisableForMaxFailedAttempt:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v1, 0x13a5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_1
    const-string p0, "MDM is not enabled..."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
