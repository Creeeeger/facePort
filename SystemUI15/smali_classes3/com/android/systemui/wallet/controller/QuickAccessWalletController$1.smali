.class public final Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

.field public final synthetic val$cardsRetriever:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Landroid/os/Handler;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    iput-object p3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;->val$cardsRetriever:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    iget-object p1, p1, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;->val$cardsRetriever:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    new-instance v1, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
