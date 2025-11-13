.class public Lcom/android/systemui/pluginlock/PluginLockProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.systemui.pluginlock.provider"

.field private static final FILL_WALLPAPER_DATA:Ljava/lang/String; = "fill_wallpaper_data"

.field private static final GET_DLS_DATA:Ljava/lang/String; = "get_dls_data"

.field private static final GET_LOCKSTAR_TASK_SHORTCUT_STATE:Ljava/lang/String; = "get_lockstar_task_shortcut_state"

.field private static final GET_NOTIFICATION_NUMBERS:Ljava/lang/String; = "get_notification_numbers"

.field private static final GET_WALLPAPER_INDEX:Ljava/lang/String; = "get_wallpaper_index"

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_ARG:Ljava/lang/String; = "arg"

.field public static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field public static final KEY_WALLPAPER_INDEX:Ljava/lang/String; = "wallpaper_index"

.field private static final REMOVE_LOCKSTAR_TASK_SHORTCUT_LISTENER:Ljava/lang/String; = "remove_lockstar_task_shortcut_listener"

.field private static final SCREEN:Ljava/lang/String; = "screen"

.field private static final SOURCE:Ljava/lang/String; = "source"

.field private static final SOURCE_TYPE:Ljava/lang/String; = "source_type"

.field private static final TAG:Ljava/lang/String; = "PluginLockProvider"

.field private static final UPDATE_LOCKSTAR_TASK_SHORTCUT_STATE:Ljava/lang/String; = "update_lockstar_task_shortcut_state"

.field private static final WALLPAPER_TYPE:Ljava/lang/String; = "wallpaper_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private onEventReceived(Lcom/android/systemui/pluginlock/PluginLockManager;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getPluginLock()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onEventReceived, pluginLock:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PluginLockProvider"

    invoke-static {v2, p1, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onEventReceived, basicManager:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    const-string p1, "call => onEventReceived"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onEventReceived(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    sget-object v7, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v8, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v7, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/pluginlock/PluginLockManager;

    const-string v9, "call: method "

    const-string v10, ", arg:"

    const-string v11, "PluginLockProvider"

    invoke-static {v9, v1, v10, v2, v11}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "call method:"

    const-string v10, "extras"

    const-string v12, "arg"

    const-string v13, "action"

    const-class v14, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :goto_0
    const/4 v15, -0x1

    goto :goto_1

    :sswitch_0
    const-string v15, "get_dls_data"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    goto :goto_0

    :cond_0
    const/4 v15, 0x5

    goto :goto_1

    :sswitch_1
    const-string v15, "get_lockstar_task_shortcut_state"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    goto :goto_0

    :cond_1
    const/4 v15, 0x4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v15, "update_lockstar_task_shortcut_state"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    goto :goto_0

    :cond_2
    const/4 v15, 0x3

    goto :goto_1

    :sswitch_3
    const-string v15, "remove_lockstar_task_shortcut_listener"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    goto :goto_0

    :cond_3
    const/4 v15, 0x2

    goto :goto_1

    :sswitch_4
    const-string v15, "fill_wallpaper_data"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    goto :goto_0

    :cond_4
    move v15, v4

    goto :goto_1

    :sswitch_5
    const-string v15, "get_wallpaper_index"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    goto :goto_0

    :cond_5
    move v15, v5

    :goto_1
    packed-switch v15, :pswitch_data_0

    invoke-virtual {v6, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "call bundle:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v11, v3, v4}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v11, v1, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "call arg:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v11, v1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/pluginlock/PluginLockProvider;->onEventReceived(Lcom/android/systemui/pluginlock/PluginLockManager;Landroid/os/Bundle;)V

    goto/16 :goto_3

    :pswitch_0
    const-string v0, "call: GET_DLS_DATA"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getDynamicLockData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dynamicLockData"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-interface {v7, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getShortcutTaskState(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "isEnable"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v6, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/pluginlock/PluginLockProvider;->onEventReceived(Lcom/android/systemui/pluginlock/PluginLockManager;Landroid/os/Bundle;)V

    goto :goto_3

    :pswitch_2
    invoke-interface {v7, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->updateShortcutTaskState(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7}, Lcom/android/systemui/pluginlock/PluginLockManager;->removeShortcutTaskListener()V

    goto :goto_3

    :pswitch_4
    const-string/jumbo v0, "screen"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "wallpaper_type"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "source_type"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v4, "source"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v4, v14}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->fillWallpaperData(IIILjava/lang/String;)V

    goto :goto_3

    :pswitch_5
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v0, :cond_6

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_6

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v14}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v0, v4, v3}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperIndex(ILandroid/os/Bundle;)I

    move-result v0

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v14}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperIndex()I

    move-result v0

    :goto_2
    const-string/jumbo v1, "wallpaper_index"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    :goto_3
    return-object v6

    :sswitch_data_0
    .sparse-switch
        -0x7442f694 -> :sswitch_5
        -0x502191fd -> :sswitch_4
        -0xd3bfee6 -> :sswitch_3
        0x5e253c6 -> :sswitch_2
        0x20434459 -> :sswitch_1
        0x3c1e0147 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
