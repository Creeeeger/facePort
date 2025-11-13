.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FirstCallPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT_DD_MM_YYYY_SLASH:I = 0x2

.field private static final DATE_FORMAT_YYYY_MM_DD_DOT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "FirstCallPreferenceController"

.field private static final NOT_SUPPORTED:I = -0x1

.field private static final OEM_FUNCTION_ID_HIDDENMENU:I = 0x51

.field private static final OEM_HIDDEN_GET_ACTIVATIONDATE:I = 0xd


# instance fields
.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mPhoneFirstCallHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$mupdateFirstCallDate(Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->updateFirstCallDate(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetFirstCallDateValue([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->getFirstCallDateValue([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mPhoneFirstCallHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;

    return-void
.end method

.method private static getFirstCallDateValue([B)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x1

    .line 148
    aget-byte v3, p0, v2

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 149
    aget-byte v3, p0, v4

    aput-byte v3, v1, v2

    move v2, v4

    :goto_0
    if-ge v4, v0, :cond_0

    shl-int/lit8 v2, v2, 0x8

    .line 152
    aget-byte v3, v1, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    :cond_0
    aget-byte v0, p0, v0

    const/4 v1, 0x3

    .line 157
    aget-byte p0, p0, v1

    .line 161
    invoke-static {v2, v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->getFormatedDate(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFormatedDate(III)Ljava/lang/String;
    .locals 5

    .line 168
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigFirstCallDateType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 173
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "%02d/%02d/%04d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 171
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "%04d.%02d.%02d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setFirstCallstatus()V
    .locals 7

    const-string v0, "IOException in getOemData!!!"

    const-string v1, "FirstCallPreferenceController"

    .line 95
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x4

    const/16 v5, 0x51

    const/16 v6, 0xd

    .line 100
    :try_start_0
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 101
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 102
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 104
    :try_start_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 109
    :catch_1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_1
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mPhoneFirstCallHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;

    .line 114
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 115
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mPhoneFirstCallHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;

    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    .line 107
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 109
    :catch_2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_3
    throw p0
.end method

.method private updateFirstCallDate(Ljava/lang/String;)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 137
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigFirstCallDateType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 138
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStop()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 126
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->status_unavailable:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->setFirstCallstatus()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
