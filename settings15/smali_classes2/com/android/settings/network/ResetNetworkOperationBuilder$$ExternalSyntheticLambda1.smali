.class public final synthetic Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;Ljava/lang/String;Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask$$ExternalSyntheticLambda0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v4, "Reset "

    const-string v5, ", takes "

    invoke-static {v4, p0, v5}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ResetNetworkOpBuilder"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/network/ResetNetworkOperationBuilder;

    iget-object v1, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, v0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "Reset eSIM, takes "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ResetNetworkOpBuilder"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
