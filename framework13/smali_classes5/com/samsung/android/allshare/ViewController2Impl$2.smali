.class Lcom/samsung/android/allshare/ViewController2Impl$2;
.super Lcom/samsung/android/allshare/AllShareEventHandler;
.source "ViewController2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ViewController2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/ViewController2Impl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ViewController2Impl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ViewController2Impl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 256
    iput-object p1, p0, Lcom/samsung/android/allshare/ViewController2Impl$2;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 1
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 259
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 260
    .local v0, "resBundle":Landroid/os/Bundle;
    nop

    .line 261
    return-void
.end method
