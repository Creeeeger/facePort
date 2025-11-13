.class public interface abstract Landroid/media/RemoteDisplay$Listener;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract blacklist onDisplayChanged(Landroid/view/Surface;III)V
.end method

.method public abstract blacklist onDisplayConnected(Landroid/view/Surface;IIIILjava/lang/String;)V
.end method

.method public abstract greylist-max-o onDisplayDisconnected()V
.end method

.method public abstract greylist-max-o onDisplayError(I)V
.end method
