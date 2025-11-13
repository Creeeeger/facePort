.class public final Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimatorSet:Landroid/animation/AnimatorSet;

.field public mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

.field public mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    return-void
.end method


# virtual methods
.method public final playAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->screenTurnedOn()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/theme/LockscreenCallback;->screenTurnedOn()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "UnsupportedOperationException occurred!"

    const-string v1, "ComplexAnimationBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, "UnsupportedOperationException occurred again!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
