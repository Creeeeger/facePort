.class public final Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plank/command/PlankCommandDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatch(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key_monitor_result"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    invoke-static {p2}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->valueOf(Ljava/lang/String;)Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p2, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;->unknown:Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$Action;

    :goto_0
    sget-object v1, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const-string v1, "removed"

    const-string v2, "key_boolean_type"

    const-string v3, "key_string_type"

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :pswitch_1
    sget-object p1, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->sInstance:Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    sget-object p1, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->sInstance:Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_3

    :pswitch_2
    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    sget-object p1, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->sInstance:Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string p2, "FakeConditionChecker"

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v4

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :cond_2
    sget-object p1, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->sInstance:Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    invoke-virtual {p1, p2, v4}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->updateCondition(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_3

    :pswitch_4
    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    sget-object p1, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->sInstance:Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string p2, "FakeFeatures"

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_5
    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    move-object p2, v4

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :cond_5
    sget-object p1, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->sInstance:Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    invoke-virtual {p1, p2, v4}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->updateFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_3

    :pswitch_6
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->handleShowGlobalActionsMenu(I)V

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
