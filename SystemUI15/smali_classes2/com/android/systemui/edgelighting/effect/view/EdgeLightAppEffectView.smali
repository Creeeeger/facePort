.class public final Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;
.super Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final lineDuration:J

.field public repeatColorAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    const-string p1, "EdgeLightAppEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->lineDuration:J

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    const-string p1, "EdgeLightAppEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    const-wide/16 p1, 0x64

    iput-wide p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->lineDuration:J

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    const-string p1, "EdgeLightAppEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    const-wide/16 p1, 0x64

    iput-wide p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->lineDuration:J

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    const-string p1, "EdgeLightAppEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    const-wide/16 p1, 0x64

    iput-wide p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->lineDuration:J

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->init()V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->init()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    return-void
.end method

.method public final setMainColor(I)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/4 v0, 0x2

    aget v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    aput v1, p1, v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    aget v1, p1, v0

    sub-float/2addr v1, v2

    aput v1, p1, v0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    iget p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method
