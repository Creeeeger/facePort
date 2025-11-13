.class public final Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;
.super Lcom/android/systemui/decor/CornerDecorProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final alignedBound1:I

.field public final alignedBound2:I

.field public final isTop:Z

.field public final roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

.field public final viewId:I


# direct methods
.method public constructor <init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/decor/CornerDecorProvider;-><init>()V

    iput p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->viewId:I

    iput p2, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound1:I

    iput p3, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound2:I

    iput-object p4, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-virtual {p0}, Lcom/android/systemui/decor/CornerDecorProvider;->getAlignedBounds()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->isTop:Z

    return-void
.end method


# virtual methods
.method public final getAlignedBound1()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound1:I

    return p0
.end method

.method public final getAlignedBound2()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound2:I

    return p0
.end method

.method public final getViewId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->viewId:I

    return p0
.end method

.method public final inflateView(Landroid/content/Context;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->viewId:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->initView(Landroid/widget/ImageView;II)V

    iget-boolean p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->isTop:Z

    iget-object p4, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p4}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getTopRoundedSize()Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getBottomRoundedSize()Landroid/util/Size;

    move-result-object p1

    :goto_0
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iget v2, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound1:I

    invoke-static {v2, p3}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImplKt;->access$toLayoutGravity(II)I

    move-result v2

    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound2:I

    invoke-static {p0, p3}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImplKt;->access$toLayoutGravity(II)I

    move-result p0

    or-int/2addr p0, v2

    invoke-direct {p4, v1, p1, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p2, v0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final initView(Landroid/widget/ImageView;II)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    iget-boolean v1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->isTop:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getTopRoundedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getBottomRoundedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    const v0, 0x7f080fce

    goto :goto_1

    :cond_2
    const v0, 0x7f080fcb

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/decor/CornerDecorProvider;->getAlignedBounds()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_e

    if-eq p2, v0, :cond_b

    const/4 v0, 0x3

    if-eq p2, v0, :cond_8

    if-eqz v1, :cond_4

    if-eqz p0, :cond_4

    :cond_3
    :goto_3
    move v3, v5

    goto :goto_7

    :cond_4
    if-eqz v1, :cond_6

    if-nez p0, :cond_6

    :cond_5
    :goto_4
    move v2, v4

    move v6, v5

    move v5, v3

    move v3, v6

    goto :goto_7

    :cond_6
    if-nez v1, :cond_f

    if-eqz p0, :cond_f

    :cond_7
    :goto_5
    move v2, v4

    goto :goto_7

    :cond_8
    if-eqz v1, :cond_9

    if-eqz p0, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v1, :cond_a

    if-nez p0, :cond_a

    goto :goto_3

    :cond_a
    if-nez v1, :cond_5

    if-nez p0, :cond_f

    goto :goto_4

    :cond_b
    if-eqz v1, :cond_c

    if-eqz p0, :cond_c

    goto :goto_4

    :cond_c
    if-eqz v1, :cond_d

    if-eqz p0, :cond_f

    :cond_d
    if-nez v1, :cond_7

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_e
    if-eqz v1, :cond_10

    if-nez p0, :cond_f

    goto :goto_6

    :cond_f
    move v2, v4

    goto :goto_3

    :cond_10
    :goto_6
    if-eqz v1, :cond_11

    if-nez p0, :cond_11

    goto :goto_5

    :cond_11
    if-nez v1, :cond_3

    if-eqz p0, :cond_3

    goto :goto_4

    :goto_7
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final onReloadResAndMeasure(Landroid/view/View;IIILjava/lang/String;)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-interface {v0, p5, p2}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->updateDisplayUniqueId(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object p2, p1

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->initView(Landroid/widget/ImageView;II)V

    iget-boolean p4, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->isTop:Z

    if-eqz p4, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getTopRoundedSize()Landroid/util/Size;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getBottomRoundedSize()Landroid/util/Size;

    move-result-object p4

    :goto_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p5

    iput p5, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p4

    iput p4, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget p4, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound1:I

    invoke-static {p4, p3}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImplKt;->access$toLayoutGravity(II)I

    move-result p4

    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound2:I

    invoke-static {p0, p3}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImplKt;->access$toLayoutGravity(II)I

    move-result p0

    or-int/2addr p0, p4

    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
