.class public final Lcom/android/systemui/doze/AODUi;
.super Lcom/android/systemui/doze/DozeUi;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mHostCallback:Lcom/android/systemui/doze/AODUi$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/doze/DozeLog;Landroid/hardware/display/AmbientDisplayConfiguration;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/doze/DozeLog;)V

    new-instance p1, Lcom/android/systemui/doze/AODUi$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/doze/AODUi$1;-><init>(Lcom/android/systemui/doze/AODUi;)V

    iput-object p1, p0, Lcom/android/systemui/doze/AODUi;->mHostCallback:Lcom/android/systemui/doze/AODUi$1;

    iput-object p10, p0, Lcom/android/systemui/doze/AODUi;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-void
.end method


# virtual methods
.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/doze/DozeUi;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V

    sget-object p1, Lcom/android/systemui/doze/AODUi$2;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    iget-object p2, p0, Lcom/android/systemui/doze/AODUi;->mHostCallback:Lcom/android/systemui/doze/AODUi$1;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Lcom/android/systemui/util/CopyOnLoopListenerSet;

    invoke-interface {p0, p2}, Lcom/android/systemui/util/IListenerSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Lcom/android/systemui/util/CopyOnLoopListenerSet;

    invoke-interface {p0, p2}, Lcom/android/systemui/util/IListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
