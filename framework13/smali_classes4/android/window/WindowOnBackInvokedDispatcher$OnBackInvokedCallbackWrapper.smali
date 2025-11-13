.class Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;
.super Landroid/window/IOnBackInvokedCallback$Stub;
.source "WindowOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnBackInvokedCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/window/OnBackInvokedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/window/OnBackInvokedCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 237
    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Stub;-><init>()V

    .line 238
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 239
    return-void
.end method

.method private blacklist getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;
    .locals 2

    .line 293
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    .line 294
    .local v0, "callback":Landroid/window/OnBackInvokedCallback;
    instance-of v1, v0, Landroid/window/OnBackAnimationCallback;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/window/OnBackAnimationCallback;

    goto :goto_0

    .line 295
    :cond_0
    const/4 v1, 0x0

    .line 294
    :goto_0
    return-object v1
.end method


# virtual methods
.method synthetic blacklist lambda$onBackCancelled$2$android-window-WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper()V
    .locals 1

    .line 264
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    .line 265
    .local v0, "callback":Landroid/window/OnBackAnimationCallback;
    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    .line 268
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$onBackInvoked$3$android-window-WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper()V
    .locals 3

    .line 274
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    .line 278
    .local v0, "callback":Landroid/window/OnBackInvokedCallback;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBackInvoked, viewRoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/window/WindowOnBackInvokedDispatcher;->-$$Nest$sfgetsViewRootTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowOnBackDispatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-nez v0, :cond_0

    .line 284
    return-void

    .line 287
    :cond_0
    invoke-interface {v0}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    .line 288
    return-void
.end method

.method synthetic blacklist lambda$onBackProgressed$1$android-window-WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper(Landroid/window/BackEvent;)V
    .locals 1
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 254
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    .line 255
    .local v0, "callback":Landroid/window/OnBackAnimationCallback;
    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0, p1}, Landroid/window/OnBackAnimationCallback;->onBackProgressed(Landroid/window/BackEvent;)V

    .line 258
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$onBackStarted$0$android-window-WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper()V
    .locals 1

    .line 244
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    .line 245
    .local v0, "callback":Landroid/window/OnBackAnimationCallback;
    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0}, Landroid/window/OnBackAnimationCallback;->onBackStarted()V

    .line 248
    :cond_0
    return-void
.end method

.method public blacklist onBackCancelled()V
    .locals 2

    .line 263
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method

.method public blacklist onBackInvoked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void
.end method

.method public blacklist onBackProgressed(Landroid/window/BackEvent;)V
    .locals 2
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 253
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method

.method public blacklist onBackStarted()V
    .locals 2

    .line 243
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method
