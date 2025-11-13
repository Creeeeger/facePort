.class public final Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;
.super Lcom/android/systemui/decor/DecorProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final alignedBounds:Ljava/util/List;

.field public final viewId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/decor/DecorProvider;-><init>()V

    iput p1, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;->viewId:I

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;->alignedBounds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAlignedBounds()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;->alignedBounds:Ljava/util/List;

    return-object p0
.end method

.method public final getViewId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;->viewId:I

    return p0
.end method

.method public final inflateView(Landroid/content/Context;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImpl;->viewId:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setId(I)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const p0, 0x7f080fcd

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v0, p3}, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImplKt;->access$setRotation(Landroid/widget/ImageView;I)V

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x11

    const/4 p3, -0x1

    invoke-direct {p0, p3, p3, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p2, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final onReloadResAndMeasure(Landroid/view/View;IIILjava/lang/String;)V
    .locals 0

    instance-of p0, p1, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, p3}, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderImplKt;->access$setRotation(Landroid/widget/ImageView;I)V

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
