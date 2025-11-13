.class public final synthetic Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;

    iput p2, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;

    iget p0, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda4;->f$1:I

    iget-object v1, v0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mHandle:Landroid/os/Handler;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mProgressAlertDialog:Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$ProgressAlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "ProgressDialogFragment"

    const-string v0, "Exit the UI thread"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mProgressAlertDialog:Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$ProgressAlertDialog;

    iget-object v0, v0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$ProgressAlertDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    monitor-exit v1

    :goto_0
    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
