.class public final Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBluetoothFindBroadcastsFragment:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

.field public mBroadcastSourceList:Landroidx/preference/PreferenceCategory;

.field public mBtnBroadcastLayout:Landroid/widget/LinearLayout;

.field public mBtnFindBroadcast:Landroid/widget/Button;

.field public mBtnLeaveBroadcast:Landroid/widget/Button;

.field public mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_find_broadcast_header"

    return-object p0
.end method

.method public final init(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "bluetooth_find_broadcast_header"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "broadcast_source_list"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBroadcastSourceList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->refresh()V

    return-void
.end method

.method public final onDeviceAttributesChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->refresh()V

    :cond_0
    return-void
.end method

.method public final refresh()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a05cf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a05cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a02a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnFindBroadcast:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a029c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnBroadcastLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a02aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnLeaveBroadcast:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a02b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->updateHeaderLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateHeaderLayout()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBroadcastSourceList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnFindBroadcast:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnBroadcastLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnFindBroadcast:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnBroadcastLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnLeaveBroadcast:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBluetoothFindBroadcastsFragment:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v2, 0x0

    const-string v3, "BtFindBroadcastsFrg"

    if-nez v0, :cond_1

    const-string v0, "getLeBroadcastAssistant: LocalBluetoothManager is null!"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez v0, :cond_2

    const-string v0, "getLeBroadcastAssistant: LocalBluetoothProfileManager is null!"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    :goto_1
    if-eqz v2, :cond_3

    iget-object v0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->mBtnLeaveBroadcast:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method
