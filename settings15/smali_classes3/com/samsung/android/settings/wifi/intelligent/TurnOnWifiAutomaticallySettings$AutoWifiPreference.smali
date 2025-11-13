.class public final Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;
.super Landroidx/preference/SecSwitchPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

.field public final mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    invoke-direct {p0, p2}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v0, "TurnOnWifiAutomaticallySettings"

    if-eqz p3, :cond_6

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mCombinedWifiConfigList:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-static {p1, p3}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->-$$Nest$mgetSemWifiConfigFromCombinedList(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->getNetworkScore()I

    move-result p1

    const/16 v0, 0x9

    if-lt p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->onSetInitialValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p1, "Cannot init switch - semConfig is null"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {p2}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->getBadgeJSONObject(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "added"

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :goto_3
    sput-object p1, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->favoriteNetworkArray:Lorg/json/JSONArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move p2, v2

    :goto_4
    :try_start_1
    sget-object v0, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->favoriteNetworkArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_3

    sget-object v0, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->favoriteNetworkArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "config"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :catch_1
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    goto :goto_6

    :cond_6
    const-string p0, "WifiConfig or CombinedWifiConfigList is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void
.end method


# virtual methods
.method public final setChecked(Z)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/16 v0, 0xb

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget v3, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    sget v4, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->$r8$clinit:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v3, v0, :cond_0

    const-string v2, "MANUAL"

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    if-ne v3, v2, :cond_1

    const-string v2, "KT"

    goto :goto_0

    :cond_1
    const-string v2, "AUTO"

    :goto_0
    const-string/jumbo v3, "registrant"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "WIFI_200"

    const-string v4, "1287"

    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v2, "TurnOnWifiAutomaticallySettings"

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz v3, :cond_6

    iget v3, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    const/4 v4, -0x1

    if-eqz p1, :cond_3

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    if-nez p1, :cond_7

    const/16 v5, 0x9

    if-lt v3, v5, :cond_7

    :goto_1
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v4

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3, v0, v1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->-$$Nest$mupdateNetworkScore(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update score : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$AutoWifiPreference;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    invoke-static {v0, p0, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eqz p1, :cond_5

    const-wide/16 p0, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 p0, 0x0

    :goto_3
    const-string v0, "WIFI_270"

    const-string v1, "1285"

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string p0, "failed to updateScore - SemWifiConfig is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    return-void
.end method
