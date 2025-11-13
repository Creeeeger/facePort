.class public final synthetic Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/EmergencyButtonController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButtonController;ZZI)V
    .locals 0

    iput p4, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    iput-boolean p2, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;->f$1:Z

    iput-boolean p3, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    iget-boolean v1, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;->f$1:Z

    iget-boolean p0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/EmergencyButtonController;->$r8$lambda$W1zTNNSQ2hmvDBkhwJsvlM1sA5k(Lcom/android/keyguard/EmergencyButtonController;ZZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    iget-boolean v1, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;->f$1:Z

    iget-boolean p0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;->f$2:Z

    iget-object v2, v0, Lcom/android/keyguard/EmergencyButtonController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, p0, v4}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/EmergencyButtonController;ZZI)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
