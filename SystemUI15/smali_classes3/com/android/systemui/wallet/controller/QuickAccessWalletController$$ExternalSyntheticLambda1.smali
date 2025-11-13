.class public final synthetic Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda1;->f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda1;->f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    iget-object v1, v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    invoke-virtual {v1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->reCreateWalletClient()V

    iget-object v1, v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    invoke-virtual {v1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->updateWalletPreference()V

    iget-object v0, v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->queryWalletCards(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$$ExternalSyntheticLambda1;->f$1:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    invoke-virtual {v0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->reCreateWalletClient()V

    invoke-virtual {v0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->updateWalletPreference()V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->queryWalletCards(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
