.class public final synthetic Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/doze/DozeScreenState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeScreenState;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeScreenState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeScreenState;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/PluginAODManager;->enableTouch(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v1, v1, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/doze/DozeLogger$logDisplayStateDelayedByUdfps$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDisplayStateDelayedByUdfps$2;

    const-string v4, "DozeLog"

    iget-object v1, v1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    invoke-static {v0}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const-wide/16 v0, 0x4b0

    iget-object v2, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(IZ)V

    iput v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
