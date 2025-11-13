.class Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$6;
.super Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

.field public final synthetic val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$6;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    iput-object p2, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$6;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;

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

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$6;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;

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

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$6;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
