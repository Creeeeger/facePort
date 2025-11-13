.class public final Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;
.super Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mContainerAnimator:Landroid/animation/ValueAnimator;

.field public mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->init()V

    return-void
.end method


# virtual methods
.method public final containerAlphaAnimation(FF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " containerAlphaAnimation from : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationEffect"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " containerAlphaAnimation  cancel"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$1;-><init>(Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;-><init>(Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final init()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->resetScreenSize()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00f6

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a03e4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenHeight:I

    iput v1, v0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    iput p0, v0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const v1, 0x7f080d10

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    return-void
.end method
