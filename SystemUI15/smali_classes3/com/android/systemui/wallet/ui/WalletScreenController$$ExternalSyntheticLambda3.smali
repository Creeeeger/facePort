.class public final synthetic Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallet/ui/WalletScreenController;

.field public final synthetic f$1:Landroid/service/quickaccesswallet/GetWalletCardsError;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallet/ui/WalletScreenController;Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wallet/ui/WalletScreenController;

    iput-object p2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda3;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wallet/ui/WalletScreenController;

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda3;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsError;

    iget-boolean v1, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    invoke-virtual {p0}, Landroid/service/quickaccesswallet/GetWalletCardsError;->getMessage()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f13148d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/wallet/ui/WalletView;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/android/systemui/wallet/ui/WalletView;->mErrorView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, v0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarouselContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, v0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method
