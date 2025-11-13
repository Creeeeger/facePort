.class public final Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mColorDescription:[[Ljava/lang/String;

.field public mVirtualCursorIndexX:I

.field public mVirtualCursorIndexY:I

.field public final mVirtualViewRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorSwatchView;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorSwatchView;Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSwatchView;

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f131193

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f13117c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f131171

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f131166

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f131153

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f131180

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f13118c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f13116a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v8

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f13117f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f131188

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f131169

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v9

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f131183

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f131194

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f13116d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v10

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f13117d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f131175

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f131167

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v11

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f131181

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f131190

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f13116b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v12

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f13117b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f131161

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f131165

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v13

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f131179

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f131152

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f131163

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f13117a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f131154

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f131164

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v15

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f131182

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f131192

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f13116c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v16

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f13117e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f131184

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f131168

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v17

    filled-new-array/range {v7 .. v17}, [[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualViewRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final getItemDescription$2(I)Ljava/lang/StringBuilder;
    .locals 10

    rem-int/lit8 v0, p1, 0xb

    iput v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    div-int/lit8 p1, p1, 0xb

    iput p1, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSwatchView;

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    aget-object v0, v2, v0

    aget-object p1, v0, p1

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-nez v0, :cond_4

    iget v9, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    if-nez v9, :cond_0

    aget-object v0, v2, v0

    aget-object v0, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-ge v9, v8, :cond_1

    aget-object v0, v2, v0

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-ge v9, v4, :cond_2

    aget-object v0, v2, v0

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v3, 0x9

    if-ge v9, v3, :cond_3

    aget-object v0, v2, v0

    aget-object v0, v0, v8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    aget-object v0, v2, v0

    aget-object v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget v9, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    if-ge v9, v8, :cond_5

    aget-object v0, v2, v0

    aget-object v0, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    if-ge v9, v4, :cond_6

    aget-object v0, v2, v0

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    aget-object v0, v2, v0

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    if-ne v0, v8, :cond_7

    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    if-ne v2, v8, :cond_7

    goto :goto_1

    :cond_7
    const-string v2, ", "

    if-nez v0, :cond_8

    iget v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    if-ne v0, v7, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mColorBrightness:[[I

    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    aget-object v0, v0, v2

    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    iget v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    if-eq v0, v7, :cond_9

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mColorBrightness:[[I

    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    aget-object v0, v0, v2

    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    :goto_1
    iget-object v0, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    aget-object v0, v0, v2

    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    aput-object p1, v0, v2

    :cond_a
    iget-object p1, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    aget-object p1, p1, v0

    iget p0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    aget-object p0, p1, p0

    return-object p0
.end method

.method public final getVirtualViewAt(FF)I
    .locals 7

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSwatchView;

    iget v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStartMargin:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mTopMargin:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    iget v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    const/high16 v2, 0x41300000    # 11.0f

    mul-float/2addr v2, v1

    iget v0, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v0

    cmpl-float v4, p1, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    sub-float p1, v2, v5

    goto :goto_0

    :cond_0
    cmpg-float v2, p1, v6

    if-gez v2, :cond_1

    move p1, v6

    :cond_1
    :goto_0
    cmpl-float v2, p2, v3

    if-ltz v2, :cond_2

    sub-float p2, v3, v5

    goto :goto_1

    :cond_2
    cmpg-float v2, p2, v6

    if-gez v2, :cond_3

    move p2, v6

    :cond_3
    :goto_1
    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    div-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    mul-int/lit8 p2, p2, 0xb

    add-int/2addr p2, p1

    return p2
.end method

.method public final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2

    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0x6e

    if-ge p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPerformActionForVirtualView(II)Z
    .locals 1

    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    rem-int/lit8 p2, p1, 0xb

    iput p2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    div-int/lit8 p1, p1, 0xb

    iput p1, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSwatchView;

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatch:[[I

    aget-object p2, v0, p2

    aget p1, p2, p1

    iget-object p2, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mListener:Landroidx/picker3/widget/SeslColorPicker$5;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroidx/picker3/widget/SeslColorPicker$5;->onColorSwatchChanged(I)V

    :cond_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mTouchHelper:Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    iget p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getItemDescription$2(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 12

    rem-int/lit8 v0, p1, 0xb

    iput v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    div-int/lit8 v1, p1, 0xb

    iput v1, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualViewRect:Landroid/graphics/Rect;

    int-to-float v3, v0

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSwatchView;

    iget v5, v4, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    mul-float/2addr v3, v5

    const/high16 v6, 0x40900000    # 4.5f

    add-float/2addr v3, v6

    iget v7, v4, Landroidx/picker3/widget/SeslColorSwatchView;->mStartMargin:I

    int-to-float v7, v7

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v8, v1

    iget v9, v4, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v6

    iget v10, v4, Landroidx/picker3/widget/SeslColorSwatchView;->mTopMargin:I

    int-to-float v10, v10

    add-float/2addr v8, v10

    float-to-int v8, v8

    const/4 v11, 0x1

    add-int/2addr v0, v11

    int-to-float v0, v0

    invoke-static {v0, v5, v6, v7}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v1, v11

    int-to-float v1, v1

    invoke-static {v1, v9, v6, v10}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v2, v3, v8, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getItemDescription$2(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualViewRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 p0, 0x10

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    iget p0, v4, Landroidx/picker3/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x4

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    invoke-virtual {p2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    invoke-virtual {p2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method
