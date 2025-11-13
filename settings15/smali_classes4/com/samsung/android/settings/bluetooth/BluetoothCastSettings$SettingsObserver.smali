.class public final Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

.field public final BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

.field public final BLUETOOTH_CAST_PERMISSION_URI:Landroid/net/Uri;

.field public final BLUETOOTH_CAST_RANGE_URI:Landroid/net/Uri;

.field public final BLUETOOTH_CAST_TIMEOUT_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "bluetooth_cast_mode"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    const-string p1, "bluetooth_cast_range"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_RANGE_URI:Landroid/net/Uri;

    const-string p1, "bluetooth_cast_permission"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_PERMISSION_URI:Landroid/net/Uri;

    const-string p1, "bluetooth_cast_timeout"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_TIMEOUT_URI:Landroid/net/Uri;

    const-string p1, "bluetooth_cast_disallowed_devices"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "bluetooth_cast_mode"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    if-ne p1, v0, :cond_1

    move v1, v0

    :cond_1
    iput-boolean v1, p2, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    iget-object p1, p2, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p1, p1, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    iget-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    if-eq p1, p2, :cond_a

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_RANGE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mModePreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "bluetooth_cast_range"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_PERMISSION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mPermPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "bluetooth_cast_permission"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_TIMEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mTimeoutPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "bluetooth_cast_timeout"

    const v0, 0x927c0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "bluetooth_cast_disallowed_devices"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_6
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDisallowedDevices:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-le p2, v0, :cond_8

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p1, :cond_a

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDisallowedDevices:Lorg/json/JSONObject;

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    iget-object p2, p2, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDisallowedDevices:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    if-eqz p2, :cond_a

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a
    :goto_2
    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    sget-boolean v1, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->LOG_DEBUG:Z

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_RANGE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_PERMISSION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_TIMEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
