.class public final synthetic Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/Bundle;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;->f$0:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setResponse(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;->f$0:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;

    iget-object p0, p1, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;->type:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->CUSTOM_ERROR:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    if-ne p0, v2, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_TYPE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    iget p1, p1, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;->validityCode:I

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->CUSTOM_WARNING:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    if-ne p0, v2, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_TYPE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    iget p1, p1, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;->validityCode:I

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    iget p1, p1, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;->validityCode:I

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;->f$0:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v1, v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    iget p1, p1, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
