.class Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings$2;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "IntelligentWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/logging/status/StatusData;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/advanced/WifiAdvancedUtils;->isSmartNetworkSwitchOn(Landroid/content/Context;)Z

    move-result v0

    .line 138
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const-string v2, "1210"

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 139
    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 140
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/advanced/WifiAdvancedUtils;->isSwitchToBetterWifiOn(Landroid/content/Context;)Z

    move-result v0

    .line 143
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const-string v4, "1221"

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 144
    :goto_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/advanced/WifiAdvancedUtils;->isAutoWifiOn(Landroid/content/Context;)Z

    move-result v0

    .line 148
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const-string v4, "1215"

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 149
    :goto_2
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/advanced/WifiAdvancedUtils;->isShowNetworkQualityOn(Landroid/content/Context;)Z

    move-result v0

    .line 153
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const-string v4, "1347"

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    move-object v0, v3

    .line 154
    :goto_3
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 155
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/advanced/WifiAdvancedUtils;->isDataPriorityModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 158
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const-string v4, "1222"

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    move-object v0, v3

    .line 159
    :goto_4
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/advanced/WifiAdvancedUtils;->isMobileWipsOn(Landroid/content/Context;)Z

    move-result v0

    .line 163
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const-string v4, "1341"

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    move-object v0, v3

    .line 164
    :goto_5
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 165
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/advanced/WifiAdvancedUtils;->isWifiPowerSavingModeOn(Landroid/content/Context;)Z

    move-result p1

    .line 168
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const-string v1, "1220"

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    move-object v2, v3

    .line 169
    :goto_6
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    .line 170
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
