.class Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;Ljava/lang/Object;Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;)V
    .locals 2

    .line 214
    iget-object v0, p2, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;->type:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->CUSTOM_ERROR:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    if-ne v0, v1, :cond_0

    .line 215
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_TYPE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 216
    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    .line 217
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 221
    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget p2, p2, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;->validityCode:I

    .line 222
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 225
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->CUSTOM_WARNING:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    if-ne v0, v1, :cond_1

    .line 227
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_TYPE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 228
    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    .line 229
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 233
    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget p2, p2, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;->validityCode:I

    .line 234
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 238
    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget p2, p2, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;->validityCode:I

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    :goto_0
    monitor-enter p1

    .line 242
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 243
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic a(Landroid/os/Bundle;Ljava/lang/Object;Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;)V
    .locals 1

    .line 168
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->getValue()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    monitor-enter p1

    .line 171
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 172
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic a(Landroid/os/Bundle;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 173
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->CONFIG_LABEL_PARAMS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    monitor-enter p1

    .line 176
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 177
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 7

    .line 213
    new-instance v6, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v6, p6, p7}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda5;-><init>(Landroid/os/Bundle;Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;->checkValidity(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 7

    .line 19
    new-instance v6, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v6, p6, p7}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda4;-><init>(Landroid/os/Bundle;Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;->getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 7

    .line 19
    new-instance v6, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v6, p6, p7}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;-><init>(Landroid/os/Bundle;Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;->isSatisfied(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;
    .locals 13

    .line 178
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 179
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda2;

    move-object v0, v12

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 210
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    move-object v0, p0

    .line 212
    invoke-virtual {p0, v10}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher;->a(Ljava/lang/Object;)V

    return-object v9
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->c()Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->b()Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;

    move-result-object v3

    const/4 v0, 0x0

    const-string v8, "ConditionDispatcher"

    if-nez v3, :cond_0

    const-string p0, "callConditionHandler - conditionHandler is null"

    .line 3
    invoke-static {v8, p0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->TAG:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string p0, "callConditionHandler - tag is null"

    .line 9
    invoke-static {v8, p0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 13
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callConditionHandler start - method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PARAMETER_VALUES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 17
    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v5

    .line 24
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->INSTANCE_ID:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x0

    invoke-virtual {p3, v1, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 26
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$1;->a:[I

    invoke-static {p2}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 83
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "callConditionHandler - not supported method: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :pswitch_0
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p3, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    sget-object p3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 87
    invoke-virtual {p3}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object p3

    move-object v1, v3

    move-object v2, p1

    move-object v3, v4

    move v4, p0

    move-wide v5, v6

    .line 89
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;->onRequestErrorDialogContents(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 91
    invoke-virtual {v0, p3, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 92
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->CONFIG_TEMPLATE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-interface {v3, p1, v4}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;->onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 98
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 99
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-interface {v3, p1, v4}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;->isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->getValue()I

    move-result p1

    .line 103
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    move-object v1, p0

    move-object v2, p1

    .line 104
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    move-object v1, p0

    move-object v2, p1

    .line 105
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher;->b(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    move-object v1, v3

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    .line 106
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;->onDisabled(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)V

    goto :goto_0

    :pswitch_6
    move-object v1, v3

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    .line 107
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;->onEnabled(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)V

    goto :goto_0

    :pswitch_7
    move-object v1, p0

    move-object v2, p1

    .line 108
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher;->c(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;

    move-result-object v0

    .line 167
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "callConditionHandler end - method: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 244
    monitor-enter p1

    const-wide/16 v0, 0x2710

    .line 246
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 248
    :try_start_1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionDispatcher"

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public b(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;
    .locals 13

    .line 1
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda1;

    move-object v0, v12

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    move-object v0, p0

    .line 18
    invoke-virtual {p0, v10}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher;->a(Ljava/lang/Object;)V

    return-object v9
.end method

.method public final c(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;
    .locals 13

    .line 1
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;

    move-object v0, v12

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    move-object v0, p0

    .line 18
    invoke-virtual {p0, v10}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher;->a(Ljava/lang/Object;)V

    return-object v9
.end method
