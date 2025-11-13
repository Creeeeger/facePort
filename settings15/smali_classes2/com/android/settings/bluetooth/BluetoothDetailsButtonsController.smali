.class public final Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field public mConnectButtonInitialized:Z

.field public mIsConnected:Z


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "action_buttons"

    return-object p0
.end method

.method public final init(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "action_buttons"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v0, 0x7f141010

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)V

    const v0, 0x7f0805e0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)V

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;I)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    return-void
.end method

.method public final refresh()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iget-object v4, v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-boolean v5, v4, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    if-eq v2, v5, :cond_0

    iput-boolean v2, v4, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f1406ed

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)V

    const v1, 0x7f0805dc

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)V

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;I)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f1406ec

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)V

    const v1, 0x7f080333

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)V

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;I)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    :cond_4
    :goto_0
    return-void
.end method
