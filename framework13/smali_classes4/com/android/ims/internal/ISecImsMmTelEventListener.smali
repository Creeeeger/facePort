.class public interface abstract Lcom/android/ims/internal/ISecImsMmTelEventListener;
.super Ljava/lang/Object;
.source "ISecImsMmTelEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ISecImsMmTelEventListener$Stub;,
        Lcom/android/ims/internal/ISecImsMmTelEventListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.ISecImsMmTelEventListener"


# virtual methods
.method public abstract blacklist onCdpnInfo(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onIncomingCall(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
