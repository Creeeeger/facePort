.class public Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;


# static fields
.field private static final PREF_KEY:Ljava/lang/String; = "audio_sharing_stream_password"

.field private static final SHARED_PREF_KEY:Ljava/lang/String; = "default_password"

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "audio_sharing_settings"

.field private static final TAG:Ljava/lang/String; = "AudioSharingPasswordPreferenceController"


# instance fields
.field private final mAudioSharingPasswordValidator:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordValidator;

.field private final mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

.field private final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;


# direct methods
.method public static synthetic $r8$lambda$PvHC3XtFd96G0P28pXsLN6mMR7k(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->lambda$updatePreference$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$bATcc8mbngmRFyfgDeqdtMKBqFI(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->lambda$updatePreference$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dpwehufRV7LBf16BR3OCCpf9boc(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->lambda$onPreferenceDataChanged$0(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordValidator;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mAudioSharingPasswordValidator:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordValidator;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getDefaultPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "audio_sharing_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    const-string v1, "AudioSharingPasswordPreferenceController"

    if-nez p0, :cond_0

    const-string p0, "getDefaultPassword(): sharedPref is empty!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v2, "default_password"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "getDefaultPassword(): default password is empty!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method

.method private static isPublicBroadcast([B)Z
    .locals 0

    if-eqz p0, :cond_1

    array-length p0, p0

    if-nez p0, :cond_0

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

.method private lambda$onPreferenceDataChanged$0(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const-string v1, "AudioSharingPasswordPreferenceController"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isBroadcasting(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastCode:[B

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->isPublicBroadcast([B)Z

    move-result v0

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->getDefaultPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v0, p2, :cond_1

    const-string p0, "onPreferenceDataChanged() nothing changed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->persistDefaultPassword(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    new-array p1, p1, [B

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setBroadcastCode([BZ)V

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->updatePreference()V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v0, 0x798

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void

    :cond_3
    :goto_1
    const-string p0, "onPreferenceDataChanged() changing password when broadcasting or null!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$updatePreference$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private lambda$updatePreference$2()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastCode:[B

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->isPublicBroadcast([B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->getDefaultPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1404d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "********"

    :goto_1
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static persistDefaultPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->getDefaultPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "audio_sharing_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "AudioSharingPasswordPreferenceController"

    const-string p1, "persistDefaultPassword(): sharedPref is empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "default_password"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updatePreference()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;

    if-eqz p1, :cond_0

    iput-object p0, p1, Lcom/android/settings/widget/ValidatedEditTextPreference;->mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsPassword:Z

    const v0, 0x7f0d007a

    iput v0, p1, Landroidx/preference/DialogPreference;->mDialogLayoutResId:I

    iput-object p0, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;->mOnDialogEventListener:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->updatePreference()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    const/4 p0, 0x3

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "audio_sharing_stream_password"

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

.method public isTextValid(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mAudioSharingPasswordValidator:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordValidator;

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordValidator;->isTextValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onBindDialogView()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isBroadcasting(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;->mEditText:Landroid/widget/EditText;

    const-string v3, "AudioSharingPasswordPreference"

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;->mDialogMessage:Landroid/view/View;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v1, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;->mEditable:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;->setEditTextEnabled(Z)V

    iget-object v2, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;->mDialogMessage:Landroid/view/View;

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v0, "setEditable() : Invalid layout"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastCode:[B

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;->isPublicBroadcast([B)Z

    move-result v0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-nez p0, :cond_4

    const-string p0, "setChecked() : Invalid layout"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onPreferenceDataChanged(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPasswordPreferenceController;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
