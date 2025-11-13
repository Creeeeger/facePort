.class public interface abstract Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;
.super Ljava/lang/Object;
.source "ICoverWindowStateListenerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/ICoverWindowStateListenerCallback$Stub;,
        Lcom/samsung/android/cover/ICoverWindowStateListenerCallback$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cover.ICoverWindowStateListenerCallback"


# virtual methods
.method public abstract greylist onCoverAppCovered(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
