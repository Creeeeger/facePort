.class public interface abstract Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;
.super Ljava/lang/Object;
.source "ISemFingerprintAodController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub;,
        Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.bio.fingerprint.ISemFingerprintAodController"


# virtual methods
.method public abstract blacklist hideAodScreen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist turnOffDozeHlpmMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist turnOffDozeMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist turnOnDozeHlpmMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist turnOnDozeMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
