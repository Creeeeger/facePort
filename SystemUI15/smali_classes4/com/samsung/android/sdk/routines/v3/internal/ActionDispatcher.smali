.class public final Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;
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

    const-string v14, "ActionDispatcher"

    if-nez v3, :cond_0

    const-string v0, "callActionHandler - tag is null"

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    sget-object v5, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$LazyHolder;->a:Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    iget-object v5, v5, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->e:Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;

    invoke-virtual {v5, v3}, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;->getWithTimeout(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;

    if-nez v5, :cond_1

    const-string v0, "callActionHandler - actionHandler is null. tag="

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "callActionHandler start - tag="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", method="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->INSTANCE_ID:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v6, v6, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    sget-object v6, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PARAMETER_VALUES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v6, v6, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v8

    sget-object v6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$1;->a:[I

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->values()[Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    move-result-object v7

    array-length v11, v7

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_3

    aget-object v4, v7, v13

    iget-object v12, v4, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->a:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "ActionMethod.fromValue - not supported value: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ActionMethod"

    invoke-static {v7, v4}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->UNKNOWN:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    goto/16 :goto_5

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

    invoke-static {v14, v2}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

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
    move-object v2, v5

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v2}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->getIntentParam()Ljava/lang/String;

    move-result-object v2

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-direct {v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v2, v6

    const-string v7, "effect_key"

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string v7, "color_key"

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x2

    aget-object v6, v2, v6

    const-string v7, "transparency_key"

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    aget-object v6, v2, v6

    const-string v7, "thickness_key"

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x4

    aget-object v6, v2, v6

    const-string v7, "duration_key"

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x5

    aget-object v2, v2, v6

    const-string v6, "color_value_key"

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->toJsonString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "callActionHandler - not supported method: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move-object/from16 v17, v15

    goto/16 :goto_9

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v2, v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error code : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EdgelightingRoutineActionHandler"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x64

    if-eq v0, v5, :cond_7

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    const-string v5, "Action not executed due to some reason"

    invoke-direct {v0, v5}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;-><init>(Ljava/lang/String;)V

    const-string v5, "Error"

    iput-object v5, v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->a:Ljava/lang/String;

    new-instance v6, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->b:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v0, v7}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    const-string v5, "Couldn\'t perform this action because not supported effect"

    invoke-direct {v0, v5}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    iget-object v5, v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->b:Ljava/lang/String;

    invoke-direct {v6, v5, v0, v7}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    :goto_7
    invoke-virtual {v6}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :pswitch_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->CONFIG_TEMPLATE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    const-string v2, "RoutineActionHandler"

    const-string v5, "onRequestTemplateContents: this should not be called without overriding!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v2, v5}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    iget-object v2, v2, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;->a:Landroid/os/Bundle;

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :pswitch_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    iget v2, v2, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->a:I

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_6

    :pswitch_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    new-instance v12, Ljava/lang/Thread;

    new-instance v11, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda3;

    const/16 v16, 0x1

    move-object v4, v11

    move-object/from16 v6, p1

    move-object v7, v3

    move-object v1, v11

    move-object v11, v2

    move-object/from16 p3, v2

    move-object v2, v12

    move-object v12, v13

    move-object/from16 v17, v15

    move-object v15, v13

    move/from16 v13, v16

    invoke-direct/range {v4 .. v13}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;I)V

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "checkValidity: timeout"

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    :goto_8
    move-object v4, v0

    goto/16 :goto_9

    :cond_8
    move-object/from16 v4, p3

    goto/16 :goto_9

    :pswitch_5
    move-object/from16 v17, v15

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v15, Ljava/lang/Thread;

    new-instance v13, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda3;

    const/16 v16, 0x0

    move-object v4, v13

    move-object/from16 v6, p1

    move-object v7, v3

    move-object v11, v1

    move-object v12, v2

    move-object/from16 p3, v1

    move-object v1, v13

    move/from16 v13, v16

    invoke-direct/range {v4 .. v13}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;I)V

    invoke-direct {v15, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "getPreviewImageFileDescriptor: timeout"

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_8

    :pswitch_6
    move-object/from16 v17, v15

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v13, Ljava/lang/Thread;

    new-instance v15, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;

    move-object v4, v15

    move-object/from16 v6, p1

    move-object v7, v3

    move-object v11, v1

    move-object v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v13, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "getParameterLabel: timeout"

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_8

    :cond_9
    move-object v4, v1

    goto/16 :goto_9

    :pswitch_7
    move-object/from16 v17, v15

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v13, Ljava/lang/Thread;

    new-instance v15, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda1;

    move-object v4, v15

    move-object/from16 v6, p1

    move-object v7, v3

    move-object v11, v1

    move-object v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v13, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "onPerformReverseAction: timeout"

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_8

    :pswitch_8
    move-object/from16 v17, v15

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v13, Ljava/lang/Thread;

    new-instance v15, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;

    move-object v4, v15

    move-object/from16 v6, p1

    move-object v7, v3

    move-object v11, v1

    move-object v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v13, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "onPerformAction: timeout"

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_8

    :pswitch_9
    move-object/from16 v17, v15

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v13, Ljava/lang/Thread;

    new-instance v15, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;

    move-object v4, v15

    move-object/from16 v6, p1

    move-object v7, v3

    move-object v11, v1

    move-object v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v13, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "getCurrentParameterValues: timeout"

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_8

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callActionHandler end - tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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

    const-string p0, "ActionDispatcher"

    return-object p0
.end method
