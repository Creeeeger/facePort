.class final Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController$allWalletCards$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController$allWalletCards$1$1$1;->this$0:Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController$allWalletCards$1$1$1;->this$0:Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;->walletController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    sget-object v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->WALLET_PREFERENCE_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    sget-object v1, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->DEFAULT_PAYMENT_APP_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    sget-object v2, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->DEFAULT_WALLET_APP_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->unregisterWalletChangeObservers([Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
