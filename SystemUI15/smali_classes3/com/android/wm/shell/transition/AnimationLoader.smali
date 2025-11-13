.class public abstract Lcom/android/wm/shell/transition/AnimationLoader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DIRECT_SHOW_ANIMATION:Landroid/view/animation/Animation;

.field public static final NO_ANIMATION:Landroid/view/animation/Animation;


# instance fields
.field public final mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Lcom/android/wm/shell/transition/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Lcom/android/wm/shell/transition/AnimationLoader;->DIRECT_SHOW_ANIMATION:Landroid/view/animation/Animation;

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    return-void
.end method


# virtual methods
.method public addRoundedClipAnimation(Landroid/graphics/Rect;Landroid/view/animation/AnimationSet;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    iget-object v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v0, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/transition/AnimationLoader;->addRoundedClipAnimation(Landroid/graphics/Rect;Landroid/view/animation/AnimationSet;Landroid/content/Context;)V

    return-void
.end method

.method public final addRoundedClipAnimation(Landroid/graphics/Rect;Landroid/view/animation/AnimationSet;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/transition/AnimationLoader;->getCornerRadius(Landroid/content/Context;)F

    move-result p0

    new-instance p1, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {p1, v0, v0}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/view/animation/AnimationSet;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p2, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    invoke-virtual {p2, p0}, Landroid/view/animation/AnimationSet;->setRoundedCornerRadius(F)V

    return-void
.end method

.method public getCornerRadius(Landroid/content/Context;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract loadAnimationIfPossible()V
.end method
