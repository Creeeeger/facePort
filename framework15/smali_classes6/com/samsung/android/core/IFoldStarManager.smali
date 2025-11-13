.class public interface abstract Lcom/samsung/android/core/IFoldStarManager;
.super Ljava/lang/Object;
.source "IFoldStarManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/IFoldStarManager$Stub;,
        Lcom/samsung/android/core/IFoldStarManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist ASPECT_RATIO_POLICY_16_TO_9:I = 0x2

.field public static final blacklist ASPECT_RATIO_POLICY_4_TO_3:I = 0x3

.field public static final blacklist ASPECT_RATIO_POLICY_FULL_SCREEN:I = 0x1

.field public static final blacklist ASPECT_RATIO_POLICY_NOT_SUPPORTED:I = 0x0

.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.core.IFoldStarManager"

.field public static final blacklist OPTION_GET_ALL_PACKAGES:I = 0x0

.field public static final blacklist OPTION_GET_REQUESTED_FIXED_ASPECT_RATIO_POLICY:I = 0x4

.field public static final blacklist OPTION_GET_REQUESTED_PACKAGES:I = 0x3

.field public static final blacklist OPTION_GET_SYSTEM_SETTINGS:I = 0x2

.field public static final blacklist OPTION_GET_USER_SETTINGS:I = 0x1


# virtual methods
.method public abstract blacklist getDisplayCompatPackages(IILjava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist initAppContinuityValueWhenReset(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setAllAppContinuityMode(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setAppContinuityMode(Ljava/lang/String;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setDisplayCompatPackages(ILjava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setFixedAspectRatioPackages(ILjava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setFrontScreenOnWhenAppContinuityMode(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
