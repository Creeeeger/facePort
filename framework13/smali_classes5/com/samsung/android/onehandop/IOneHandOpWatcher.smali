.class public interface abstract Lcom/samsung/android/onehandop/IOneHandOpWatcher;
.super Ljava/lang/Object;
.source "IOneHandOpWatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;,
        Lcom/samsung/android/onehandop/IOneHandOpWatcher$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.onehandop.IOneHandOpWatcher"


# virtual methods
.method public abstract blacklist onInputFilterChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onMagnificationSpecChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
