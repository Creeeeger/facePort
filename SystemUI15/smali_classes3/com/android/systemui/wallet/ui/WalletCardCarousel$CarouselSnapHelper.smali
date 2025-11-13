.class public final Lcom/android/systemui/wallet/ui/WalletCardCarousel$CarouselSnapHelper;
.super Landroidx/recyclerview/widget/PagerSnapHelper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CarouselSnapHelper;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-direct {p0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CarouselSnapHelper;-><init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)V

    return-void
.end method


# virtual methods
.method public final createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 2

    new-instance v0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CarouselSnapHelper$1;

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CarouselSnapHelper;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CarouselSnapHelper$1;-><init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel$CarouselSnapHelper;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public final findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;

    iget-object v0, v0, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;->mCardViewInfo:Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CarouselSnapHelper;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mSelectionListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;

    check-cast v1, Lcom/android/systemui/wallet/ui/WalletScreenController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->onCardSelected(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;)V

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardScrollListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;

    const/4 v1, 0x0

    check-cast p0, Lcom/android/systemui/wallet/ui/WalletView;

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/systemui/wallet/ui/WalletView;->onCardScroll(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;Lcom/android/systemui/wallet/ui/WalletCardViewInfo;F)V

    return-object p1
.end method
