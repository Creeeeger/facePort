.class public interface abstract Lcom/samsung/android/gamesdk/IGameSDKStateListener;
.super Ljava/lang/Object;
.source "IGameSDKStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/IGameSDKStateListener$Stub;,
        Lcom/samsung/android/gamesdk/IGameSDKStateListener$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.gamesdk.IGameSDKStateListener"


# virtual methods
.method public abstract greylist onGameSDKFinalized()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist onGameSDKInitialized()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
