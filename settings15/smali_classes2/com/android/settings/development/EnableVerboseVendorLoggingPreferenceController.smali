.class public final Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field public static final DBG:Z

.field public static final DUMP_STATE_AIDL_SERVICE_NAME:Ljava/lang/String;


# instance fields
.field public mDumpstateHalVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EnableVerboseVendorLoggingPreferenceController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/dumpstate/IDumpstateDevice;->DESCRIPTOR:Ljava/lang/String;

    const-string v2, "/default"

    invoke-static {v0, v1, v2}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DUMP_STATE_AIDL_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDumpstateDeviceAidlService()Landroid/hardware/dumpstate/IDumpstateDevice;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DUMP_STATE_AIDL_SERVICE_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    sget v2, Landroid/hardware/dumpstate/IDumpstateDevice$Stub;->$r8$clinit:I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Landroid/hardware/dumpstate/IDumpstateDevice;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/hardware/dumpstate/IDumpstateDevice;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/hardware/dumpstate/IDumpstateDevice;

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/hardware/dumpstate/IDumpstateDevice$Stub$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Landroid/hardware/dumpstate/IDumpstateDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get AIDL service fail: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnableVerboseVendorLoggingPreferenceController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    :cond_3
    return-object v0
.end method

.method public getDumpstateDeviceService()Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;
    .locals 5

    const-string v0, "EnableVerboseVendorLoggingPreferenceController"

    sget-boolean v1, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice$Proxy;->getService()Landroid/hardware/dumpstate/V1_1/IDumpstateDevice$Proxy;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    if-eqz v1, :cond_0

    const-string v4, "Get HIDL v1.1 service fail: "

    invoke-static {v4, v3, v0}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    :try_start_1
    invoke-static {}, Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;->getService()Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    if-eqz v1, :cond_1

    const-string v1, "Get HIDL v1.0 service fail: "

    invoke-static {v1, v3, v0}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    :cond_2
    return-object v2
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enable_verbose_vendor_logging"

    return-object p0
.end method

.method public getVerboseLoggingEnabled()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceAidlService()Landroid/hardware/dumpstate/IDumpstateDevice;

    move-result-object v0

    const-string v1, "EnableVerboseVendorLoggingPreferenceController"

    sget-boolean v2, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz v0, :cond_0

    :try_start_0
    check-cast v0, Landroid/hardware/dumpstate/IDumpstateDevice$Stub$Proxy;

    invoke-virtual {v0}, Landroid/hardware/dumpstate/IDumpstateDevice$Stub$Proxy;->getVerboseLoggingEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "aidlService.getVerboseLoggingEnabled fail: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceService()Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    const/4 v4, 0x1

    if-ge p0, v4, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    check-cast v0, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice$Proxy;

    invoke-virtual {v0}, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice$Proxy;->getVerboseLoggingEnabled()Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    if-eqz v2, :cond_2

    const-string v0, "HIDL v1.1 getVerboseLoggingEnabled fail: "

    invoke-static {v0, p0, v1}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    return v3

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    const-string p0, "getVerboseLoggingEnabled not supported."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v3
.end method

.method public final isAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->isIDumpstateDeviceAidlServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->isIDumpstateDeviceV1_1ServiceAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public isIDumpstateDeviceAidlServiceAvailable()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceAidlService()Landroid/hardware/dumpstate/IDumpstateDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIDumpstateDeviceV1_1ServiceAvailable()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceService()Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;

    move-result-object v0

    if-nez v0, :cond_0

    sget-boolean v1, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EnableVerboseVendorLoggingPreferenceController"

    const-string v2, "IDumpstateDevice v1.1 service is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onDeveloperOptionsSwitchDisabled()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    new-instance v0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/TwoStatePreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance p2, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;ZI)V

    invoke-static {p2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 p0, 0x1

    return p0
.end method

.method public setVerboseLoggingEnabled(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceAidlService()Landroid/hardware/dumpstate/IDumpstateDevice;

    move-result-object v0

    const-string v1, "EnableVerboseVendorLoggingPreferenceController"

    sget-boolean v2, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->DBG:Z

    if-eqz v0, :cond_0

    :try_start_0
    check-cast v0, Landroid/hardware/dumpstate/IDumpstateDevice$Stub$Proxy;

    invoke-virtual {v0, p1}, Landroid/hardware/dumpstate/IDumpstateDevice$Stub$Proxy;->setVerboseLoggingEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "aidlService.setVerboseLoggingEnabled fail: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->getDumpstateDeviceService()Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;->mDumpstateHalVersion:I

    const/4 v3, 0x1

    if-ge p0, v3, :cond_1

    goto :goto_2

    :cond_1
    :try_start_1
    check-cast v0, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice$Proxy;

    invoke-virtual {v0, p1}, Landroid/hardware/dumpstate/V1_1/IDumpstateDevice$Proxy;->setVerboseLoggingEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    if-eqz v2, :cond_2

    const-string p1, "HIDL v1.1 setVerboseLoggingEnabled fail: "

    invoke-static {p1, p0, v1}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    const-string p0, "setVerboseLoggingEnabled not supported."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    new-instance p1, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
