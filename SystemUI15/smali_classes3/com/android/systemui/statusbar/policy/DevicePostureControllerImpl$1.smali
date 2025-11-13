.class public final Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    if-ne p1, v1, :cond_0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_4

    :cond_0
    iput p1, v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    sget-object p1, Lcom/android/app/tracing/ListenersTracing;->INSTANCE:Lcom/android/app/tracing/ListenersTracing;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/android/app/tracing/ListenersTracing$forEachTraced$1$1$1;

    invoke-direct {v2, p1}, Lcom/android/app/tracing/ListenersTracing$forEachTraced$1$1$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/app/tracing/ListenersTracing$forEachTraced$1$1$1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DevicePostureControllerImpl#"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_3
    throw p0

    :cond_4
    return-void
.end method
