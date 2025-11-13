.class public final Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plank/command/PlankCommandDispatcher;


# instance fields
.field public final enabled:Z

.field public final handler:Landroid/os/Handler;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final originNavState:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->originNavState:Ljava/util/HashMap;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->handler:Landroid/os/Handler;

    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "NaBarCommandDispatcher"

    const-string v0, "init()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->enabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final copyPrevStatesIfNeeded(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->originNavState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NaBarCommandDispatcher"

    const-string v1, "copyPrevStates()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->originNavState:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/model/NavBarStates;->copy$default(Lcom/android/systemui/navigationbar/model/NavBarStates;)Lcom/android/systemui/navigationbar/model/NavBarStates;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final dispatch(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ""

    const-string v3, "NaBarCommandDispatcher"

    const-string v4, "Execute fake handle event "

    const-string v5, "Failed to restore originNavState: "

    const-string v6, "Running fake store action "

    const-string v7, "Update fakeParams "

    const-string v8, "Failed to get params: "

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v9, "cmdType"

    invoke-virtual {v1, v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "eventName"

    invoke-virtual {v1, v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "displayId"

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v13, "params"

    invoke-virtual {v1, v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v13, "update"

    invoke-virtual {v1, v13, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    iget-boolean v14, v0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->enabled:Z

    if-nez v14, :cond_0

    return-object v1

    :cond_0
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, ".."

    iget-object v12, v0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    move/from16 v16, v13

    const-string v13, "Failed to get eventName: "

    sparse-switch v14, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    :try_start_1
    const-string v4, "FAKE_STATUS"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->copyPrevStatesIfNeeded(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ","

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static {v2, v4, v6, v5}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-static {v12, v11, v2}, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;->updateFakeStatus(Lcom/android/systemui/navigationbar/store/NavBarStore;ILjava/util/List;)V

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :sswitch_1
    const-string v4, "FAKE_STORE_ACTION"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_4

    :cond_4
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->copyPrevStatesIfNeeded(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v12, v10, v2, v11}, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;->runFakeStoreAction(Lcom/android/systemui/navigationbar/store/NavBarStore;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :sswitch_2
    const-string v2, "RESET"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_4

    :cond_7
    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->originNavState:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/model/NavBarStates;

    if-eqz v2, :cond_8

    check-cast v12, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v12, v11}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iput-object v2, v4, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    goto :goto_2

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has null states."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v13, 0x1

    goto :goto_5

    :sswitch_3
    const-string v5, "FAKE_HANDLE_EVENT"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_4

    :cond_9
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->copyPrevStatesIfNeeded(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v10, v2}, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;->createFakeHandleEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    move-result-object v2

    if-eqz v2, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v4, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;

    invoke-interface {v12, v4, v2, v11}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    goto :goto_4

    :cond_b
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_c
    move/from16 v16, v13

    :cond_d
    :goto_4
    move/from16 v13, v16

    :goto_5
    if-eqz v13, :cond_e

    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;

    invoke-direct {v4, v0, v11}, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;-><init>(Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :goto_6
    const-string v2, "An exception occurred while processing dispatch()."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_7
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d4711b3 -> :sswitch_3
        0x4a4252f -> :sswitch_2
        0x5947301e -> :sswitch_1
        0x60bcf81c -> :sswitch_0
    .end sparse-switch
.end method
