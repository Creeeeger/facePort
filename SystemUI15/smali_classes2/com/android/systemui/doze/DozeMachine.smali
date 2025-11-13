.class public Lcom/android/systemui/doze/DozeMachine;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field public mMODReason:I

.field public final mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

.field public mPulseReason:I

.field public final mQueuedRequests:Ljava/util/ArrayList;

.field public mState:Lcom/android/systemui/doze/DozeMachine$State;

.field public mStateBeforeMOD:Lcom/android/systemui/doze/DozeMachine$State;

.field public mUiModeType:I

.field public final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

.field public mWakeLockHeldForCurrentState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    const/4 p6, 0x1

    iput p6, p0, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    iput-object p2, p0, Lcom/android/systemui/doze/DozeMachine;->mStateBeforeMOD:Lcom/android/systemui/doze/DozeMachine$State;

    iput-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    iput-object p3, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    iput-object p5, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iput-object p7, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iput-object p8, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    array-length p1, p8

    :goto_0
    if-ge p4, p1, :cond_0

    aget-object p2, p8, p4

    invoke-interface {p2, p0}, Lcom/android/systemui/doze/DozeMachine$Part;->setDozeMachine(Lcom/android/systemui/doze/DozeMachine;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getState()Lcom/android/systemui/doze/DozeMachine$State;
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot get state because there were pending transitions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isExecutingTransition()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0xf

    iget v0, p0, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget v3, p0, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    invoke-interface {v2, v3}, Lcom/android/systemui/doze/DozeMachine$Part;->onUiModeTypeChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final requestState(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;I)V

    return-void
.end method

.method public final requestState(Lcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request: current="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v2, "DozeMachine"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v0, "DozeMachine#requestState"

    invoke-interface {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/doze/DozeMachine;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    const/16 v4, 0xc

    const/4 v5, 0x7

    const/4 v6, 0x5

    const/4 v7, 0x0

    const-string v8, "DozeLog"

    const/4 v9, 0x6

    const/4 v10, 0x1

    const-string v11, "DozeMachine"

    iget-object v12, v1, Lcom/android/systemui/doze/DozeMachine;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    if-ne v2, v3, :cond_0

    move-object v2, v3

    goto/16 :goto_1

    :cond_0
    iget v2, v1, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    const/4 v13, 0x3

    const/4 v14, 0x4

    const/4 v15, 0x2

    if-ne v2, v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v15, :cond_1

    if-eq v2, v14, :cond_1

    packed-switch v2, :pswitch_data_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v6, :cond_1

    if-eq v2, v9, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    :pswitch_0
    const-string v2, "Doze is suppressed with all triggers disabled as car mode is active"

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v12, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v14, Lcom/android/systemui/doze/DozeLogger$logCarModeStarted$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logCarModeStarted$2;

    iget-object v2, v2, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v8, v13, v14, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_SUSPEND_TRIGGERS:Lcom/android/systemui/doze/DozeMachine$State;

    goto/16 :goto_1

    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    check-cast v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAlwaysOnSuppressed:Z

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v2, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v13, "Doze is suppressed by an app. Suppressing state: "

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v12, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v14, Lcom/android/systemui/doze/DozeLogger$logAlwaysOnSuppressed$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logAlwaysOnSuppressed$2;

    iget-object v2, v2, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v8, v13, v14, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    check-cast v15, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v14, v15, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    const-string v14, "app"

    iput-object v14, v15, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    goto/16 :goto_1

    :cond_4
    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v13, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v2, v13, :cond_5

    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v2, v4, :cond_5

    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v2, v4, :cond_5

    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v2, v4, :cond_5

    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v2, v4, :cond_5

    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_SUSPEND_TRIGGERS:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v4, :cond_6

    :cond_5
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v4, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Dropping pulse done because current state is already done: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    goto/16 :goto_1

    :cond_6
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v4, :cond_7

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v15, :cond_7

    if-eq v2, v14, :cond_7

    packed-switch v2, :pswitch_data_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Dropping pulse request because current state can\'t pulse: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    goto/16 :goto_1

    :cond_7
    :pswitch_1
    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v2, :cond_8

    iget-object v4, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v15, :cond_8

    const/16 v14, 0xa

    if-eq v4, v14, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Dropping MOD because current state is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_1

    :cond_8
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v4, :cond_9

    if-ne v0, v13, :cond_a

    :cond_9
    iget-object v4, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v4, v2, :cond_a

    iget v2, v1, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Dropping "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " because current state is MOD : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    invoke-static {v4, v11, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iput-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mStateBeforeMOD:Lcom/android/systemui/doze/DozeMachine$State;

    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_1

    :cond_a
    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v2, :cond_b

    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v10, :cond_b

    const/16 v4, 0xe

    if-eq v2, v4, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Dropping clockTransition because current state is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_1

    :cond_b
    move-object v2, v0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "transition: old="

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " req="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " new="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v0, :cond_c

    return-void

    :cond_c
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_f

    const/16 v11, 0x9

    if-eq v0, v11, :cond_d

    goto :goto_4

    :cond_d
    if-ne v2, v3, :cond_e

    move v0, v10

    goto :goto_2

    :cond_e
    move v0, v4

    :goto_2
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_12

    :cond_f
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v0, :cond_10

    move v0, v10

    goto :goto_3

    :cond_10
    move v0, v4

    :goto_3
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :goto_4
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_25

    const/16 v3, 0x8

    if-eq v0, v10, :cond_19

    if-eq v0, v9, :cond_17

    if-eq v0, v3, :cond_14

    const/16 v11, 0xd

    if-eq v0, v11, :cond_11

    goto :goto_b

    :cond_11
    iget-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v11, :cond_13

    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v11, :cond_12

    goto :goto_5

    :cond_12
    move v0, v4

    goto :goto_6

    :cond_13
    :goto_5
    move v0, v10

    :goto_6
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_b

    :cond_14
    iget-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v11, :cond_16

    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v11, :cond_16

    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v11, :cond_15

    goto :goto_7

    :cond_15
    move v0, v4

    goto :goto_8

    :cond_16
    :goto_7
    move v0, v10

    :goto_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_b

    :cond_17
    iget-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v11, :cond_18

    move v0, v10

    goto :goto_9

    :cond_18
    move v0, v4

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_b

    :cond_19
    iget-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v11, :cond_1a

    move v0, v10

    goto :goto_a

    :cond_1a
    move v0, v4

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_b
    iget-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    iput-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v11, :cond_1b

    iput-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mStateBeforeMOD:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_c

    :cond_1b
    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    iput-object v11, v1, Lcom/android/systemui/doze/DozeMachine;->mStateBeforeMOD:Lcom/android/systemui/doze/DozeMachine$State;

    :goto_c
    iget-object v11, v12, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v14, Lcom/android/systemui/doze/DozeLogger$logDozeStateChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDozeStateChanged$2;

    iget-object v11, v11, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v11, v8, v13, v14, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    check-cast v15, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v14, v15, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const-wide/16 v13, 0x1000

    const-string v15, "doze_machine_state"

    invoke-static {v13, v14, v15, v11}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v13, -0x1

    if-ne v2, v11, :cond_1c

    move/from16 v11, p2

    iput v11, v1, Lcom/android/systemui/doze/DozeMachine;->mPulseReason:I

    goto :goto_d

    :cond_1c
    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v11, :cond_1d

    iput v13, v1, Lcom/android/systemui/doze/DozeMachine;->mPulseReason:I

    :cond_1d
    :goto_d
    iget-object v11, v1, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    array-length v14, v11

    move v15, v4

    :goto_e
    if-ge v15, v14, :cond_1e

    aget-object v13, v11, v15

    invoke-interface {v13, v0, v2}, Lcom/android/systemui/doze/DozeMachine$Part;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v13, -0x1

    goto :goto_e

    :cond_1e
    iget-object v0, v12, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v12, Lcom/android/systemui/doze/DozeLogger$logStateChangedSent$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logStateChangedSent$2;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v0, v8, v11, v12, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    move-object v11, v7

    check-cast v11, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v8, v11, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v0, :cond_1f

    iget-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeMachine$Service;->finish()V

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v6, :cond_20

    if-eq v0, v9, :cond_20

    if-eq v0, v5, :cond_20

    const/16 v5, 0xc

    if-eq v0, v5, :cond_20

    move v0, v4

    goto :goto_f

    :cond_20
    move v0, v10

    :goto_f
    iget-boolean v5, v1, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    const-string v6, "DozeMachine#heldForState"

    iget-object v7, v1, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    if-eqz v5, :cond_21

    if-nez v0, :cond_21

    invoke-interface {v7, v6}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    iput-boolean v4, v1, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    goto :goto_10

    :cond_21
    if-nez v5, :cond_22

    if-eqz v0, :cond_22

    invoke-interface {v7, v6}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    iput-boolean v10, v1, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    :cond_22
    :goto_10
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v10, :cond_23

    if-eq v0, v3, :cond_23

    goto :goto_11

    :cond_23
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-nez v0, :cond_24

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/doze/DozeMachine;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;I)V

    :cond_24
    :goto_11
    return-void

    :cond_25
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "can\'t transition to UNINITIALIZED"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_12
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal Transition: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
