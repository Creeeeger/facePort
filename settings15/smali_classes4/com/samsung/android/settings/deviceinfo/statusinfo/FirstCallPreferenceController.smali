.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FirstCallPreferenceController"

.field private static final OEM_FUNCTION_ID_HIDDENMENU:I = 0x51

.field private static final OEM_HIDDEN_GET_ACTIVATIONDATE:I = 0xd


# instance fields
.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mPhoneFirstCallHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateFirstCallDate(Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->updateFirstCallDate(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetFirstCallDateValue([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->getFirstCallDateValue([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mPhoneFirstCallHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;

    return-void
.end method

.method private static getFirstCallDateValue([B)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    const/4 v2, 0x0

    aget-byte v3, p0, v2

    const/4 v4, 0x2

    new-array v5, v4, [B

    aput-byte v1, v5, v2

    aput-byte v3, v5, v0

    move v1, v2

    :goto_0
    if-ge v2, v4, :cond_0

    shl-int/lit8 v1, v1, 0x8

    aget-byte v3, v5, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    aget-byte v0, p0, v4

    const/4 v2, 0x3

    aget-byte p0, p0, v2

    invoke-static {v1, v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->getFormatedDate(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFormatedDate(III)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%04d.%02d.%02d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d/%02d/%04d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private setFirstCallstatus()V
    .locals 6

    const-string v0, "IOException in getOemData!!!"

    const-string v1, "FirstCallPreferenceController"

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x51

    const/16 v5, 0xd

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;->mStatus:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mPhoneFirstCallHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;

    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mPhoneFirstCallHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    throw p0
.end method

.method private updateFirstCallDate(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f142d54

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->setFirstCallstatus()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
