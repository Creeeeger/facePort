.class public final synthetic Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/EmergencyButtonController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButtonController;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda9;-><init>(Lcom/android/keyguard/EmergencyButtonController;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
