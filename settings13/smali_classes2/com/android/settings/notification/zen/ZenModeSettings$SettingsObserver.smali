.class final Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/ZenModeSettings;Landroid/os/Handler;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/zen/ZenModeSettings;

    .line 765
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "zen_mode"

    .line 762
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 770
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/zen/ZenModeSettings;

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    .line 772
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/zen/ZenModeSettings;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "zen_mode"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_8

    if-eqz p1, :cond_1

    .line 777
    iget-object p0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p0, :cond_1

    move p0, p2

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-eqz p0, :cond_2

    .line 778
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v1, :cond_2

    move v1, p2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    if-eqz p0, :cond_3

    .line 779
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 781
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "alarm/true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, p2

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    if-eqz p0, :cond_4

    .line 782
    iget-object p0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz p0, :cond_4

    .line 784
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v0, p2

    .line 786
    :cond_4
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo p1, "timeset"

    if-eqz v1, :cond_5

    const-string/jumbo p2, "until I turn it off"

    .line 788
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_7

    if-eqz v2, :cond_6

    const-string/jumbo p2, "until next alarm"

    .line 791
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    const-string p2, "hours"

    .line 793
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    const p1, 0x8cbf

    .line 796
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NSTE0300"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_8
    return-void
.end method

.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 802
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/zen/ZenModeSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 804
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/zen/ZenModeSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
