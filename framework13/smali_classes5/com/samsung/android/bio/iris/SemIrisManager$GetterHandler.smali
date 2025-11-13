.class Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;
.super Landroid/os/Handler;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetterHandler"
.end annotation


# static fields
.field private static final blacklist IMAGE_GETTER_CALLBACK:I = 0x1


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 2296
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2298
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 2304
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2306
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Looper;Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .line 2314
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2318
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2324
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist postDelayedGetterCallback(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .line 2338
    if-eqz p1, :cond_0

    .line 2344
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2346
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2348
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2350
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2352
    return-void

    .line 2340
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist postGetterCallback(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2330
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;->postDelayedGetterCallback(Ljava/lang/Runnable;J)V

    .line 2332
    return-void
.end method

.method public blacklist removeAllGetterCallbacks()V
    .locals 1

    .line 2358
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;->removeMessages(I)V

    .line 2360
    return-void
.end method
