.class Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;
.super Landroidx/preference/SecSwitchPreference;
.source "TurnOnWifiAutomaticallySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoWifiPreference"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    .line 361
    invoke-direct {p0, p2}, Landroidx/preference/SecSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 362
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mContext:Landroid/content/Context;

    .line 363
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p3, :cond_2

    .line 365
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSemWifiConfigs:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 366
    invoke-virtual {p3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz p1, :cond_1

    .line 368
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->getNetworkScore()I

    move-result p1

    const/16 p2, 0x9

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->onSetInitialValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p1, "TurnOnWifiAutomaticallySettings"

    const-string p2, "Cannot init switch - semConfig is null"

    .line 370
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->isNewAddedItem(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    :cond_2
    return-void
.end method

.method private isNewAddedItem(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 404
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->getAddedFavoriteNetworks(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 405
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 406
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private isScoreUpdated(IZ)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p0

    :cond_0
    if-nez p2, :cond_1

    const/16 p2, 0x9

    if-lt p1, p2, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateScore(Z)V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "TurnOnWifiAutomaticallySettings"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz v0, :cond_2

    .line 384
    iget v0, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->isScoreUpdated(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 387
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2, v0, v3}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->-$$Nest$mupdateNetworkScore(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;II)V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update score : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-wide/16 p0, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 p0, 0x0

    :goto_1
    const-string v0, "WIFI_270"

    const-string v1, "1285"

    .line 389
    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :cond_2
    const-string p0, "failed to updateScore - SemWifiConfig is null"

    .line 392
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 0

    .line 378
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 379
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->updateScore(Z)V

    return-void
.end method
