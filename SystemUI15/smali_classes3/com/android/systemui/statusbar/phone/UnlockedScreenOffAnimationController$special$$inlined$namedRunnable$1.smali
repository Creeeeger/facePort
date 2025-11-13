.class public final Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$special$$inlined$namedRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/TraceNameSupplier;


# instance fields
.field public final synthetic $tag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$special$$inlined$namedRunnable$1;->$tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$special$$inlined$namedRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTraceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$special$$inlined$namedRunnable$1;->$tag:Ljava/lang/String;

    return-object p0
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$special$$inlined$namedRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->lightRevealAnimationPlaying:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->lightRevealAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$special$$inlined$namedRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->helper:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$startLightRevealCallback$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$startLightRevealCallback$1$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    invoke-static {v1, v0}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    return-void
.end method
