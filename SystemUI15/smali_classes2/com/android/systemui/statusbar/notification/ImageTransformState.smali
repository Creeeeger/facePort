.class public Lcom/android/systemui/statusbar/notification/ImageTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sInstancePool:Landroid/util/Pools$SimplePool;


# instance fields
.field public mIcon:Landroid/graphics/drawable/Icon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-void
.end method


# virtual methods
.method public final appear(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 2

    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x43160000    # 150.0f

    sub-float/2addr p1, v0

    const/high16 v0, 0x43520000    # 210.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    sget-object p2, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    check-cast p2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    :goto_0
    return-void
.end method

.method public final disappear(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 2

    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x43160000    # 150.0f

    sub-float/2addr p1, v1

    const/high16 v1, 0x43520000    # 210.0f

    div-float/2addr p1, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    sub-float/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;FZ)V

    sget-object p2, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    check-cast p2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    :goto_0
    return-void
.end method

.method public initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/ViewTransformationHelper;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/ViewTransformationHelper;)V

    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const p2, 0x7f0a0521

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mIcon:Landroid/graphics/drawable/Icon;

    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/notification/ImageTransformState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/ImageTransformState;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/systemui/statusbar/notification/ImageTransformState;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mIcon:Landroid/graphics/drawable/Icon;

    if-eq p0, p1, :cond_2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2
.end method
