.class final Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothCastSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

.field private final BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

.field private final BLUETOOTH_CAST_PERMISSION_URI:Landroid/net/Uri;

.field private final BLUETOOTH_CAST_RANGE_URI:Landroid/net/Uri;

.field private final BLUETOOTH_CAST_TIMEOUT_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;Landroid/os/Handler;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "bluetooth_cast_mode"

    .line 623
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    const-string p1, "bluetooth_cast_range"

    .line 624
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_RANGE_URI:Landroid/net/Uri;

    const-string p1, "bluetooth_cast_permission"

    .line 625
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_PERMISSION_URI:Landroid/net/Uri;

    const-string p1, "bluetooth_cast_timeout"

    .line 626
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_TIMEOUT_URI:Landroid/net/Uri;

    const-string p1, "bluetooth_cast_disallowed_devices"

    .line 627
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 633
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 638
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "bluetooth_cast_mode"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 639
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    if-ne p1, v0, :cond_1

    move v1, v0

    :cond_1
    invoke-static {p2, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->-$$Nest$fputmIsEnabled(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;Z)V

    .line 641
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->-$$Nest$fgetmIsEnabled(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Z

    move-result p2

    if-eq p1, p2, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->-$$Nest$fgetmIsEnabled(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto/16 :goto_1

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_RANGE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 643
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->-$$Nest$fgetmModePreference(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Landroidx/preference/SecDropDownPreference;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->bluetooth_cast_mode_entry_values:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 644
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "bluetooth_cast_range"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    aget-object p0, p0, p1

    .line 643
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 645
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_PERMISSION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 646
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->-$$Nest$fgetmPermPreference(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Landroidx/preference/SecDropDownPreference;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->bluetooth_cast_perm_entry_values:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 647
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "bluetooth_cast_permission"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    aget-object p0, p0, p1

    .line 646
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 648
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_TIMEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 649
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->-$$Nest$fgetmTimeoutPreference(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Landroidx/preference/SecDropDownPreference;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const p2, 0x927c0

    const-string v0, "bluetooth_cast_timeout"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 650
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 653
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "bluetooth_cast_disallowed_devices"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    .line 655
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 657
    :cond_6
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    .line 661
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->-$$Nest$fgetmDisallowedDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-le p2, v0, :cond_8

    .line 662
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 664
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 665
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 666
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->-$$Nest$fgetmDisallowedDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 667
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 668
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_1

    .line 676
    :cond_8
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->-$$Nest$fgetmDisallowedDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 678
    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 679
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 680
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 681
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 682
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 690
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a
    :goto_1
    return-void
.end method

.method public setListening(Z)V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->access$000(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 698
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 699
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_RANGE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 700
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_PERMISSION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 701
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_TIMEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 702
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 704
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
