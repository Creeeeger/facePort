.class Lcom/android/settings/notification/zen/ZenModeSettings$2;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 673
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method getAutomaticRulesCount(Landroid/content/Context;)I
    .locals 1

    .line 709
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 711
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 712
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method getEnabledAutomaticRulesCount(Landroid/content/Context;)I
    .locals 1

    .line 724
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 726
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 727
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    .line 676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 680
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_duration"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_0

    const-string v1, "ask every time"

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v1, "until I turn it off"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "time"

    .line 689
    :goto_0
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v3, 0x8dcd

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 690
    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    .line 691
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettings$2;->getAutomaticRulesCount(Landroid/content/Context;)I

    move-result v1

    .line 694
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v3, 0x8dce

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 695
    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    .line 696
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettings$2;->getEnabledAutomaticRulesCount(Landroid/content/Context;)I

    move-result p0

    .line 699
    new-instance p1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v1, 0x8dcf

    invoke-direct {p1, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 700
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    .line 701
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
