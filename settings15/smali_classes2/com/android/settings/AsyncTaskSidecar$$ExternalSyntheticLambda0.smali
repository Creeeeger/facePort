.class public final synthetic Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/AsyncTaskSidecar;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/AsyncTaskSidecar;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/AsyncTaskSidecar;

    iput-object p2, p0, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/AsyncTaskSidecar;

    iget-object p0, p0, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/android/settings/AsyncTaskSidecar;->onPostExecute$1(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/AsyncTaskSidecar;

    iget-object p0, p0, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/network/SwitchSlotSidecar$Param;

    invoke-virtual {v0, p0}, Lcom/android/settings/AsyncTaskSidecar;->doInBackground(Lcom/android/settings/network/SwitchSlotSidecar$Param;)Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/AsyncTaskSidecar;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
