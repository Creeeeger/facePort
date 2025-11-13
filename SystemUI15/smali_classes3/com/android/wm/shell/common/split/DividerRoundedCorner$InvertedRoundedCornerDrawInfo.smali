.class public final Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCornerPosition:I

.field public final mDeviceRadius:I

.field public final mPath:Landroid/graphics/Path;

.field public mRadius:I

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;


# direct methods
.method public static -$$Nest$mcalculateStartPos(Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;Landroid/graphics/Point;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->this$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mIsLeftRightSplit:Z

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mCornerPosition:I

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->isLeftCorner()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v5, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v5, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    iget v5, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    sub-int v5, v1, v5

    :goto_0
    iput v5, p1, Landroid/graphics/Point;->x:I

    if-eqz v3, :cond_2

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    sub-int v4, v0, p0

    :cond_2
    :goto_1
    iput v4, p1, Landroid/graphics/Point;->y:I

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->isLeftCorner()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v4, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    sub-int v4, v1, v4

    :goto_2
    iput v4, p1, Landroid/graphics/Point;->x:I

    if-eqz v3, :cond_6

    if-ne v3, v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v0, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    sub-int/2addr v1, p0

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    iget v0, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int v1, v0, p0

    :goto_4
    iput v1, p1, Landroid/graphics/Point;->y:I

    :goto_5
    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerRoundedCorner;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;-><init>(Lcom/android/wm/shell/common/split/DividerRoundedCorner;ILandroid/view/RoundedCorners;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerRoundedCorner;ILandroid/view/RoundedCorners;)V
    .locals 9

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->this$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mPath:Landroid/graphics/Path;

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mCornerPosition:I

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v3

    :goto_0
    iput v3, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mDeviceRadius:I

    if-eqz p3, :cond_2

    invoke-virtual {p3, p2}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean p1, p1, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mNeedRadiusAnim:Z

    if-nez p1, :cond_2

    invoke-virtual {p3, p2}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v2

    :cond_2
    iput v2, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iget p3, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    int-to-float v7, p3

    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move v6, v7

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->isLeftCorner()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    int-to-float v2, v2

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-eqz p2, :cond_4

    const/4 v4, 0x1

    if-ne p2, v4, :cond_5

    :cond_4
    iget p2, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    int-to-float v3, p2

    :cond_5
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    int-to-float p0, p0

    invoke-virtual {v1, v2, v3, p0, p3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    sget-object p0, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, p1, v1, p0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method


# virtual methods
.method public final isLeftCorner()Z
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mCornerPosition:I

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
