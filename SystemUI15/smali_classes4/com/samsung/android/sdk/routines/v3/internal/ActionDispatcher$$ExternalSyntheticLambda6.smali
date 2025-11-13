.class public final synthetic Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->f$0:Landroid/os/Bundle;

    iput-wide p2, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->f$1:J

    iput-object p4, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->f$0:Landroid/os/Bundle;

    iget-wide v1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->f$1:J

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->INSTANCE_ID:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v3, v3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget v1, p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->customErrorCode:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const v2, 0xffffff

    if-gt v1, v2, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_TYPE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v1, v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v1, v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    iget v2, p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->customErrorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v1, v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->resultCode:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    iget v2, v2, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->value:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    iget-object p1, p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->outputValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->OUTPUT_PARAMS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v1, v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->toJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
