.class public final Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher;
.super Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-object v3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->TAG:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v3, v3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v13, "ConditionDispatcher"

    if-nez v3, :cond_0

    const-string v0, "callConditionHandler - tag is null"

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    sget-object v5, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$LazyHolder;->a:Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    iget-object v5, v5, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->d:Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;

    invoke-virtual {v5, v3}, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;->getWithTimeout(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;

    if-nez v5, :cond_1

    const-string v0, "callConditionHandler - conditionHandler is null. tag="

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "callConditionHandler start - tag="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", method="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PARAMETER_VALUES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v6, v6, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v8

    sget-object v6, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->INSTANCE_ID:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v6, v6, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    const-wide/16 v9, 0x0

    invoke-virtual {v2, v6, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    sget-object v6, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$1;->a:[I

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->values()[Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    move-result-object v7

    array-length v11, v7

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v11, :cond_3

    aget-object v12, v7, v15

    iget-object v4, v12, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "ConditionMethod.fromValue - not supported value: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ConditionMethod"

    invoke-static {v7, v4}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->UNKNOWN:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    :goto_1
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    const-string v6, ", enableCount="

    const-string v7, ", app="

    const-string v11, "-1"

    const-string v12, "playing_audio_app_uid"

    const-string v15, "playing_audio"

    move-object/from16 v16, v14

    const-string v14, ", lastStartedPackageName="

    move-object/from16 v17, v6

    const-string v6, "SoundCraft.PlayingAudioConditionHandler"

    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_4

    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->MIGRATED_PARAMETER:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v4, v4, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->TARGET_INSTANCES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v5, v5, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "getTargetInstances() targetInstances is null"

    invoke-static {v13, v2}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    goto :goto_3

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-class v8, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;

    invoke-virtual {v6, v8, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_3
    const-string v2, "RoutineConditionHandler"

    const-string v5, "onMigrate: this should not be called without overriding!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "callConditionHandler - not supported method: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v4, v4, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    check-cast v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    iget-object v5, v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->lastStartedPackageName:Ljava/lang/String;

    const-string v7, "onRequestErrorDialogContents: tag="

    const-string v8, ", errorCode="

    invoke-static {v0, v7, v3, v8, v14}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    const-string v6, "Not handled error code:"

    invoke-static {v0, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;-><init>(Ljava/lang/String;)V

    const-string v0, "Condition Error"

    iput-object v0, v5, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->a:Ljava/lang/String;

    new-instance v6, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    iget-object v5, v5, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->b:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v6, v0, v5, v9}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    invoke-virtual {v6}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v4, v2

    goto/16 :goto_8

    :pswitch_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->CONFIG_TEMPLATE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    check-cast v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    iget-object v2, v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->lastStartedPackageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "onRequestTemplateContents : tag="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v2, v5}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    iget-object v2, v2, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;->a:Landroid/os/Bundle;

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_8

    :pswitch_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    iget v2, v2, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->a:I

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    :pswitch_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v15, Ljava/lang/Thread;

    new-instance v12, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda1;

    move-object v4, v12

    move-object/from16 v6, p1

    move-object v7, v3

    move-object v11, v2

    move-object/from16 p3, v2

    move-object v2, v12

    move-object v12, v14

    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v15, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "checkValidity: timeout"

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    :goto_5
    move-object v4, v0

    goto/16 :goto_8

    :cond_6
    move-object/from16 v4, p3

    goto/16 :goto_8

    :pswitch_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v15, Ljava/lang/Thread;

    new-instance v12, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda2;

    move-object v4, v12

    move-object/from16 v6, p1

    move-object v7, v3

    move-object v11, v2

    move-object/from16 p3, v2

    move-object v2, v12

    move-object v12, v14

    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v15, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "getParameterLabel: timeout"

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_5

    :pswitch_6
    const/4 v9, 0x0

    check-cast v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v8, v12, v11}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->enableList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-ne v8, v0, :cond_7

    move-object v2, v4

    goto :goto_6

    :cond_8
    move-object v2, v9

    :goto_6
    check-cast v2, Ljava/lang/Integer;

    iget-object v4, v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->enableList:Ljava/util/Set;

    invoke-static {v4}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v2, v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->enableList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "onDestroy"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->settingObserver:Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;

    iget-object v4, v2, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->systemSettingName:Ljava/lang/String;

    const-string v8, "unreigster : settingName="

    const-string v10, "SoundCraft.SystemBooleanSettingObserver"

    invoke-static {v8, v4, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v2, Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;

    iget-object v4, v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v4, v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->audioPlaybackCallback:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$audioPlaybackCallback$1;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    :cond_9
    invoke-virtual {v5, v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->uidPackageName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->enableList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const-string v4, "onDisabled : tag="

    move-object/from16 v10, v17

    invoke-static {v4, v3, v7, v0, v10}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v6, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_7

    :pswitch_7
    move-object/from16 v10, v17

    const/4 v9, 0x0

    check-cast v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v8, v12, v11}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->enableList:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->enableList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    invoke-virtual {v5}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->onCreate()V

    :cond_a
    invoke-virtual {v5, v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->uidPackageName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v5, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->enableList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const-string v4, "onEnabled : tag="

    invoke-static {v4, v3, v7, v0, v10}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v6, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_b
    :goto_7
    move-object v4, v9

    goto :goto_8

    :pswitch_8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v15, Ljava/lang/Thread;

    new-instance v12, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;

    move-object v4, v12

    move-object/from16 v6, p1

    move-object v7, v3

    move-object v11, v2

    move-object/from16 p3, v2

    move-object v2, v12

    move-object v12, v14

    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v15, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "isSatisfied: timeout"

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_5

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "callConditionHandler end - tag="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Ljava/lang/String;
    .locals 0

    const-string p0, "ConditionDispatcher"

    return-object p0
.end method
