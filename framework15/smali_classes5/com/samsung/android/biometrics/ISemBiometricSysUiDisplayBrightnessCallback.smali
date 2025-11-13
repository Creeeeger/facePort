.class public interface abstract Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayBrightnessCallback;
.super Ljava/lang/Object;
.source "ISemBiometricSysUiDisplayBrightnessCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayBrightnessCallback$Stub;,
        Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayBrightnessCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.biometrics.ISemBiometricSysUiDisplayBrightnessCallback"


# virtual methods
.method public abstract blacklist onBrightnessChanged(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
