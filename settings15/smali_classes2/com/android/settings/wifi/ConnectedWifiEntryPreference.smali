.class public Lcom/android/settings/wifi/ConnectedWifiEntryPreference;
.super Lcom/android/settings/wifi/LongPressWifiEntryPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mOnGearClickListener:Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/LongPressWifiEntryPreference;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/wifitrackerlib/WifiEntry;)V

    const p1, 0x7f0d053f

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/wifi/LongPressWifiEntryPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0e18

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p0

    const v1, 0x7f0a0e1a

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz p0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p0, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a10a0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0e18

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;->mOnGearClickListener:Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda8;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/settings/network/NetworkProviderSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;

    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda8;->f$0:Lcom/android/settings/network/NetworkProviderSettings;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda8;->f$1:Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/network/NetworkProviderSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/LongPressWifiEntryPreference;)V

    :cond_0
    return-void
.end method
