.class Landroid/widget/inline/InlineContentView$4;
.super Landroid/view/SurfaceView;
.source "InlineContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/inline/InlineContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/inline/InlineContentView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/inline/InlineContentView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected blacklist onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V
    .locals 7

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmParentPosition(Landroid/widget/inline/InlineContentView;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmParentPosition(Landroid/widget/inline/InlineContentView;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int v0, p3, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v1}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmParentScale(Landroid/widget/inline/InlineContentView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v1

    float-to-int p3, v0

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmParentPosition(Landroid/widget/inline/InlineContentView;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int v0, p4, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v1}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmParentScale(Landroid/widget/inline/InlineContentView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v1

    float-to-int p4, v0

    :cond_0
    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->getScaleX()F

    move-result p5

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->getScaleY()F

    move-result p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    return-void
.end method
