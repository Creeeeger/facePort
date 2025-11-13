.class public final Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$init$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$init$2;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScreenTurningOff()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$init$2;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateSetLockScreenShown:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onScreenTurningOff: isAODFullScreenMode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", needUpdateSetLockScreenShown="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->mainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->updateSetLockScreenShownRunnable:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
