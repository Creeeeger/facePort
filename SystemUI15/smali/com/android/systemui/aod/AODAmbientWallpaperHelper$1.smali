.class public final Lcom/android/systemui/aod/AODAmbientWallpaperHelper$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODAmbientWallpaperHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$1;->this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartedGoingToSleep()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$1;->this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODAmbientWallpaperMode()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartedGoingToSleep isAODAmbientWallpaperMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODAmbientWallpaperHelper"

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->statusBarWindowControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->setAODAmbientWallpaperState(Z)V

    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    sget v0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$1;->this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AODAmbientWallpaperHelper"

    const-string v1, "onStartedWakingUp"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->statusBarWindowControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->setAODAmbientWallpaperState(Z)V

    return-void
.end method
