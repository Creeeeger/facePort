.class public final synthetic Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/systemui/wallet/ui/WalletCardViewInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;ILcom/android/systemui/wallet/ui/WalletCardViewInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    iput p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    iget v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    iget-object p1, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iget v1, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mSelectionListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;

    check-cast p0, Lcom/android/systemui/wallet/ui/WalletScreenController;

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mSelectionListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;

    check-cast p1, Lcom/android/systemui/wallet/ui/WalletScreenController;

    iget-object v0, p1, Lcom/android/systemui/wallet/ui/WalletScreenController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    iget-object v0, v0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/service/quickaccesswallet/WalletCard;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/android/systemui/wallet/ui/WalletScreenController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/wallet/ui/WalletScreenController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_UNLOCK_FROM_CARD_CLICK:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_4
    iget-object v0, p1, Lcom/android/systemui/wallet/ui/WalletScreenController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_CLICK_CARD:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p1, Lcom/android/systemui/wallet/ui/WalletScreenController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    check-cast p0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {p0}, Landroid/service/quickaccesswallet/WalletCard;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    :cond_5
    :goto_0
    return-void
.end method
