.class Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;
.super Landroidx/preference/Preference;
.source "TurnOnWifiAutomaticallySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoWifiCandidatePreference"
.end annotation


# instance fields
.field private mAddFavoriteAp:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;


# direct methods
.method public static synthetic $r8$lambda$Mp5djYp8VQxwJ0CnLAa0x1Gow3Q(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    .line 418
    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 419
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 420
    sget p1, Lcom/android/settings/R$layout;->sec_preference_auto_wifi_candidate:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 2

    .line 438
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/16 v1, 0xb

    invoke-static {p1, v1, v0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->-$$Nest$mupdateNetworkScore(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;II)V

    .line 439
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->-$$Nest$msetFavoriteApList(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;)V

    .line 440
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->-$$Nest$fgetmFavoriteApCandidateCategory(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const-string p0, "WIFI_270"

    const-string p1, "1286"

    .line 441
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 425
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 426
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->mTitle:Landroid/widget/TextView;

    .line 427
    sget v0, Lcom/android/settings/R$id;->add_favorite_ap:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->mAddFavoriteAp:Landroid/widget/ImageView;

    .line 428
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 429
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->mAddFavoriteAp:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 431
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->mAddFavoriteAp:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_wifi_icon_gray_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 434
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v0, "TurnOnWifiAutomaticallySettings"

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSemWifiConfigs:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 435
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz p1, :cond_1

    .line 437
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;->mAddFavoriteAp:Landroid/widget/ImageView;

    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiCandidatePreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    const-string p0, "Candidate\'s semConfig is NULL"

    .line 444
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p0, "Candidate\'s WifiConfig or SemWifiConfig is NULL"

    .line 447
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
