.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    iget-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    iget-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    iget-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "DozeLog"

    iget-object v5, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    if-eqz v2, :cond_0

    iget-object v0, v5, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "onProximityFar called during transition. Ignoring sensor response."

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_0
    xor-int/lit8 v2, v1, 0x1

    iget-object v6, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v6}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v6, v7, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    move v7, v9

    :goto_0
    sget-object v10, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v6, v10, :cond_2

    move v11, v8

    goto :goto_1

    :cond_2
    move v11, v9

    :goto_1
    sget-object v12, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v6, v12, :cond_3

    goto :goto_2

    :cond_3
    move v8, v9

    :goto_2
    sget-object v9, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v6, v9, :cond_4

    sget-object v9, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v6, v9, :cond_6

    :cond_4
    iget-object v6, v5, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v13, Lcom/android/systemui/doze/DozeLogger$logSetIgnoreTouchWhilePulsing$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logSetIgnoreTouchWhilePulsing$2;

    iget-object v6, v6, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v6, v4, v9, v13, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v2, v13, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v6, v9}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v6, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    check-cast v6, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v9, v6, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    if-eq v2, v9, :cond_5

    iget-object v9, v6, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v9, v9, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v14, Lcom/android/systemui/doze/DozeLogger$logPulseTouchDisabledByProx$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseTouchDisabledByProx$2;

    const-string v15, "DozeLog"

    iget-object v9, v9, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {v9, v15, v13, v14, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v2, v13, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v9, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_5
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    iget-object v3, v6, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    iget-object v3, v6, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->cancelCurrentTouch()V

    :cond_6
    if-eqz v1, :cond_8

    if-nez v7, :cond_7

    if-eqz v11, :cond_8

    :cond_7
    iget-object v1, v5, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v1, v1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "Prox FAR, unpausing AOD"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0, v12}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    if-eqz v8, :cond_9

    iget-object v1, v5, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v1, v1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "Prox NEAR, starting pausing AOD countdown"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0, v10}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_9
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
