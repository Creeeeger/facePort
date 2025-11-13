.class final Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver;
.super Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;
.source "IRemoteInputConnectionInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntResultReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver<",
        "Ljava/util/function/IntConsumer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatch$0(Ljava/util/function/IntConsumer;I)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist dispatch(Ljava/util/concurrent/Executor;Ljava/lang/Object;ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    check-cast p2, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver;->dispatch(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;ILandroid/os/Bundle;)V

    return-void
.end method

.method protected blacklist dispatch(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;ILandroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
