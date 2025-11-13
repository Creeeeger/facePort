.class public Lcom/android/systemui/edgelighting/settings/ResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static reset(Landroid/content/Context;)V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING_TILE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->initializeSettingValue(Landroid/content/ContentResolver;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "edge_lighting_thickness"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "edgelighting_recently_used_color"

    const-string v5, ""

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "edgelighting_custom_color"

    const v5, -0xb37941

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "edge_lighting_transparency"

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getDefalutStyle()Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->setEdgeLightingStyleType(Landroid/content/ContentResolver;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0x64

    invoke-static {v0, v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;I)V

    invoke-static {}, Lcom/android/systemui/edgelighting/Feature;->isEdgeLightingDefaultOff()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "edge_lighting"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "edge_lighting_duration"

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->resetAppCustomColor(Landroid/content/Context;)V

    :try_start_0
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/app/INotificationManager;->resetDefaultAllowEdgeLighting()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ResetReceiver"

    const-string v1, "resetDefaultAllowEdgeLighting is failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v0, "edge_lighting_settings"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "all_application"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "enable_list"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "edge_lighting_custom_text_color"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "ResetReceiver"

    if-eqz p2, :cond_0

    const-string p0, "onReceive : SOFT_RESET"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/ResetReceiver;->reset(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "onReceive : DEMO_RESET_STARTED"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/ResetReceiver;->reset(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
