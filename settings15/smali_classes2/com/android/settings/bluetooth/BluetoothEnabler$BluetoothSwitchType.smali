.class public final Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final mSwitchObject:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p1, "BluetoothEnabler"

    const-string v0, "onCheckedChanged()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-boolean v0, p1, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "bluetooth_dial_for_btoff"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->onSwitchStateChangeRestriction(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.settings.bluetooth.offdialog.LAUNCH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x14000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->onSwitchStateChange(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string p1, "BluetoothEnabler"

    const-string v0, "onPreferenceChange()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_dial_for_btoff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->onSwitchStateChangeRestriction(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.settings.bluetooth.offdialog.LAUNCH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x14000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v2

    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->onSwitchStateChange(Z)Z

    move-result p0

    return p0
.end method

.method public final setBluetoothSummary()V
    .locals 13

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, ""

    goto/16 :goto_8

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    goto/16 :goto_8

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v4, 0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getConnectedDeviceList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    iget-object v7, v0, Lcom/android/settingslib/bluetooth/LeAudioProfile;->mService:Landroid/bluetooth/BluetoothLeAudio;

    const/4 v8, -0x1

    if-nez v7, :cond_5

    move v7, v8

    goto :goto_3

    :cond_5
    invoke-virtual {v7, v6}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    :goto_3
    if-ne v7, v8, :cond_6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v2

    :cond_7
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/bluetooth/BluetoothDevice;

    iget-object v12, v0, Lcom/android/settingslib/bluetooth/LeAudioProfile;->mService:Landroid/bluetooth/BluetoothLeAudio;

    if-nez v12, :cond_8

    move v11, v8

    goto :goto_5

    :cond_8
    invoke-virtual {v12, v11}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v11

    :goto_5
    if-ne v11, v7, :cond_7

    move v10, v4

    goto :goto_4

    :cond_9
    if-nez v10, :cond_4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    move-object v1, v5

    :cond_b
    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_c

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v3, v0

    goto :goto_7

    :cond_c
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f1407f1

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_d
    :goto_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v4}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :goto_8
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method

.method public final setChecked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIsUserInteraction:Z

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method
