.class public interface abstract Lcom/android/internal/widget/IRemoteLockMonitorCallback;
.super Ljava/lang/Object;
.source "IRemoteLockMonitorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;,
        Lcom/android/internal/widget/IRemoteLockMonitorCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.IRemoteLockMonitorCallback"


# virtual methods
.method public abstract blacklist changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist checkRemoteLockPassword([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
