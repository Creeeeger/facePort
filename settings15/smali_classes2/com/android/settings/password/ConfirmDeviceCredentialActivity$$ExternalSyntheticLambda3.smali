.class public final synthetic Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
