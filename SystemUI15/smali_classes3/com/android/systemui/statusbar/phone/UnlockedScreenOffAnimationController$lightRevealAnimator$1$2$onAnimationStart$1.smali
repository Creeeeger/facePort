.class public final synthetic Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$lightRevealAnimator$1$2$onAnimationStart$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$lightRevealAnimator$1$2$onAnimationStart$1;->$tmp0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$lightRevealAnimator$1$2$onAnimationStart$1;->$tmp0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateSetLockScreenShown:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAnimationStart needUpdateSetLockScreenShown="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateSetLockScreenShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateSetLockScreenShown:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->updateSetLockScreenShown(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->playWallpaperAnimation()V

    :cond_0
    return-void
.end method
