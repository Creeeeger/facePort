.class public final Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field public final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public mContainer:Landroidx/preference/PreferenceGroup;

.field public final mDevice:Landroid/bluetooth/BluetoothDevice;

.field public mFindBroadcastPreference:Landroidx/preference/Preference;

.field public final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field public final mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mScreenId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p1, p4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    const p1, 0x7f141fc8

    invoke-static {p2, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$$ExternalSyntheticOutline0;->m(Landroidx/preference/PreferenceFragmentCompat;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mScreenId:Ljava/lang/String;

    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "bluetooth_assistant"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mContainer:Landroidx/preference/PreferenceGroup;

    const-string v0, "bluetooth_pref_find_broadcast"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mFindBroadcastPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f080849

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mContainer:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mContainer:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_assistant"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearableUsingWearableManager()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isLeAudioDualMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p0

    const-string v3, "SecBluetoothBroadcastAssistantController"

    if-eqz p0, :cond_4

    array-length v4, p0

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    goto/16 :goto_1

    :cond_0
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v0

    if-ne v4, v0, :cond_5

    const/4 v0, 0x2

    :cond_1
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_5

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    and-int/2addr v4, v5

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    new-array v7, v6, [B

    add-int/lit8 v8, v0, 0x3

    invoke-static {p0, v8, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v6, 0x3

    add-int/2addr v0, v8

    invoke-static {v4}, Lcom/samsung/android/bluetooth/SmepTag;->getSmepKey(I)Lcom/samsung/android/bluetooth/SmepTag;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    invoke-virtual {v8}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v8

    aget v8, v9, v8

    if-eq v8, v1, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "%x"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "isSupportAssistant: NOT SUPPORTED FEATURE : "

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-ge v6, v1, :cond_3

    const-string p0, "isSupportAssistant: wrong data"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "isSupportAssistant: data = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v6, v7, v2

    invoke-static {v4, v6, v3}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    aget-byte v4, v7, v2

    if-ne v4, v1, :cond_1

    move v2, v1

    goto :goto_2

    :cond_4
    :goto_1
    const-string p0, "isSupportAssistant: DataPacket is too short."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return v2

    :cond_6
    return v1

    :cond_7
    return v2
.end method

.method public onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string p0, "SecBluetoothBroadcastAssistantController"

    const-string/jumbo v0, "onDestroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->isAvailable()Z

    return-void
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPreferenceClick :: key = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothBroadcastAssistantController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bluetooth_pref_find_broadcast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140ed8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mScreenId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastAssistantSettings;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "SecBluetoothBroadcastAssistantController"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mContainer:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mContainer:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->refresh()V

    return-void
.end method

.method public final refresh()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mFindBroadcastPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-ne p0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    return-void
.end method
