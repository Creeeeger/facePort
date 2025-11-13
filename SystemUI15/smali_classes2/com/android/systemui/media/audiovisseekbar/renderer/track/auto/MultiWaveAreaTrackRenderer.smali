.class public final Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;
.super Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final cycleCount:I

.field public final evaluator:Landroid/animation/ArgbEvaluator;

.field public final leftCornerBounds:Landroid/graphics/RectF;

.field public final leftTopCornerPath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

.field public final numWaves:I

.field public final path:Landroid/graphics/Path;

.field public final pathPaint:Landroid/graphics/Paint;

.field public phase:F

.field public final phaseShift:F

.field public final scalePath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

.field public final stepX:I

.field public final widthScale:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;-><init>(Landroid/view/View;Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->numWaves:I

    const/4 p2, 0x3

    iput p2, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->cycleCount:I

    const p2, -0x43333333    # -0.025f

    iput p2, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->phaseShift:F

    iput p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->stepX:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->pathPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->path:Landroid/graphics/Path;

    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->evaluator:Landroid/animation/ArgbEvaluator;

    new-instance p1, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    invoke-direct {p1}, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->scalePath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    new-instance p1, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;-><init>(FJLandroid/view/animation/Interpolator;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->widthScale:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    new-instance p1, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    invoke-direct {p1}, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftTopCornerPath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftCornerBounds:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final onLayout(Landroid/graphics/RectF;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->onLayout(Landroid/graphics/RectF;)V

    sget-object v0, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    move-result v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftCornerBounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, p1

    invoke-virtual {v3, p1, v1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftTopCornerPath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftCornerBounds:Landroid/graphics/RectF;

    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, p0, v0, v1}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    invoke-virtual {p1}, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->updatePath()V

    return-void
.end method

.method public final onThumbLocationChanged(F)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->onThumbLocationChanged(F)V

    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->widthScale:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    const/high16 v3, 0x41000000    # 8.0f

    if-ltz p1, :cond_0

    sget-object v4, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    if-ge p1, v4, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, p1}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animateTo(F)V

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->cycleCount:I

    mul-int/2addr v6, v0

    div-int/2addr v5, v6

    if-ge p1, v5, :cond_1

    if-gt v4, p1, :cond_1

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {v2, p1}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animateTo(F)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v6

    iget-object v5, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-gt p1, v5, :cond_2

    if-gt v4, p1, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animateTo(F)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->scalePath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    sget-object v2, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {v3}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    move-result v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-virtual {p1, v2, v1, v3, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p1}, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->updatePath()V

    return-void
.end method
