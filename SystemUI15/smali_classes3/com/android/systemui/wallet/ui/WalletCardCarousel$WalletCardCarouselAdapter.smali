.class public final Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mData:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;-><init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    check-cast p0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {p0}, Landroid/service/quickaccesswallet/WalletCard;->getCardId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    check-cast p1, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    iput-object v0, p1, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;->mCardViewInfo:Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    iget-object v2, v1, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {v2}, Landroid/service/quickaccesswallet/WalletCard;->getCardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;->mImageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    iget-object v2, p1, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mCardDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v1, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {v1}, Landroid/service/quickaccesswallet/WalletCard;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object p1, p1, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;->mCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;ILcom/android/systemui/wallet/ui/WalletCardViewInfo;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const p1, 0x7f0d056e

    const/4 v0, 0x0

    invoke-static {p2, p1, p2, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;

    invoke-direct {p2, p1}, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;-><init>(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iget v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCornerRadiusPx:F

    iget-object v1, p2, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;->mCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1, v0}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardWidthPx:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardHeightPx:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
