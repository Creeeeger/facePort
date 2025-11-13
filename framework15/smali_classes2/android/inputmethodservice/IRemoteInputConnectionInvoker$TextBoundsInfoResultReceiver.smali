.class final Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver;
.super Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;
.source "IRemoteInputConnectionInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextBoundsInfoResultReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver<",
        "Ljava/util/function/Consumer<",
        "Landroid/view/inputmethod/TextBoundsInfoResult;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/TextBoundsInfoResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatch$0(Ljava/util/function/Consumer;Landroid/view/inputmethod/TextBoundsInfoResult;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

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

    check-cast p2, Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver;->dispatch(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;ILandroid/os/Bundle;)V

    return-void
.end method

.method protected blacklist dispatch(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/TextBoundsInfoResult;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/view/inputmethod/TextBoundsInfoResult;

    invoke-static {p4}, Landroid/view/inputmethod/TextBoundsInfo;->createFromBundle(Landroid/os/Bundle;)Landroid/view/inputmethod/TextBoundsInfo;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Landroid/view/inputmethod/TextBoundsInfoResult;-><init>(ILandroid/view/inputmethod/TextBoundsInfo;)V

    new-instance v1, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, v0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/view/inputmethod/TextBoundsInfoResult;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
