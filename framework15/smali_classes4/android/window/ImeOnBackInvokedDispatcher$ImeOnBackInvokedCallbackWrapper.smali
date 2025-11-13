.class Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;
.super Landroid/window/IOnBackInvokedCallback$Stub;
.source "ImeOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ImeOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImeOnBackInvokedCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/window/OnBackInvokedCallback;

.field final synthetic blacklist this$0:Landroid/window/ImeOnBackInvokedDispatcher;


# direct methods
.method public static synthetic blacklist $r8$lambda$X48esE3n_K0_3dxVBULk-k1qUE8(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;->lambda$maybeRunOnAnimationCallback$2(Ljava/util/function/Consumer;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/window/ImeOnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;->this$0:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;->mCallback:Landroid/window/OnBackInvokedCallback;

    return-void
.end method

.method private synthetic blacklist lambda$maybeRunOnAnimationCallback$2(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;->mCallback:Landroid/window/OnBackInvokedCallback;

    check-cast v0, Landroid/window/OnBackAnimationCallback;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onBackProgressed$1(Landroid/window/BackMotionEvent;Landroid/window/OnBackAnimationCallback;)V
    .locals 1

    nop

    invoke-static {p0}, Landroid/window/BackEvent;->fromBackMotionEvent(Landroid/window/BackMotionEvent;)Landroid/window/BackEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/window/OnBackAnimationCallback;->onBackProgressed(Landroid/window/BackEvent;)V

    return-void
.end method

.method static synthetic blacklist lambda$onBackStarted$0(Landroid/window/BackMotionEvent;Landroid/window/OnBackAnimationCallback;)V
    .locals 1

    nop

    invoke-static {p0}, Landroid/window/BackEvent;->fromBackMotionEvent(Landroid/window/BackMotionEvent;)Landroid/window/BackEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/window/OnBackAnimationCallback;->onBackStarted(Landroid/window/BackEvent;)V

    return-void
.end method

.method private blacklist maybeRunOnAnimationCallback(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/window/OnBackAnimationCallback;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;->mCallback:Landroid/window/OnBackInvokedCallback;

    instance-of v0, v0, Landroid/window/OnBackAnimationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;->this$0:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-static {v0}, Landroid/window/ImeOnBackInvokedDispatcher;->-$$Nest$fgetmHandler(Landroid/window/ImeOnBackInvokedDispatcher;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist onBackCancelled()V
    .locals 1

    new-instance v0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;->maybeRunOnAnimationCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onBackInvoked()V
    .locals 3

    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;->this$0:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-static {v0}, Landroid/window/ImeOnBackInvokedDispatcher;->-$$Nest$fgetmHandler(Landroid/window/ImeOnBackInvokedDispatcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;->mCallback:Landroid/window/OnBackInvokedCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onBackProgressed(Landroid/window/BackMotionEvent;)V
    .locals 1

    new-instance v0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/window/BackMotionEvent;)V

    invoke-direct {p0, v0}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;->maybeRunOnAnimationCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onBackStarted(Landroid/window/BackMotionEvent;)V
    .locals 1

    new-instance v0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/window/BackMotionEvent;)V

    invoke-direct {p0, v0}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;->maybeRunOnAnimationCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist setTriggerBack(Z)V
    .locals 0

    return-void
.end method
