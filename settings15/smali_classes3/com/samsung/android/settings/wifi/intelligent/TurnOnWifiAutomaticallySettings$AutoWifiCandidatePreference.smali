.class public final Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAddFavoriteAp:Landroid/widget/ImageView;

.field public final mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const p1, 0x7f0d0931

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a1041

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0a00a3

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->mAddFavoriteAp:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->mAddFavoriteAp:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->mAddFavoriteAp:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v0, "TurnOnWifiAutomaticallySettings"

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mCombinedWifiConfigList:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-static {v1, p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->-$$Nest$mgetSemWifiConfigFromCombinedList(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->mAddFavoriteAp:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    const-string p0, "Candidate\'s semConfig is NULL"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p0, "Candidate\'s WifiConfig or CombinedWifiConfigList is NULL"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
