.class public final Landroidx/viewpager2/widget/PageTransformerAdapter;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IIF)V
    .locals 3

    iget-object p2, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    if-nez p2, :cond_0

    return-void

    :cond_0
    neg-float p2, p3

    const/4 p3, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget-object v2, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    invoke-interface {v2, v1, v0}, Landroidx/viewpager2/widget/ViewPager2$PageTransformer;->transformPage(Landroid/view/View;F)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    const-string p2, "LayoutManager returned a null child at pos "

    const-string v0, "/"

    const-string v1, " while transforming pages"

    invoke-static {p2, v0, p3, p1, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    return-void
.end method
