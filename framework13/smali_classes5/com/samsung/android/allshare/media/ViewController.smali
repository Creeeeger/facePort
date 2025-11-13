.class public abstract Lcom/samsung/android/allshare/media/ViewController;
.super Ljava/lang/Object;
.source "ViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/ViewController$IResponseListener;,
        Lcom/samsung/android/allshare/media/ViewController$IEventListener;
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract blacklist connect()V
.end method

.method public abstract blacklist disconnect()V
.end method

.method public abstract blacklist getViewHeight()I
.end method

.method public abstract blacklist getViewWidth()I
.end method

.method public abstract blacklist isConnected()Z
.end method

.method public abstract blacklist move(IIZ)V
.end method

.method public abstract blacklist setEventListener(Lcom/samsung/android/allshare/media/ViewController$IEventListener;)V
.end method

.method public abstract blacklist setResponseListener(Lcom/samsung/android/allshare/media/ViewController$IResponseListener;)V
.end method

.method public abstract blacklist setViewAngle(I)V
.end method

.method public abstract blacklist zoom(IIII)V
.end method

.method public abstract blacklist zoom(IIIIII)V
.end method
