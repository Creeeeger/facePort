.class public final Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;
.super Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    move-object/from16 v1, p3

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->TAG:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v2, v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    const-string v13, "ActionDispatcher"

    if-nez v12, :cond_0

    const-string v0, "callActionHandler - tag is null"

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    sget-object v4, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$LazyHolder;->a:Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    iget-object v4, v4, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->e:Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;

    invoke-virtual {v4, v12}, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;->getWithTimeout(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    if-nez v4, :cond_1

    const-string v0, "callActionHandler - actionHandler is null. tag="

    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "callActionHandler start - tag="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", method="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->INSTANCE_ID:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v5, v5, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sget-object v5, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PARAMETER_VALUES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v5, v5, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v5

    sget-object v8, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$1;->a:[I

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->values()[Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    move-result-object v9

    array-length v10, v9

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_3

    aget-object v15, v9, v2

    move-object/from16 v18, v9

    iget-object v9, v15, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->a:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v9, v18

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "ActionMethod.fromValue - not supported value: "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "ActionMethod"

    invoke-static {v9, v2}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v15, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->UNKNOWN:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    :goto_1
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v8, v2

    sget-object v8, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_4

    :pswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->MIGRATED_PARAMETER:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->TARGET_INSTANCES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v5, v5, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "getTargetInstances() targetInstances is null"

    invoke-static {v13, v1}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-class v8, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v1, v5

    :goto_3
    invoke-interface {v4, v3, v1}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onMigrate(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callActionHandler - not supported method: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move-object/from16 v17, v14

    goto/16 :goto_7

    :pswitch_1
    iget-object v0, v8, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v9, v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v12

    move v3, v5

    move-wide v4, v6

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onRequestErrorDialogContents(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_MESSAGE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v2, v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_TITLE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v3, v3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->c:Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;

    if-eqz v0, :cond_7

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_BUTTON_TEXT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v2, v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_BUTTON_INTENT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v2, v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;->b:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_7
    invoke-virtual {v8, v9, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v2, v8

    goto :goto_5

    :pswitch_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->CONFIG_TEMPLATE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    invoke-interface {v4, v3, v12}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :pswitch_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v8, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    invoke-interface {v4, v3, v12}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->a:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    :pswitch_4
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/lang/Thread;

    new-instance v8, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;

    const/16 v16, 0x5

    move-object v1, v8

    move-object v2, v4

    move-object/from16 v3, p1

    move-object v4, v12

    move-object v11, v8

    move-object v8, v15

    move-object/from16 p3, v15

    move-object v15, v9

    move-object v9, v10

    move-object/from16 v17, v14

    move-object v14, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;I)V

    invoke-direct {v15, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "checkValidity: timeout"

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    :goto_6
    move-object v2, v0

    goto/16 :goto_7

    :cond_8
    move-object/from16 v2, p3

    goto/16 :goto_7

    :pswitch_5
    move-object/from16 v17, v14

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v15, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;

    const/16 v16, 0x3

    move-object v1, v10

    move-object v2, v4

    move-object/from16 v3, p1

    move-object v4, v12

    move-object v8, v11

    move-object v9, v14

    move-object/from16 p3, v11

    move-object v11, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;I)V

    invoke-direct {v15, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "getPreviewImageFileDescriptor: timeout"

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_6

    :pswitch_6
    move-object/from16 v17, v14

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v15, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;

    const/16 v16, 0x4

    move-object v1, v10

    move-object v2, v4

    move-object/from16 v3, p1

    move-object v4, v12

    move-object v8, v11

    move-object v9, v14

    move-object/from16 p3, v11

    move-object v11, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;I)V

    invoke-direct {v15, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "getParameterLabel: timeout"

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_6

    :pswitch_7
    move-object/from16 v17, v14

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v15, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;

    const/16 v16, 0x1

    move-object v1, v10

    move-object v2, v4

    move-object/from16 v3, p1

    move-object v4, v12

    move-object v8, v11

    move-object v9, v14

    move-object/from16 p3, v11

    move-object v11, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;I)V

    invoke-direct {v15, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "onPerformReverseAction: timeout"

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_6

    :pswitch_8
    move-object/from16 v17, v14

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v15, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;

    const/16 v16, 0x2

    move-object v1, v10

    move-object v2, v4

    move-object/from16 v3, p1

    move-object v4, v12

    move-object v8, v11

    move-object v9, v14

    move-object/from16 p3, v11

    move-object v11, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;I)V

    invoke-direct {v15, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "onPerformAction: timeout"

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_6

    :pswitch_9
    move-object/from16 v17, v14

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v15, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;

    const/16 v16, 0x0

    move-object v1, v10

    move-object v2, v4

    move-object/from16 v3, p1

    move-object v4, v12

    move-object v8, v11

    move-object v9, v14

    move-object/from16 p3, v11

    move-object v11, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;I)V

    invoke-direct {v15, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "getCurrentParameterValues: timeout"

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/Dispatcher;->c$2()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_6

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callActionHandler end - tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

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
