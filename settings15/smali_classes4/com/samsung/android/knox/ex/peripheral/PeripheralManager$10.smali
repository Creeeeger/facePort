.class Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;
.super Lcom/samsung/android/knox/ex/peripheral/IStateListener$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->registerStateListener(Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

.field public final synthetic val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    iput-object p2, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;

    invoke-direct {p0}, Lcom/samsung/android/knox/ex/peripheral/IStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getHashCode()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public onFail(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;->onFail(ILjava/lang/String;)V

    return-void
.end method

.method public onStateChange(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;->onStateChange(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;

    invoke-interface {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;->onSuccess()V

    return-void
.end method
