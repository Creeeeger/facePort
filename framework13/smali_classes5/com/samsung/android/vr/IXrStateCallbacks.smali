.class public interface abstract Lcom/samsung/android/vr/IXrStateCallbacks;
.super Ljava/lang/Object;
.source "IXrStateCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vr/IXrStateCallbacks$Stub;,
        Lcom/samsung/android/vr/IXrStateCallbacks$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.vr.IXrStateCallbacks"


# virtual methods
.method public abstract blacklist onActivityIntercepted(IILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onActivityResumeChanged(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onFocusedDisplayChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
