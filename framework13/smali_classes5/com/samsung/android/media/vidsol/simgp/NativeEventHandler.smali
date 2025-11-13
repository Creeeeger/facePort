.class public Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;
.super Landroid/os/Handler;
.source "NativeEventHandler.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mOnEventListener:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 16
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;->mOnEventListener:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;

    if-eqz v0, :cond_1

    .line 26
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->INFO:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;

    invoke-virtual {v1}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;->mOnEventListener:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;->onInfo(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;->mOnEventListener:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;->onError(ILandroid/os/Bundle;)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method blacklist setOnEventListener(Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;->mOnEventListener:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;

    .line 21
    return-void
.end method
