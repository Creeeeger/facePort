.class public final Lcom/android/settings/development/bluetooth/BluetoothCodecListPreferenceController;
.super Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BtExtCodecCtr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/development/bluetooth/BluetoothCodecListPreferenceController;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "bluetooth_audio_codec_settings_list"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->mListPreference:Landroidx/preference/ListPreference;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_audio_codec_settings_list"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    sget-boolean p0, Lcom/android/settings/development/bluetooth/BluetoothCodecListPreferenceController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "BtExtCodecCtr"

    const-string v0, "isAvailable: false"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothListPreferenceController;->setupDefaultListPreference()V

    return-void
.end method
