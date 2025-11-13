.class public final enum Lcom/samsung/android/sume/Event;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/samsung/android/sume/ValuedEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/Event;",
        ">;",
        "Lcom/samsung/android/sume/ValuedEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_CREATE_FAIL:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_DEAD_OBJECTS:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_INIT_FAIL:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_INSUFFICIENT_MEMORY:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_INSUFFICIENT_RESOURCE:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_INVALID_ARGUMENT:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_INVALID_FILE:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_INVALID_OBJECT:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_INVALID_OPERATION:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_INVALID_STATUS:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_MALFORMED:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_NOT_EXIST:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_NOT_SUPPORTED:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_NO_DATA:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_NO_INIT:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_NO_INPUT_DATA:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_NO_RESPONSE:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_PROCESS_DEAD:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_START_FAIL:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_STOP_FAIL:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_TIME_OUT:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_WRITE_FAIL:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist ERROR_WRONG_FORMAT:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist INFO_END_OF_STREAM:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist INFO_EXECUTOR_READY:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist INFO_FINISH_RUN:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist INFO_FINISH_STORE:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist INFO_FORMAT_CHANGED:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist INFO_FULL_DONE:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist INFO_PARTIAL_DONE:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist INFO_PARTIAL_START:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist INFO_RUNTIME_ALTERED:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist INFO_RUNTIME_CREATED:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist INFO_RUNTIME_RELEASED:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist INFO_START_RUN:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist INFO_START_STORE:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist OK:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist WARN_ALREADY_RELEASED:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist WARN_NOT_AVAILABLE:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist WARN_NOT_DETECTED:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist WARN_NOT_READY:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist WARN_NOT_RECEIVED:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist WARN_NO_DATA:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist WARN_UNSUPPORTED_CONTENT:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist _ERROR_BEG:Lcom/samsung/android/sume/Event;

