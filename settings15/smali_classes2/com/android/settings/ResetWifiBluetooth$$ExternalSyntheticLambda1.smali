.class public final synthetic Lcom/android/settings/ResetWifiBluetooth$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/ResetWifiBluetooth;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/ResetWifiBluetooth;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/ResetWifiBluetooth$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/ResetWifiBluetooth;

    iput-object p2, p0, Lcom/android/settings/ResetWifiBluetooth$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ResetWifiBluetooth$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/ResetWifiBluetooth;

    iget-object p0, p0, Lcom/android/settings/ResetWifiBluetooth$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {v0, p0}, Lcom/android/settings/ResetWifiBluetooth;->endOfReset(Ljava/lang/Exception;)V

    return-void
.end method
