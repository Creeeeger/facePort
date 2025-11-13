.class public final synthetic Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

.field public final synthetic f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    iput-object p2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda0;->f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda0;->f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.app.role.WALLET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
