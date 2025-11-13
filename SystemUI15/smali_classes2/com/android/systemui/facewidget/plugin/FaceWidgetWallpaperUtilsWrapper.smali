.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWallpaperUtils;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mCallbackMap:Ljava/util/HashMap;

.field public final mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, " --------------------------------------------- "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " FaceWidgetWallpaperUtilsWrapper"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "   callbacks"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getColorByName(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final hasAdaptiveColorResult()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isOpenThemeLook()Z
    .locals 0

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLockWallpaper()Z

    move-result p0

    return p0
.end method

.method public final isWhiteKeyguardWallpaper(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isWhiteSubUiWallpaper(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    int-to-long v1, p1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    check-cast p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/4 p1, 0x1

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(JZ)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p0

    if-ne p0, p1, :cond_1

    move v0, p1

    :cond_1
    return v0
.end method

.method public final declared-synchronized registerCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->registerCallback(ZLcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized registerCallback(ZLcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;I)V
    .locals 5

    const-string v0, "registerCallback: flags = "

    monitor-enter p0

    if-eqz p2, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;

    new-instance v3, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    const-class v4, Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;

    invoke-direct {v3, v4, p2, v1}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    invoke-virtual {v3}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;

    int-to-long v3, p3

    invoke-direct {v2, v1, v3, v4}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;-><init>(Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;J)V

    iget-object p3, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "FaceWidgetWallpaperUtilsWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v2, v3, v4}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {v2, v3, v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1

    :cond_3
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized registerSubUiCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->registerCallback(ZLcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->removeCallback(ZLcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeCallback(ZLcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1

    :cond_3
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized removeSubUiCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->removeCallback(ZLcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
