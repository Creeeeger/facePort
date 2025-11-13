.class public final Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final KEY_SPACE:Ljava/lang/String; = "hearing_aid_space_layout"


# instance fields
.field public mPreference:Lcom/android/settingslib/widget/ButtonPreference;

.field public mSpacePreference:Lcom/android/settings/applications/SpacePreference;


# direct methods
.method public static getButtonPreferenceVisibility(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedAshaHearingAidDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHapClientDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mMode:I

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v3, 0xc

    if-ne v0, v3, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v2

    goto :goto_3

    :cond_4
    move p0, v1

    :goto_3
    if-nez v0, :cond_6

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :cond_6
    :goto_4
    return v1
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "hearing_aid_pair_other_button"

    return-object p0
.end method

.method public final init(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "hearing_aid_pair_other_button"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ButtonPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mPreference:Lcom/android/settingslib/widget/ButtonPreference;

    const-string v0, "hearing_aid_space_layout"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/SpacePreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mSpacePreference:Lcom/android/settings/applications/SpacePreference;

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mPreference:Lcom/android/settingslib/widget/ButtonPreference;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceSide()I

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f140771

    goto :goto_0

    :cond_0
    const v1, 0x7f14076b

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->getButtonPreferenceVisibility(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mPreference:Lcom/android/settingslib/widget/ButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mSpacePreference:Lcom/android/settings/applications/SpacePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mPreference:Lcom/android/settingslib/widget/ButtonPreference;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;)V

    iput-object v0, p1, Lcom/android/settingslib/widget/ButtonPreference;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object p0, p1, Lcom/android/settingslib/widget/ButtonPreference;->mButton:Landroid/widget/Button;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->getButtonPreferenceVisibility(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public final refresh()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mPreference:Lcom/android/settingslib/widget/ButtonPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceSide()I

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f140771

    goto :goto_0

    :cond_0
    const v2, 0x7f14076b

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->getButtonPreferenceVisibility(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mPreference:Lcom/android/settingslib/widget/ButtonPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mSpacePreference:Lcom/android/settings/applications/SpacePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
