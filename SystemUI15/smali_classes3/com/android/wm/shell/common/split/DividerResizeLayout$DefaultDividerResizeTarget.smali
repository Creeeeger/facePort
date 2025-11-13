.class public final Lcom/android/wm/shell/common/split/DividerResizeLayout$DefaultDividerResizeTarget;
.super Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DefaultDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final calculateBoundsForPosition(ILandroid/graphics/Rect;)V
    .locals 7

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DefaultDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerSize:I

    const/4 v6, 0x0

    move v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/common/split/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    return-void
.end method

.method public final getDirection()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Default"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