.field public static final enum blacklist _WARN_BEG:Lcom/samsung/android/sume/Event;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 49

    .line 7
    new-instance v0, Lcom/samsung/android/sume/Event;

    const-string v1, "_ERROR_BEG"

    const/4 v2, 0x0

    const/16 v3, -0x2710

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/Event;->_ERROR_BEG:Lcom/samsung/android/sume/Event;

    .line 8
    new-instance v1, Lcom/samsung/android/sume/Event;

    iget v3, v0, Lcom/samsung/android/sume/Event;->value:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const-string v5, "ERROR_WRONG_FORMAT"

    invoke-direct {v1, v5, v4, v3}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sume/Event;->ERROR_WRONG_FORMAT:Lcom/samsung/android/sume/Event;

    .line 9
    new-instance v3, Lcom/samsung/android/sume/Event;

    iget v5, v0, Lcom/samsung/android/sume/Event;->value:I

    const/4 v6, 0x2

    add-int/2addr v5, v6

    const-string v7, "ERROR_INVALID_OBJECT"

    invoke-direct {v3, v7, v6, v5}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sume/Event;->ERROR_INVALID_OBJECT:Lcom/samsung/android/sume/Event;

    .line 10
    new-instance v5, Lcom/samsung/android/sume/Event;

    iget v7, v0, Lcom/samsung/android/sume/Event;->value:I

    const/4 v8, 0x3

    add-int/2addr v7, v8

    const-string v9, "ERROR_NOT_EXIST"

    invoke-direct {v5, v9, v8, v7}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/Event;->ERROR_NOT_EXIST:Lcom/samsung/android/sume/Event;

    .line 11
    new-instance v7, Lcom/samsung/android/sume/Event;

    iget v9, v0, Lcom/samsung/android/sume/Event;->value:I

    const/4 v10, 0x4

    add-int/2addr v9, v10

    const-string v11, "ERROR_INIT_FAIL"

    invoke-direct {v7, v11, v10, v9}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/sume/Event;->ERROR_INIT_FAIL:Lcom/samsung/android/sume/Event;

    .line 12
    new-instance v9, Lcom/samsung/android/sume/Event;

    iget v11, v0, Lcom/samsung/android/sume/Event;->value:I

    const/4 v12, 0x5

    add-int/2addr v11, v12

    const-string v13, "ERROR_NO_INIT"

    invoke-direct {v9, v13, v12, v11}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/sume/Event;->ERROR_NO_INIT:Lcom/samsung/android/sume/Event;

    .line 13
    new-instance v11, Lcom/samsung/android/sume/Event;

    iget v13, v0, Lcom/samsung/android/sume/Event;->value:I

    const/4 v14, 0x6

    add-int/2addr v13, v14

    const-string v15, "ERROR_INSUFFICIENT_MEMORY"

    invoke-direct {v11, v15, v14, v13}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/sume/Event;->ERROR_INSUFFICIENT_MEMORY:Lcom/samsung/android/sume/Event;

    .line 14
    new-instance v13, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/4 v14, 0x7

    add-int/2addr v15, v14

    const-string v12, "ERROR_INSUFFICIENT_RESOURCE"

    invoke-direct {v13, v12, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/sume/Event;->ERROR_INSUFFICIENT_RESOURCE:Lcom/samsung/android/sume/Event;

    .line 15
    new-instance v12, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/16 v14, 0x8

    add-int/2addr v15, v14

    const-string v10, "ERROR_MALFORMED"

    invoke-direct {v12, v10, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/sume/Event;->ERROR_MALFORMED:Lcom/samsung/android/sume/Event;

    .line 16
    new-instance v10, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/16 v14, 0x9

    add-int/2addr v15, v14

    const-string v8, "ERROR_WRITE_FAIL"

    invoke-direct {v10, v8, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/sume/Event;->ERROR_WRITE_FAIL:Lcom/samsung/android/sume/Event;

    .line 17
    new-instance v8, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/16 v14, 0xa

    add-int/2addr v15, v14

    const-string v6, "ERROR_INVALID_STATUS"

    invoke-direct {v8, v6, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/sume/Event;->ERROR_INVALID_STATUS:Lcom/samsung/android/sume/Event;

    .line 18
    new-instance v6, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/16 v14, 0xb

    add-int/2addr v15, v14

    const-string v4, "ERROR_INVALID_OPERATION"

    invoke-direct {v6, v4, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/sume/Event;->ERROR_INVALID_OPERATION:Lcom/samsung/android/sume/Event;

    .line 19
    new-instance v4, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/16 v14, 0xc

    add-int/2addr v15, v14

    const-string v2, "ERROR_INVALID_ARGUMENT"

    invoke-direct {v4, v2, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Event;->ERROR_INVALID_ARGUMENT:Lcom/samsung/android/sume/Event;

    .line 20
    new-instance v2, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/16 v14, 0xd

    add-int/2addr v15, v14

    move-object/from16 v16, v4

    const-string v4, "ERROR_START_FAIL"

    invoke-direct {v2, v4, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->ERROR_START_FAIL:Lcom/samsung/android/sume/Event;

    .line 21
    new-instance v4, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/16 v14, 0xe

    add-int/2addr v15, v14

    move-object/from16 v17, v2

    const-string v2, "ERROR_STOP_FAIL"

    invoke-direct {v4, v2, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Event;->ERROR_STOP_FAIL:Lcom/samsung/android/sume/Event;

    .line 22
    new-instance v2, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/16 v14, 0xf

    add-int/2addr v15, v14

    move-object/from16 v18, v4

    const-string v4, "ERROR_NO_DATA"

    invoke-direct {v2, v4, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->ERROR_NO_DATA:Lcom/samsung/android/sume/Event;

    .line 23
    new-instance v4, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/16 v14, 0x10

    add-int/2addr v15, v14

    move-object/from16 v19, v2

    const-string v2, "ERROR_DEAD_OBJECTS"

    invoke-direct {v4, v2, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Event;->ERROR_DEAD_OBJECTS:Lcom/samsung/android/sume/Event;

    .line 24
    new-instance v2, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/16 v14, 0x11

    add-int/2addr v15, v14

    move-object/from16 v20, v4

    const-string v4, "ERROR_PROCESS_DEAD"

    invoke-direct {v2, v4, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->ERROR_PROCESS_DEAD:Lcom/samsung/android/sume/Event;

    .line 25
    new-instance v4, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/16 v14, 0x12

    add-int/2addr v15, v14

    move-object/from16 v21, v2

    const-string v2, "ERROR_NO_RESPONSE"

    invoke-direct {v4, v2, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Event;->ERROR_NO_RESPONSE:Lcom/samsung/android/sume/Event;

    .line 26
    new-instance v2, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/16 v14, 0x13

    add-int/2addr v15, v14

    move-object/from16 v22, v4

    const-string v4, "ERROR_NOT_SUPPORTED"

    invoke-direct {v2, v4, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->ERROR_NOT_SUPPORTED:Lcom/samsung/android/sume/Event;

    .line 27
    new-instance v4, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/16 v14, 0x14

    add-int/2addr v15, v14

    move-object/from16 v23, v2

    const-string v2, "ERROR_TIME_OUT"

    invoke-direct {v4, v2, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Event;->ERROR_TIME_OUT:Lcom/samsung/android/sume/Event;

    .line 28
    new-instance v2, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    const/16 v14, 0x15

    add-int/2addr v15, v14

    move-object/from16 v24, v4

    const-string v4, "ERROR_NO_INPUT_DATA"

    invoke-direct {v2, v4, v14, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->ERROR_NO_INPUT_DATA:Lcom/samsung/android/sume/Event;

    .line 29
    new-instance v4, Lcom/samsung/android/sume/Event;

    iget v15, v0, Lcom/samsung/android/sume/Event;->value:I

    add-int/lit8 v15, v15, 0x16

    const-string v14, "ERROR_CREATE_FAIL"

    move-object/from16 v25, v2

    const/16 v2, 0x16

    invoke-direct {v4, v14, v2, v15}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Event;->ERROR_CREATE_FAIL:Lcom/samsung/android/sume/Event;

    .line 30
    new-instance v2, Lcom/samsung/android/sume/Event;

    iget v14, v0, Lcom/samsung/android/sume/Event;->value:I

    add-int/lit8 v14, v14, 0x17

    const-string v15, "ERROR_INVALID_FILE"

    move-object/from16 v26, v4

    const/16 v4, 0x17

    invoke-direct {v2, v15, v4, v14}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->ERROR_INVALID_FILE:Lcom/samsung/android/sume/Event;

    .line 32
    new-instance v4, Lcom/samsung/android/sume/Event;

    const-string v14, "OK"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const/4 v2, 0x0

    invoke-direct {v4, v14, v15, v2}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Event;->OK:Lcom/samsung/android/sume/Event;

    .line 33
    new-instance v2, Lcom/samsung/android/sume/Event;

    const-string v14, "INFO_END_OF_STREAM"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const/4 v4, 0x1

    invoke-direct {v2, v14, v15, v4}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->INFO_END_OF_STREAM:Lcom/samsung/android/sume/Event;

    .line 34
    new-instance v4, Lcom/samsung/android/sume/Event;

    const-string v14, "INFO_FORMAT_CHANGED"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const/4 v2, 0x2

    invoke-direct {v4, v14, v15, v2}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Event;->INFO_FORMAT_CHANGED:Lcom/samsung/android/sume/Event;

    .line 35
    new-instance v2, Lcom/samsung/android/sume/Event;

    const-string v14, "INFO_EXECUTOR_READY"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const/4 v4, 0x3

    invoke-direct {v2, v14, v15, v4}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->INFO_EXECUTOR_READY:Lcom/samsung/android/sume/Event;

    .line 36
    new-instance v4, Lcom/samsung/android/sume/Event;

    const-string v14, "INFO_RUNTIME_CREATED"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const/4 v2, 0x4

    invoke-direct {v4, v14, v15, v2}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Event;->INFO_RUNTIME_CREATED:Lcom/samsung/android/sume/Event;

    .line 37
    new-instance v2, Lcom/samsung/android/sume/Event;

    const-string v14, "INFO_FINISH_RUN"

    const/16 v15, 0x1d

    move-object/from16 v32, v4

    const/4 v4, 0x5

    invoke-direct {v2, v14, v15, v4}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->INFO_FINISH_RUN:Lcom/samsung/android/sume/Event;

    .line 38
    new-instance v4, Lcom/samsung/android/sume/Event;

    const-string v14, "INFO_PARTIAL_DONE"

    const/16 v15, 0x1e

    move-object/from16 v33, v2

    const/4 v2, 0x6

    invoke-direct {v4, v14, v15, v2}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Event;->INFO_PARTIAL_DONE:Lcom/samsung/android/sume/Event;

    .line 39
    new-instance v2, Lcom/samsung/android/sume/Event;

    const-string v14, "INFO_FULL_DONE"

    const/16 v15, 0x1f

    move-object/from16 v34, v4

    const/4 v4, 0x7

    invoke-direct {v2, v14, v15, v4}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->INFO_FULL_DONE:Lcom/samsung/android/sume/Event;

    .line 40
    new-instance v4, Lcom/samsung/android/sume/Event;

    const-string v14, "INFO_RUNTIME_RELEASED"

    const/16 v15, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x8

    invoke-direct {v4, v14, v15, v2}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Event;->INFO_RUNTIME_RELEASED:Lcom/samsung/android/sume/Event;

    .line 41
    new-instance v2, Lcom/samsung/android/sume/Event;

    const-string v14, "INFO_RUNTIME_ALTERED"

    const/16 v15, 0x21

    move-object/from16 v36, v4

    const/16 v4, 0x9

    invoke-direct {v2, v14, v15, v4}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->INFO_RUNTIME_ALTERED:Lcom/samsung/android/sume/Event;

    .line 42
    new-instance v4, Lcom/samsung/android/sume/Event;

    const-string v14, "INFO_START_RUN"

    const/16 v15, 0x22

    move-object/from16 v37, v2

    const/16 v2, 0xa

    invoke-direct {v4, v14, v15, v2}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Event;->INFO_START_RUN:Lcom/samsung/android/sume/Event;

    .line 43
    new-instance v2, Lcom/samsung/android/sume/Event;

    const-string v14, "INFO_PARTIAL_START"

    const/16 v15, 0x23

    move-object/from16 v38, v4

    const/16 v4, 0xb

    invoke-direct {v2, v14, v15, v4}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->INFO_PARTIAL_START:Lcom/samsung/android/sume/Event;

    .line 44
    new-instance v4, Lcom/samsung/android/sume/Event;

    const-string v14, "INFO_START_STORE"

    const/16 v15, 0x24

    move-object/from16 v39, v2

    const/16 v2, 0xc

    invoke-direct {v4, v14, v15, v2}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Event;->INFO_START_STORE:Lcom/samsung/android/sume/Event;

    .line 45
    new-instance v2, Lcom/samsung/android/sume/Event;

    const-string v14, "INFO_FINISH_STORE"

    const/16 v15, 0x25

    move-object/from16 v40, v4

    const/16 v4, 0xd

    invoke-direct {v2, v14, v15, v4}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->INFO_FINISH_STORE:Lcom/samsung/android/sume/Event;

    .line 47
    new-instance v4, Lcom/samsung/android/sume/Event;

    const-string v14, "_WARN_BEG"

    const/16 v15, 0x26

    move-object/from16 v41, v2

    const/16 v2, 0x3e8

    invoke-direct {v4, v14, v15, v2}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Event;->_WARN_BEG:Lcom/samsung/android/sume/Event;

    .line 48
    new-instance v2, Lcom/samsung/android/sume/Event;

    iget v14, v4, Lcom/samsung/android/sume/Event;->value:I

    const/4 v15, 0x1

    add-int/2addr v14, v15

    const-string v15, "WARN_NOT_RECEIVED"

    move-object/from16 v42, v6

    const/16 v6, 0x27

    invoke-direct {v2, v15, v6, v14}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->WARN_NOT_RECEIVED:Lcom/samsung/android/sume/Event;

    .line 49
    new-instance v6, Lcom/samsung/android/sume/Event;

    iget v14, v4, Lcom/samsung/android/sume/Event;->value:I

    const/4 v15, 0x2

    add-int/2addr v14, v15

    const-string v15, "WARN_NOT_READY"

    move-object/from16 v43, v2

    const/16 v2, 0x28

    invoke-direct {v6, v15, v2, v14}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/sume/Event;->WARN_NOT_READY:Lcom/samsung/android/sume/Event;

    .line 50
    new-instance v2, Lcom/samsung/android/sume/Event;

    iget v14, v4, Lcom/samsung/android/sume/Event;->value:I

    const/4 v15, 0x3

    add-int/2addr v14, v15

    const-string v15, "WARN_NOT_AVAILABLE"

    move-object/from16 v44, v6

    const/16 v6, 0x29

    invoke-direct {v2, v15, v6, v14}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->WARN_NOT_AVAILABLE:Lcom/samsung/android/sume/Event;

    .line 51
    new-instance v6, Lcom/samsung/android/sume/Event;

    iget v14, v4, Lcom/samsung/android/sume/Event;->value:I

    const/4 v15, 0x4

    add-int/2addr v14, v15

    const-string v15, "WARN_ALREADY_RELEASED"

    move-object/from16 v45, v2

    const/16 v2, 0x2a

    invoke-direct {v6, v15, v2, v14}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/sume/Event;->WARN_ALREADY_RELEASED:Lcom/samsung/android/sume/Event;

    .line 52
    new-instance v2, Lcom/samsung/android/sume/Event;

    iget v14, v4, Lcom/samsung/android/sume/Event;->value:I

    const/4 v15, 0x5

    add-int/2addr v14, v15

    const-string v15, "WARN_NO_DATA"

    move-object/from16 v46, v6

    const/16 v6, 0x2b

    invoke-direct {v2, v15, v6, v14}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->WARN_NO_DATA:Lcom/samsung/android/sume/Event;

    .line 53
    new-instance v6, Lcom/samsung/android/sume/Event;

    iget v14, v4, Lcom/samsung/android/sume/Event;->value:I

    const/4 v15, 0x6

    add-int/2addr v14, v15

    const-string v15, "WARN_NOT_DETECTED"

    move-object/from16 v47, v2

    const/16 v2, 0x2c

    invoke-direct {v6, v15, v2, v14}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/sume/Event;->WARN_NOT_DETECTED:Lcom/samsung/android/sume/Event;

    .line 54
    new-instance v2, Lcom/samsung/android/sume/Event;

    iget v14, v4, Lcom/samsung/android/sume/Event;->value:I

    const/4 v15, 0x7

    add-int/2addr v14, v15

    const-string v15, "WARN_UNSUPPORTED_CONTENT"

    move-object/from16 v48, v6

    const/16 v6, 0x2d

    invoke-direct {v2, v15, v6, v14}, Lcom/samsung/android/sume/Event;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sume/Event;->WARN_UNSUPPORTED_CONTENT:Lcom/samsung/android/sume/Event;

    .line 6
    const/16 v6, 0x2e

    new-array v6, v6, [Lcom/samsung/android/sume/Event;

    const/4 v14, 0x0

    aput-object v0, v6, v14

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    const/16 v0, 0xa

    aput-object v8, v6, v0

    const/16 v0, 0xb

    aput-object v42, v6, v0

    const/16 v0, 0xc

    aput-object v16, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    const/16 v0, 0x12

    aput-object v22, v6, v0

    const/16 v0, 0x13

    aput-object v23, v6, v0

    const/16 v0, 0x14

    aput-object v24, v6, v0

    const/16 v0, 0x15

    aput-object v25, v6, v0

    const/16 v0, 0x16

    aput-object v26, v6, v0

    const/16 v0, 0x17

    aput-object v27, v6, v0

    const/16 v0, 0x18

    aput-object v28, v6, v0

    const/16 v0, 0x19

    aput-object v29, v6, v0

    const/16 v0, 0x1a

    aput-object v30, v6, v0

    const/16 v0, 0x1b

    aput-object v31, v6, v0

    const/16 v0, 0x1c

    aput-object v32, v6, v0

    const/16 v0, 0x1d

    aput-object v33, v6, v0

    const/16 v0, 0x1e

    aput-object v34, v6, v0

    const/16 v0, 0x1f

    aput-object v35, v6, v0

    const/16 v0, 0x20

    aput-object v36, v6, v0

    const/16 v0, 0x21

    aput-object v37, v6, v0

    const/16 v0, 0x22

    aput-object v38, v6, v0

    const/16 v0, 0x23

    aput-object v39, v6, v0

    const/16 v0, 0x24

    aput-object v40, v6, v0

    const/16 v0, 0x25

    aput-object v41, v6, v0

    const/16 v0, 0x26

    aput-object v4, v6, v0

    const/16 v0, 0x27

    aput-object v43, v6, v0

    const/16 v0, 0x28

    aput-object v44, v6, v0

    const/16 v0, 0x29

    aput-object v45, v6, v0

    const/16 v0, 0x2a

    aput-object v46, v6, v0

    const/16 v0, 0x2b

    aput-object v47, v6, v0

    const/16 v0, 0x2c

    aput-object v48, v6, v0

    const/16 v0, 0x2d

    aput-object v2, v6, v0

    sput-object v6, Lcom/samsung/android/sume/Event;->$VALUES:[Lcom/samsung/android/sume/Event;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "event"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sume/Event;->value:I

    return-void
.end method

.method public static blacklist from(I)Lcom/samsung/android/sume/Event;
    .locals 1
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 74
    const-class v0, Lcom/samsung/android/sume/Event;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Event;

    return-object v0
.end method

.method public static blacklist isError(Lcom/samsung/android/sume/Event;)Z
    .locals 2
    .param p0, "event"    # Lcom/samsung/android/sume/Event;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 81
    iget v0, p0, Lcom/samsung/android/sume/Event;->value:I

    sget-object v1, Lcom/samsung/android/sume/Event;->OK:Lcom/samsung/android/sume/Event;

    iget v1, v1, Lcom/samsung/android/sume/Event;->value:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isOk(Lcom/samsung/android/sume/Event;)Z
    .locals 2
    .param p0, "event"    # Lcom/samsung/android/sume/Event;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 78
    iget v0, p0, Lcom/samsung/android/sume/Event;->value:I

    sget-object v1, Lcom/samsung/android/sume/Event;->OK:Lcom/samsung/android/sume/Event;

    iget v1, v1, Lcom/samsung/android/sume/Event;->value:I

    if-lt v0, v1, :cond_0

    sget-object v1, Lcom/samsung/android/sume/Event;->_WARN_BEG:Lcom/samsung/android/sume/Event;

    iget v1, v1, Lcom/samsung/android/sume/Event;->value:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isWarn(Lcom/samsung/android/sume/Event;)Z
    .locals 2
    .param p0, "event"    # Lcom/samsung/android/sume/Event;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 84
    iget v0, p0, Lcom/samsung/android/sume/Event;->value:I

    sget-object v1, Lcom/samsung/android/sume/Event;->_WARN_BEG:Lcom/samsung/android/sume/Event;

    iget v1, v1, Lcom/samsung/android/sume/Event;->value:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    const-class v0, Lcom/samsung/android/sume/Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Event;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/Event;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/android/sume/Event;->$VALUES:[Lcom/samsung/android/sume/Event;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/Event;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/samsung/android/sume/Event;->value:I

    return v0
.end method

.method public blacklist isError()Z
    .locals 1

    .line 70
    invoke-static {p0}, Lcom/samsung/android/sume/Event;->isError(Lcom/samsung/android/sume/Event;)Z

    move-result v0

    return v0
.end method

.method public blacklist isOk()Z
    .locals 1

    .line 69
    invoke-static {p0}, Lcom/samsung/android/sume/Event;->isOk(Lcom/samsung/android/sume/Event;)Z

    move-result v0

    return v0
.end method

.method public blacklist isWarn()Z
    .locals 1

    .line 71
    invoke-static {p0}, Lcom/samsung/android/sume/Event;->isWarn(Lcom/samsung/android/sume/Event;)Z

    move-result v0

    return v0
.end method

.method public blacklist toJson()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/Event;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/Event;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
