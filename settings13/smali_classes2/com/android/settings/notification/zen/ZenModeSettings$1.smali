.class Lcom/android/settings/notification/zen/ZenModeSettings$1;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
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

    .line 588
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method


# virtual methods
.method public resetSettings(Landroid/content/Context;)V
    .locals 8

    const-string p0, "ZenModeSettings"

    const-string/jumbo v0, "reset DND based settings"

    .line 591
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 595
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    .line 597
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 601
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 602
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 603
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 605
    :cond_0
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeSettings;->-$$Nest$smgetNewDefaultZenRule(Landroid/content/Context;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    .line 606
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    .line 608
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "zen_duration"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 610
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 611
    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, -0x11

    and-int/lit8 v0, v0, -0x9

    and-int/lit8 v0, v0, -0x5

    and-int/lit8 v0, v0, -0x3

    and-int/lit8 v0, v0, -0x2

    or-int/lit8 v0, v0, 0x20

    or-int/lit8 v0, v0, 0x40

    and-int/lit16 v0, v0, -0x81

    and-int/lit16 v3, v0, -0x101

    and-int/lit8 v0, v1, -0x2

    and-int/lit8 v0, v0, -0x3

    and-int/lit8 v0, v0, -0x5

    and-int/lit8 v0, v0, -0x9

    and-int/lit8 v0, v0, -0x11

    and-int/lit8 v0, v0, -0x21

    and-int/lit8 v0, v0, -0x41

    and-int/lit16 v0, v0, -0x81

    and-int/lit16 v0, v0, -0x101

    .line 631
    sget-boolean v1, Lcom/samsung/android/settings/Rune;->NOTIS_DND_DEFAULT_VALUE:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x10

    :cond_1
    move v6, v0

    .line 636
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    new-instance v0, Landroid/app/NotificationManager$Policy;

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v5, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v7, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method
