.class public final Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mOldState:I

.field public final synthetic this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->mOldState:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;-><init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    if-nez p2, :cond_0

    iget p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->mOldState:I

    if-eq p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_0
    iput p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->mOldState:I

    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    iput p3, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    iput p3, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardCenterToScreenCenterDistancePx:F

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->updateCardView(Landroid/view/View;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    if-eq p3, p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    const/4 p1, 0x1

    :cond_2
    add-int/2addr p3, p1

    if-ltz p3, :cond_4

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    iget-object p1, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p3, p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    iget-object p1, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    iget p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    iget-object p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    iget-object p2, p2, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    iget p3, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardEdgeToCenterDistance:F

    div-float/2addr p3, v0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardScrollListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;

    check-cast p0, Lcom/android/systemui/wallet/ui/WalletView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/wallet/ui/WalletView;->onCardScroll(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;Lcom/android/systemui/wallet/ui/WalletCardViewInfo;F)V

    :cond_4
    :goto_1
    return-void
.end method
