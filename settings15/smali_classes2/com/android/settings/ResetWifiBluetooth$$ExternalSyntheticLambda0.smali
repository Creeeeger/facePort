.class public final synthetic Lcom/android/settings/ResetWifiBluetooth$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/ResetWifiBluetooth;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/ResetWifiBluetooth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/ResetWifiBluetooth$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/ResetWifiBluetooth;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/ResetWifiBluetooth$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/ResetWifiBluetooth;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ResetWifiBluetooth;->resetOperation()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/ResetWifiBluetooth;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ResetWifiBluetooth$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/ResetWifiBluetooth$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/ResetWifiBluetooth;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
