.class public final Lcom/android/systemui/media/CarouselHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final contextSupplier:Ljava/util/function/Supplier;

.field public final getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

.field public final indicator:Lcom/android/systemui/qs/SecPageIndicator;

.field public final isRTLSupplier:Ljava/util/function/IntSupplier;

.field public final mediaPlayerDataFunction:Ljava/util/function/Function;

.field public pageIndicatorPosition:F

.field public final type:Lcom/android/systemui/media/MediaType;

.field public userTouch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/CarouselHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/CarouselHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILjava/util/function/Supplier;Ljava/util/function/BiFunction;Ljava/util/function/IntSupplier;Ljava/util/function/Function;Lcom/android/systemui/media/MediaType;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Boolean;",
            "Lcom/android/systemui/media/MediaType;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/Function<",
            "Lcom/android/systemui/media/MediaType;",
            "Lcom/android/systemui/media/SecMediaPlayerData;",
            ">;",
            "Lcom/android/systemui/media/MediaType;",
            "Landroidx/viewpager/widget/ViewPager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/media/CarouselHelper;->contextSupplier:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/android/systemui/media/CarouselHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    iput-object p5, p0, Lcom/android/systemui/media/CarouselHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    iput-object p6, p0, Lcom/android/systemui/media/CarouselHelper;->mediaPlayerDataFunction:Ljava/util/function/Function;

    iput-object p7, p0, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    new-instance p3, Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;-><init>(Lcom/android/systemui/media/CarouselHelper;)V

    invoke-virtual {p8, p3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p8, p2}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    const p2, 0x7f0a0ab7

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/SecPageIndicator;

    iget p2, p0, Lcom/android/systemui/media/CarouselHelper;->pageIndicatorPosition:F

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    const p2, 0x7f0605c7

    iput p2, p1, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColorResId:I

    const p2, 0x7f060691

    iput p2, p1, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColorResId:I

    iget-object p2, p1, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p1, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColorResId:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iget-object p3, p1, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget p4, p1, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColorResId:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p2, p1, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    iput p3, p1, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    iput-object p1, p0, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {p0}, Lcom/android/systemui/media/CarouselHelper;->updatePageIndicatorNumberPages()V

    return-void
.end method


# virtual methods
.method public final updatePageIndicatorNumberPages()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/CarouselHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    return-void
.end method
