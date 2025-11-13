.class Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;JLjava/lang/Object;Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V
    .locals 1

    .line 217
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->INSTANCE_ID:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 218
    iget p1, p4, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->customErrorCode:I

    const/4 p2, 0x1

    if-lt p1, p2, :cond_0

    const p2, 0xffffff

    if-gt p1, p2, :cond_0

    .line 220
    sget-object p1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_TYPE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 221
    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    .line 222
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    sget-object p1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object p1

    iget p2, p4, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->customErrorCode:I

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 227
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 228
    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p4, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->resultCode:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    iget p2, p2, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->value:I

    .line 229
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    :goto_0
    iget-object p1, p4, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->outputValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    if-eqz p1, :cond_1

    .line 233
    sget-object p1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->OUTPUT_PARAMS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 234
    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p4, Lcom/samsung/android/sdk/routines/v3/data/ActionResult;->outputValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 235
    invoke-virtual {p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->toJsonString()Ljava/lang/String;

    move-result-object p2

    .line 236
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_1
    monitor-enter p3

    .line 243
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->notify()V

    .line 244
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic a(Landroid/os/Bundle;Ljava/lang/Object;Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 250
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PREVIEW_IMAGE_FILE_DESCRIPTOR:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 252
    monitor-enter p1

    .line 253
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 254
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic a(Landroid/os/Bundle;Ljava/lang/Object;Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;)V
    .locals 2

    .line 282
    iget-object v0, p2, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;->type:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;->CUSTOM_ERROR:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    if-ne v0, v1, :cond_0

    .line 283
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_TYPE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 284
    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    .line 285
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 289
    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget p2, p2, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;->customReasonCode:I

    .line 290
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 294
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;->validity:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    iget p2, p2, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->value:I

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    :goto_0
    monitor-enter p1

    .line 297
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 298
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic a(Landroid/os/Bundle;Ljava/lang/Object;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V
    .locals 1

    .line 206
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PARAMETER_VALUES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 207
    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->toJsonString()Ljava/lang/String;

    move-result-object p2

    .line 209
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    monitor-enter p1

    .line 215
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 216
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

    .line 245
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->CONFIG_LABEL_PARAMS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    monitor-enter p1

    .line 248
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 249
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 7

    .line 281
    new-instance v6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-direct {v6, p6, p7}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;-><init>(Landroid/os/Bundle;Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->checkValidity(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 7

    .line 22
    new-instance v6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v6, p6, p7}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda5;-><init>(Landroid/os/Bundle;Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->getCurrentParameterValues(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 7

    .line 19
    new-instance v6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    invoke-direct {v6, p6, p7}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;-><init>(Landroid/os/Bundle;Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 7

    .line 19
    new-instance v6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda9;

    invoke-direct {v6, p6, p7}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda9;-><init>(Landroid/os/Bundle;Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->getPreviewImageFileDescriptor(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 7

    .line 34
    new-instance v6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda7;

    invoke-direct {v6, p6, p4, p5, p7}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda7;-><init>(Landroid/os/Bundle;JLjava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onPerformAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;
    .locals 13

    .line 255
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 256
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;

    move-object v0, v12

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 278
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    move-object v0, p0

    .line 280
    invoke-virtual {p0, v10}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;->a(Ljava/lang/Object;)V

    return-object v9
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->c()Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->a()Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    move-result-object v3

    const/4 v0, 0x0

    const-string v8, "ActionDispatcher"

    if-nez v3, :cond_0

    const-string p0, "callActionHandler - actionHandler is null"

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

    const-string p0, "callActionHandler - tag is null"

    .line 9
    invoke-static {v8, p0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 13
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callActionHandler start - method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->INSTANCE_ID:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v5, 0x0

    invoke-virtual {p3, v1, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 17
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PARAMETER_VALUES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 19
    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v5

    .line 26
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$1;->a:[I

    invoke-static {p2}, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "callActionHandler - not supported method: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :pswitch_0
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p3, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    sget-object p3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 107
    invoke-virtual {p3}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object p3

    move-object v1, v3

    move-object v2, p1

    move-object v3, v4

    move v4, p0

    move-wide v5, v6

    .line 109
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onRequestErrorDialogContents(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 111
    invoke-virtual {v0, p3, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 112
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->CONFIG_TEMPLATE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-interface {v3, p1, v4}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 116
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 117
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 120
    invoke-interface {v3, p1, v4}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->getValue()I

    move-result p1

    .line 121
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    move-object v1, p0

    move-object v2, p1

    .line 122
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    move-object v1, p0

    move-object v2, p1

    .line 123
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;->d(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    move-object v1, p0

    move-object v2, p1

    .line 124
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;->c(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v1, v3

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    .line 125
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onPerformReverseAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)V

    goto :goto_0

    :pswitch_7
    move-object v1, p0

    move-object v2, p1

    .line 126
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;->e(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    move-object v1, p0

    move-object v2, p1

    .line 127
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;->b(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;

    move-result-object v0

    .line 205
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "callActionHandler end - method: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

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

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 299
    monitor-enter p1

    const-wide/16 v0, 0x2710

    .line 301
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

    .line 303
    :try_start_1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionDispatcher"

    .line 304
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

    .line 306
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final b(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;
    .locals 13

    .line 1
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda3;

    move-object v0, v12

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    move-object v0, p0

    .line 21
    invoke-virtual {p0, v10}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;->a(Ljava/lang/Object;)V

    return-object v9
.end method

.method public final c(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;
    .locals 13

    .line 1
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;

    move-object v0, v12

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    move-object v0, p0

    .line 18
    invoke-virtual {p0, v10}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;->a(Ljava/lang/Object;)V

    return-object v9
.end method

.method public final d(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;
    .locals 13

    .line 1
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;

    move-object v0, v12

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    move-object v0, p0

    .line 18
    invoke-virtual {p0, v10}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;->a(Ljava/lang/Object;)V

    return-object v9
.end method

.method public final e(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)Landroid/os/Bundle;
    .locals 13

    .line 1
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda1;

    move-object v0, v12

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    move-object v0, p0

    .line 33
    invoke-virtual {p0, v10}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;->a(Ljava/lang/Object;)V

    return-object v9
.end method
