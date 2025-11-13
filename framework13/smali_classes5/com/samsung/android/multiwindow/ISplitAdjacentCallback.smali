.class public interface abstract Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;
.super Ljava/lang/Object;
.source "ISplitAdjacentCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/ISplitAdjacentCallback$Stub;,
        Lcom/samsung/android/multiwindow/ISplitAdjacentCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.ISplitAdjacentCallback"


# virtual methods
.method public abstract blacklist onAdjacentLaunched()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
