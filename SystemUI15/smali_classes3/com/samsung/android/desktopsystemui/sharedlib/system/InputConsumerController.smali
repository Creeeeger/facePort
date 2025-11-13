.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "[DS]InputConsumerController"


# instance fields
.field private mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

.field private mListener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;

.field private final mName:Ljava/lang/String;

.field private mRegistrationListener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;

.field private final mToken:Landroid/os/IBinder;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/view/IWindowManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;)Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mListener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;

    return-object p0
.end method

.method public static getPipInputConsumer()Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;
    .locals 3

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const-string v2, "pip_input_consumer"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;-><init>(Landroid/view/IWindowManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRecentsAnimationInputConsumer()Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;
    .locals 3

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const-string/jumbo v2, "recents_animation_input_consumer"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;-><init>(Landroid/view/IWindowManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    const-string v0, "  "

    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "registered="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public isRegistered()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerInputConsumer()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->registerInputConsumer(Z)V

    return-void
.end method

.method public registerInputConsumer(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->destroyInputConsumer(Landroid/os/IBinder;I)Z

    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1, v0}, Landroid/view/IWindowManager;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :goto_0
    sget-object v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create input consumer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_1
    sget-object v3, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerInputConsumer: IllegalStateException : "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->destroyInputConsumer(Landroid/os/IBinder;I)Z

    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1, v0}, Landroid/view/IWindowManager;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :goto_2
    sget-object v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create input consumer in 2nd attempt "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_3
    sget-object v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerInputConsumer: IllegalStateException in 2nd attempt : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    new-instance v1, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object p1

    goto :goto_5

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    :goto_5
    invoke-direct {v1, p0, v0, v2, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mRegistrationListener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_1
    return-void
.end method

.method public setInputListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mListener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;

    return-void
.end method

.method public setRegistrationListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mRegistrationListener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_1
    return-void
.end method

.method public unregisterInputConsumer()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowManager;->destroyInputConsumer(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to destroy input consumer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    invoke-virtual {v1}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mRegistrationListener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_0
    return-void
.end method
