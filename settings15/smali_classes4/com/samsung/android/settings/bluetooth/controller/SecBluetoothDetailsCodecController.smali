.class public final Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final mBroadcastReceiver:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;

.field public final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public mCodecContainer:Landroidx/preference/PreferenceGroup;

.field public mCodecGroupIsRemoved:Z

.field public final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field public mReceiverRegistered:Z

.field public mScreenId:Ljava/lang/String;

.field public mSscUhqStateChangedFromSettings:Z

.field public mSwbStateChangedFromSettings:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mSwbStateChangedFromSettings:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mReceiverRegistered:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mSscUhqStateChangedFromSettings:Z

    new-instance p1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;-><init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mBroadcastReceiver:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;

    iget-object p1, p3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method


# virtual methods
.method public final createCodecSwitchPreference(ILjava/lang/String;)Landroidx/preference/SwitchPreferenceCompat;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createCodecSwitchPreference :: codec : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothDetailsCodecController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f1502f4

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {v2, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroidx/preference/Preference;->setPersistent()V

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f080700

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x7f140737

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p1, 0x7f0806d3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    const p2, 0x7f0600c4

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v2
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_codec"

    return-object p0
.end method

.method public final init(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    const v1, 0x7f141fc6

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$$ExternalSyntheticOutline0;->m(Landroidx/preference/PreferenceFragmentCompat;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mScreenId:Ljava/lang/String;

    const-string v0, "bluetooth_codec"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->onPause()V

    const-string v0, "SecBluetoothDetailsCodecController"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mReceiverRegistered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mBroadcastReceiver:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mReceiverRegistered:Z

    const-string/jumbo p0, "onPause : unregister receiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "prof is null in onPreferenceChange"

    const-string v3, "SecBluetoothDetailsCodecController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f140737

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x4

    const-string v7, "0"

    const-string v8, "1"

    iget-object v9, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v10, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v5, :cond_6

    const-string v5, "HEADSET"

    invoke-virtual {v9, v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v5, :cond_5

    iget-object v13, v10, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v14, v5, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v14, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    invoke-virtual {v14, v13}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    :goto_0
    const/16 v14, 0xc

    if-eq v13, v14, :cond_4

    const/16 v14, 0xb

    if-ne v13, v14, :cond_1

    goto :goto_3

    :cond_1
    move-object v3, v1

    check-cast v3, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v13

    xor-int/2addr v13, v11

    iget-object v14, v10, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v14, v13, v6}, Landroid/bluetooth/BluetoothHeadset;->setScoCodecEnabled(Landroid/bluetooth/BluetoothDevice;ZI)Z

    :goto_1
    invoke-virtual {v3, v12}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v3, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mScreenId:Ljava/lang/String;

    const v5, 0x7f140ee4

    invoke-static {v4, v5}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$$ExternalSyntheticOutline0;->m(Landroidx/preference/PreferenceFragmentCompat;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v13, :cond_3

    move-object v13, v8

    goto :goto_2

    :cond_3
    move-object v13, v7

    :goto_2
    invoke-static {v3, v5, v13}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$2;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$2;-><init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;)V

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    iput v12, v5, Landroid/os/Message;->what:I

    const-wide/16 v13, 0x3e8

    invoke-virtual {v3, v5, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v11, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mSwbStateChangedFromSettings:Z

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14073b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string/jumbo v0, "onPreferenceChange :: Not allow to change the LC3 option while sco connected"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_5
    const-string v5, "headset profile is null in onPreferenceChange"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f140689

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v13, 0x7d0

    const/4 v5, 0x2

    const-string v15, "A2dpProfile"

    const-string v6, "A2DP"

    if-eqz v3, :cond_a

    invoke-virtual {v9, v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v2, :cond_e

    move-object v3, v1

    check-cast v3, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    xor-int/2addr v6, v11

    iget-object v9, v10, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v10, v2, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v10, :cond_7

    const-string/jumbo v2, "setEnableScalableUhqMode mService is null"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    invoke-virtual {v2, v9}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v10

    if-eq v10, v5, :cond_8

    const-string/jumbo v2, "setEnableScalableUhqMode not connected"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/16 v5, 0x8

    invoke-virtual {v2, v9, v6, v5}, Landroid/bluetooth/BluetoothA2dp;->semSetCodecEnabled(Landroid/bluetooth/BluetoothDevice;ZI)V

    :goto_5
    invoke-virtual {v3, v12}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mScreenId:Ljava/lang/String;

    const v3, 0x7f140ee5

    invoke-static {v4, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$$ExternalSyntheticOutline0;->m(Landroidx/preference/PreferenceFragmentCompat;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v6, :cond_9

    move-object v7, v8

    :cond_9
    invoke-static {v2, v3, v7}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$3;-><init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;Landroidx/preference/Preference;I)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v12, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v11, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mSscUhqStateChangedFromSettings:Z

    goto :goto_7

    :cond_a
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v13, 0x7f140684

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v9, v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v2, :cond_e

    move-object v3, v1

    check-cast v3, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    xor-int/2addr v6, v11

    iget-object v9, v10, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v10, v2, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v10, :cond_b

    const-string/jumbo v2, "setEnableLdacMode mService is null"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    invoke-virtual {v2, v9}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v10

    if-eq v10, v5, :cond_c

    const-string/jumbo v2, "setEnableLdacMode not connected"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v5, 0x4

    invoke-virtual {v2, v9, v6, v5}, Landroid/bluetooth/BluetoothA2dp;->semSetCodecEnabled(Landroid/bluetooth/BluetoothDevice;ZI)V

    :goto_6
    invoke-virtual {v3, v12}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mScreenId:Ljava/lang/String;

    const v3, 0x7f140edd

    invoke-static {v4, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$$ExternalSyntheticOutline0;->m(Landroidx/preference/PreferenceFragmentCompat;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v6, :cond_d

    move-object v7, v8

    :cond_d
    invoke-static {v2, v3, v7}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$3;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$3;-><init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;Landroidx/preference/Preference;I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v12, v0, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_e
    :goto_7
    return v11
.end method

.method public final onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->onResume()V

    const-string v0, "SecBluetoothDetailsCodecController"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const-string v3, "HEADSET"

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v3, :cond_0

    iget-object v5, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v5}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->isSwbMenuSupported(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.samsung.bt.hfp.intent.action.SWB_ENABLED_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string v3, "A2DP"

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v2, :cond_2

    iget-object v3, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v2, :cond_1

    const-string v2, "A2dpProfile"

    const-string v3, "isSupportScalableUhq mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/BluetoothA2dp;->semIsCodecSupported(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    const-string v2, "com.samsung.bluetooth.a2dp.intent.action.SSC_UHQ_ENABLED_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mBroadcastReceiver:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mReceiverRegistered:Z

    const-string/jumbo p0, "onResume : register receiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final refresh()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-boolean v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    const-string v2, "SecBluetoothDetailsCodecController"

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->showOrHideCodecGroup()V

    const-string/jumbo p0, "refreshCodecs :: Device is restored. It is not support container"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const-string v3, "HEADSET"

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    if-eqz v3, :cond_7

    iget-object v9, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v9}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->isSwbMenuSupported(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f140737

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v9

    check-cast v9, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v9, :cond_1

    invoke-static {v8, v11}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$$ExternalSyntheticOutline0;->m(Landroidx/preference/PreferenceFragmentCompat;I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroidx/preference/Preference;->getOrder()I

    move-result v10

    add-int/lit8 v10, v10, 0x14

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->createCodecSwitchPreference(ILjava/lang/String;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v10, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_1
    iget-object v10, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v11, v3, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v11, :cond_3

    :cond_2
    move v10, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v11, v10, v5}, Landroid/bluetooth/BluetoothHeadset;->getScoCodecEnabled(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v10

    if-ne v10, v6, :cond_2

    move v10, v6

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v3

    if-ne v3, v7, :cond_4

    move v3, v6

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    invoke-virtual {v9, v10}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v9, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v3, :cond_6

    if-eqz v10, :cond_5

    const v11, 0x7f14073a

    invoke-virtual {v9, v11}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_5
    const v11, 0x7f140738

    invoke-virtual {v9, v11}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_6
    const v11, 0x7f140739

    invoke-virtual {v9, v11}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_2
    const-string/jumbo v9, "refreshCodecs :: isLc3Enabled : "

    const-string v11, ", isHfpConnected : "

    invoke-static {v9, v10, v11, v3, v2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    :cond_7
    const-string v3, "A2DP"

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    const-string v3, "A2dpProfile"

    const v9, 0x7f140685

    if-eqz v1, :cond_10

    iget-object v10, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v11, v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/16 v12, 0x8

    if-nez v11, :cond_8

    const-string v10, "isSupportScalableUhq mService is null"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v4

    goto :goto_3

    :cond_8
    invoke-virtual {v11, v10, v12}, Landroid/bluetooth/BluetoothA2dp;->semIsCodecSupported(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    :goto_3
    if-eqz v10, :cond_10

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f140689

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v5, :cond_9

    invoke-static {v8, v11}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$$ExternalSyntheticOutline0;->m(Landroidx/preference/PreferenceFragmentCompat;I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroidx/preference/Preference;->getOrder()I

    move-result v8

    add-int/lit8 v8, v8, 0x1e

    invoke-virtual {p0, v8, v5}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->createCodecSwitchPreference(ILjava/lang/String;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_9
    iget-object v8, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v10, v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v10, :cond_a

    const-string v8, "getScalableUhqEnabled mService is null"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_4

    :cond_a
    invoke-virtual {v10, v8, v12}, Landroid/bluetooth/BluetoothA2dp;->semIsCodecEnabled(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v3

    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "refreshCodecs :: isScalableUhqEnabled : "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    if-ne v0, v7, :cond_c

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_b

    move v1, v4

    goto :goto_5

    :cond_b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    move-result v1

    :goto_5
    if-nez v1, :cond_c

    move v4, v6

    :cond_c
    if-eqz v4, :cond_e

    if-eqz v3, :cond_d

    const v9, 0x7f14068c

    goto :goto_6

    :cond_d
    const v9, 0x7f14068b

    goto :goto_6

    :cond_e
    if-eq v0, v7, :cond_f

    const v9, 0x7f14068a

    :cond_f
    :goto_6
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v5, v9}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    :cond_10
    if-eqz v1, :cond_19

    iget-object v10, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v11, v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v11, :cond_11

    const-string v10, "isSupportLdac mService is null"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v4

    goto :goto_7

    :cond_11
    invoke-virtual {v11, v10, v5}, Landroid/bluetooth/BluetoothA2dp;->semIsCodecSupported(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    :goto_7
    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f140684

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v10

    check-cast v10, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v10, :cond_12

    invoke-static {v8, v12}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$$ExternalSyntheticOutline0;->m(Landroidx/preference/PreferenceFragmentCompat;I)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroidx/preference/Preference;->getOrder()I

    move-result v10

    add-int/lit8 v10, v10, 0x1e

    invoke-virtual {p0, v10, v8}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->createCodecSwitchPreference(ILjava/lang/String;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v10

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_12
    iget-object v8, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v11, v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v11, :cond_13

    const-string v5, "getLdacEnabled mService is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_8

    :cond_13
    invoke-virtual {v11, v8, v5}, Landroid/bluetooth/BluetoothA2dp;->semIsCodecEnabled(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v3

    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "refreshCodecs :: isLdacEnabled : "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    if-ne v0, v7, :cond_15

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_14

    move v1, v4

    goto :goto_9

    :cond_14
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    move-result v1

    :goto_9
    if-nez v1, :cond_15

    move v4, v6

    :cond_15
    if-eqz v4, :cond_17

    if-eqz v3, :cond_16

    const v9, 0x7f140688

    goto :goto_a

    :cond_16
    const v9, 0x7f140687

    goto :goto_a

    :cond_17
    if-eq v0, v7, :cond_18

    const v9, 0x7f140686

    :cond_18
    :goto_a
    invoke-virtual {v10, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v10, v9}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_19
    :goto_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->showOrHideCodecGroup()V

    return-void
.end method

.method public final showOrHideCodecGroup()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecGroupIsRemoved:Z

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecGroupIsRemoved:Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {v3}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecGroupIsRemoved:Z

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecGroupIsRemoved:Z

    :cond_2
    :goto_0
    return-void
.end method
