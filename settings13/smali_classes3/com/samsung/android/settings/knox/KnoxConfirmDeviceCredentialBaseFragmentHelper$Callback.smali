.class public interface abstract Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;
.super Ljava/lang/Object;
.source "KnoxConfirmDeviceCredentialBaseFragmentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract adjustPasswordViewWithIme(Landroid/view/View;I)V
.end method

.method public abstract authenticationSucceededCallback()V
.end method

.method public abstract disableConfirmCredentialCallback()V
.end method

.method public abstract enableConfirmCredentialCallback()V
.end method

.method public abstract onSaveInstanceStateCallback()V
.end method

.method public abstract refreshBiometricsListeningState()V
.end method

.method public abstract showErrorText(Ljava/lang/CharSequence;J)V
.end method

.method public abstract stopListeningForBiometrics()V
.end method

.method public abstract updateState()V
.end method
