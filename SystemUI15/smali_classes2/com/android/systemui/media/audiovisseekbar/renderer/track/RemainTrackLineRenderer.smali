.class public final Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;
.super Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final trackBorderPaint:Landroid/graphics/Paint;

.field public final trackPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;-><init>(Landroid/view/View;Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p2, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v2, Landroid/graphics/CornerPathEffect;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;->trackPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p2, p2, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackBorderColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;->trackBorderPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final onThumbLocationChanged(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    move-result v1

    add-float/2addr v1, p1

    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {}, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->getRemainTrackBorderBound()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {v1, p0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(FF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->left:F

    return-void
.end method
