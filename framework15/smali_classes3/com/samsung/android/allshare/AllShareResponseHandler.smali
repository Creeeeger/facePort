.class abstract Lcom/samsung/android/allshare/AllShareResponseHandler;
.super Landroid/os/Handler;
.source "AllShareResponseHandler.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AllShareResponseHandler"


# direct methods
.method protected constructor blacklist <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "RES_MSG_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-virtual {p0, v1}, Lcom/samsung/android/allshare/AllShareResponseHandler;->handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V

    return-void
.end method

.method public abstract blacklist handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
.end method
