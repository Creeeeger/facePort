.class public abstract Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bounds:Landroid/graphics/RectF;

.field public final config:Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

.field public motionActivity:F

.field public thumbX:F

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->config:Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->motionActivity:F

    return-void
.end method


# virtual methods
.method public final getCenterY()F
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sget-object v0, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    move-result v0

    sub-float/2addr p0, v0

    return p0
.end method

.method public onLayout(Landroid/graphics/RectF;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public onThumbLocationChanged(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->thumbX:F

    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
