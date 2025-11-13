.class public final Lcom/android/settings/network/ConnectedEthernetNetworkController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/network/InternetUpdater$InternetChangeListener;


# instance fields
.field public mInternetType:I

.field public mPreference:Landroidx/preference/Preference;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "connected_ethernet_network"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/ConnectedEthernetNetworkController;->mPreference:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f0805e9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x101042a

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/android/settings/network/ConnectedEthernetNetworkController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "connected_ethernet_network"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget p0, p0, Lcom/android/settings/network/ConnectedEthernetNetworkController;->mInternetType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onInternetTypeChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/ConnectedEthernetNetworkController;->mInternetType:I

    iget-object p1, p0, Lcom/android/settings/network/ConnectedEthernetNetworkController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/ConnectedEthernetNetworkController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method
