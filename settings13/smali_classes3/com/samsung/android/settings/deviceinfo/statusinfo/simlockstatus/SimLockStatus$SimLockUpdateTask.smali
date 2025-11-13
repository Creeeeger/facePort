.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;
.super Landroid/os/AsyncTask;
.source "SimLockStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimLockUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mKddiConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;

.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2

    const-string p1, "SimLockStatus"

    const-string v0, "do in background"

    .line 397
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance p1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;

    invoke-direct {p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->mKddiConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;

    .line 399
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->post(Landroid/content/Context;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->-$$Nest$fputmSimLockPolicyBuffer(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;Ljava/nio/ByteBuffer;)V

    .line 400
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->mKddiConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->isSucceed()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 392
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->-$$Nest$fgetmUpdateDialog(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->-$$Nest$fgetmUpdateDialog(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->access$500(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;I)V

    .line 408
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 409
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->access$600(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;I)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->access$700(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 392
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
