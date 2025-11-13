.class public Lcom/android/wm/shell/freeform/DexSnappingGuideView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mMargin:I

.field public mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a037a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07032a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    return-void
.end method

.method public final show(ILandroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p1, :cond_0

    iget p1, p2, Landroid/graphics/Rect;->left:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p1, p2, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_3
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v1, :cond_7

    iget p1, p2, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    :cond_5
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p1, p2, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    mul-int/2addr p2, v2

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    :goto_0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_7
    if-ne p1, v2, :cond_8

    iget p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    mul-int/2addr v1, v2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    mul-int/2addr p2, v2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_8
    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    iget p1, p2, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_9

    iget p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    :cond_9
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p1, p2, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_a

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    mul-int/2addr p2, v2

    sub-int/2addr p1, p2

    goto :goto_1

    :cond_a
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    :goto_1
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_b
    const/4 v1, 0x3

    if-ne p1, v1, :cond_c

    iget p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_c
    const/16 v1, 0x9

    if-ne p1, v1, :cond_d

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_d
    const/4 v1, 0x6

    if-ne p1, v1, :cond_e

    iget p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_e
    const/16 v1, 0xc

    if-ne p1, v1, :cond_f

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_f
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
