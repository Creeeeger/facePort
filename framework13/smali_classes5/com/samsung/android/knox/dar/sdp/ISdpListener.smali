.class public interface abstract Lcom/samsung/android/knox/dar/sdp/ISdpListener;
.super Ljava/lang/Object;
.source "ISdpListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;,
        Lcom/samsung/android/knox/dar/sdp/ISdpListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.dar.sdp.ISdpListener"


# virtual methods
.method public abstract blacklist onEngineRemoved()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStateChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
