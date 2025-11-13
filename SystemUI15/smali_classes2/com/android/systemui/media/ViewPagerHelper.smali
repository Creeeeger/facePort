.class public final Lcom/android/systemui/media/ViewPagerHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

.field public final isRTLSupplier:Ljava/util/function/IntSupplier;

.field public final mediaFramesSupplier:Ljava/util/function/Supplier;

.field public final mediaPlayerDataFunction:Ljava/util/function/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/ViewPagerHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/ViewPagerHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/BiFunction;Ljava/util/function/IntSupplier;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Boolean;",
            "Lcom/android/systemui/media/MediaType;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/media/MediaType;",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/function/Function<",
            "Lcom/android/systemui/media/MediaType;",
            "Lcom/android/systemui/media/SecMediaPlayerData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/ViewPagerHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    iput-object p2, p0, Lcom/android/systemui/media/ViewPagerHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    iput-object p3, p0, Lcom/android/systemui/media/ViewPagerHelper;->mediaFramesSupplier:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/android/systemui/media/ViewPagerHelper;->mediaPlayerDataFunction:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final getCurrentPage(Lcom/android/systemui/media/MediaType;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/ViewPagerHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/ViewPagerHelper;->getPlayersCount(Lcom/android/systemui/media/MediaType;)I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getPlayersCount(Lcom/android/systemui/media/MediaType;)I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/ViewPagerHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/ViewPagerHelper;->mediaFramesSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_1

    const p1, 0x7f0a0ab2

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final setCurrentPage(IZLcom/android/systemui/media/MediaType;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/ViewPagerHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/systemui/media/ViewPagerHelper;->getPlayersCount(Lcom/android/systemui/media/MediaType;)I

    move-result v0

    sub-int/2addr v0, v1

    sub-int p1, v0, p1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method
