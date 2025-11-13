.class public final Lcom/android/systemui/volume/store/VolumePanelStore;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# instance fields
.field public currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field public isWorking:Z

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final middlewares:Ljava/util/ArrayList;

.field public final observers:Ljava/util/ArrayList;

.field public final reducer:Lcom/android/systemui/volume/reducer/VolumePanelReducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/store/VolumePanelStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/store/VolumePanelStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/systemui/basic/util/LogWrapper;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/basic/util/LogWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->observers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/JSonLogger;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/JSonLogger;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    new-instance v2, Lcom/android/systemui/volume/middleware/DeviceStateController;

    invoke-direct {v2, p1}, Lcom/android/systemui/volume/middleware/DeviceStateController;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    new-instance v3, Lcom/android/systemui/volume/middleware/AudioManagerController;

    invoke-direct {v3, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    new-instance v4, Lcom/android/systemui/volume/middleware/SmartViewInteractor;

    invoke-direct {v4, p1}, Lcom/android/systemui/volume/middleware/SmartViewInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    new-instance v5, Lcom/android/systemui/volume/middleware/BluetoothInteractor;

    invoke-direct {v5, p1}, Lcom/android/systemui/volume/middleware/BluetoothInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    new-instance v6, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;

    invoke-direct {v6, p1}, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    new-instance v7, Lcom/android/systemui/volume/middleware/SALogger;

    invoke-direct {v7, p1}, Lcom/android/systemui/volume/middleware/SALogger;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    filled-new-array/range {v1 .. v7}, [Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->middlewares:Ljava/util/ArrayList;

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    new-instance p1, Lcom/android/systemui/volume/reducer/VolumePanelReducer;

    invoke-direct {p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->reducer:Lcom/android/systemui/volume/reducer/VolumePanelReducer;

    return-void
.end method


# virtual methods
.method public final dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->observers:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->isWorking:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    invoke-interface {v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->isWorking:Z

    return-void
.end method

.method public final bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/store/VolumePanelStore;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method public final onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VolumePanelStore#onChanged("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1000

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    const-string v6, "]"

    const-string v7, "  > New State : ["

    iget-object v8, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->reducer:Lcom/android/systemui/volume/reducer/VolumePanelReducer;

    const-string/jumbo v9, "}"

    const-string/jumbo v10, "}, currentState={"

    const-string v11, "], currentAction={"

    const-string v12, " with ["

    const-string/jumbo v13, "use handler!!"

    const-string v14, "VolumePanelStore"

    iget-object v15, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    move-object/from16 v16, v13

    const-string v13, "dispatch ["

    if-eqz v5, :cond_7

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-boolean v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->isWorking:Z

    if-nez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    if-eq v2, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    iget-object v5, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v5

    iget-object v3, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v14, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-wide/16 v1, 0x1000

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->middlewares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    move-object v3, v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    invoke-interface {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v8, v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->reduce(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v14, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->middlewares:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    invoke-interface {v3, v1}, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;->applyState(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    if-eq v2, v3, :cond_5

    iput-object v1, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/store/VolumePanelStore;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto :goto_3

    :cond_5
    iput-object v1, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_7

    :cond_6
    :try_start_1
    new-instance v0, Lcom/android/systemui/volume/DispatchException;

    move-object/from16 v2, v16

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/DispatchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_7
    move-object/from16 v2, v16

    iget-boolean v3, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->isWorking:Z

    if-nez v3, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    if-eq v2, v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v14, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->middlewares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    move-object v3, v1

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    invoke-interface {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_a
    iget-object v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v8, v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->reduce(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    if-eq v2, v3, :cond_b

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v14, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v2, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->middlewares:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    invoke-interface {v3, v1}, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;->applyState(Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v2

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    if-eq v2, v3, :cond_d

    iput-object v1, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/store/VolumePanelStore;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto :goto_7

    :cond_d
    iput-object v1, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    :goto_7
    return-void

    :cond_e
    new-instance v0, Lcom/android/systemui/volume/DispatchException;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/DispatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/store/VolumePanelStore;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public final subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "subscribe : observer count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", observer="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v2, "VolumePanelStore"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->observers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
