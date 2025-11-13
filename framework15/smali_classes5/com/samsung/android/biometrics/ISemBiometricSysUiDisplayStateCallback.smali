.class public interface abstract Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;
.super Ljava/lang/Object;
.source "ISemBiometricSysUiDisplayStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback$Stub;,
        Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.biometrics.ISemBiometricSysUiDisplayStateCallback"


# virtual methods
.method public abstract blacklist onFinish(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStart(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
