.class public interface abstract Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService;
.super Ljava/lang/Object;
.source "IWifiEvaluationService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerEvaluationCallback(Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startSecurityEvaluation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopSecurityEvaluation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterEvaluationCallback(Lcom/samsung/android/tencentwifisecurity/IWifiEvaluationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
