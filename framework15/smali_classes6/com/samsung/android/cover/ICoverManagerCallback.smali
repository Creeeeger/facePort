.class public interface abstract Lcom/samsung/android/cover/ICoverManagerCallback;
.super Ljava/lang/Object;
.source "ICoverManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/ICoverManagerCallback$Stub;,
        Lcom/samsung/android/cover/ICoverManagerCallback$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cover.ICoverManagerCallback"


# virtual methods
.method public abstract greylist coverCallback(Lcom/samsung/android/cover/CoverState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getListenerInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
