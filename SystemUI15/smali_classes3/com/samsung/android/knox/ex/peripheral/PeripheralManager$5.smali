.class Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$5;
.super Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

.field public final synthetic val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$5;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    iput-object p2, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$5;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;

    invoke-direct {p0}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$5;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;->onFail(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$5;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
