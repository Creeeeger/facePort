.class public final enum Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CALL_TYPE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum CONFIG_LABEL_PARAMS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum CONFIG_TEMPLATE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum ERROR_DIALOG_BUTTON_INTENT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum ERROR_DIALOG_BUTTON_TEXT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum ERROR_DIALOG_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum ERROR_DIALOG_MESSAGE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum ERROR_DIALOG_TITLE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum INSTANCE_ID:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum MIGRATED_PARAMETER:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum OUTPUT_PARAMS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum PARAMETER_VALUES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum PREVIEW_IMAGE_FILE_DESCRIPTOR:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum RESULT_TYPE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum TAG:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final enum TARGET_INSTANCES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

.field public static final synthetic b:[Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v0, v1

    const/4 v2, 0x0

    const-string/jumbo v3, "type"

    const-string v4, "CALL_TYPE"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->CALL_TYPE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v1, v2

    const/4 v3, 0x1

    const-string/jumbo v4, "tag"

    const-string v5, "TAG"

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->TAG:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "instanceId"

    const-string v6, "INSTANCE_ID"

    invoke-direct {v3, v6, v4, v5}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->INSTANCE_ID:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v4, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "labelParams"

    const-string v7, "CONFIG_LABEL_PARAMS"

    invoke-direct {v4, v7, v5, v6}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->CONFIG_LABEL_PARAMS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v5, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v4, v5

    const/4 v6, 0x4

    const-string/jumbo v7, "previewImageFileDescriptor"

    const-string v8, "PREVIEW_IMAGE_FILE_DESCRIPTOR"

    invoke-direct {v5, v8, v6, v7}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PREVIEW_IMAGE_FILE_DESCRIPTOR:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v6, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v5, v6

    const/4 v7, 0x5

    const-string/jumbo v8, "parameterValues"

    const-string v9, "PARAMETER_VALUES"

    invoke-direct {v6, v9, v7, v8}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PARAMETER_VALUES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v7, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v6, v7

    const/4 v8, 0x6

    const-string/jumbo v9, "resultBoolean"

    const-string v10, "RESULT_BOOLEAN"

    invoke-direct {v7, v10, v8, v9}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v7, v8

    const/4 v9, 0x7

    const-string/jumbo v10, "resultInt"

    const-string v11, "RESULT_INT"

    invoke-direct {v8, v11, v9, v10}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v9, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v8, v9

    const/16 v10, 0x8

    const-string/jumbo v11, "resultType"

    const-string v12, "RESULT_TYPE"

    invoke-direct {v9, v12, v10, v11}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_TYPE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v10, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v9, v10

    const/16 v11, 0x9

    const-string/jumbo v12, "outputParams"

    const-string v13, "OUTPUT_PARAMS"

    invoke-direct {v10, v13, v11, v12}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->OUTPUT_PARAMS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v11, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "configTemplate"

    const-string v14, "CONFIG_TEMPLATE"

    invoke-direct {v11, v14, v12, v13}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->CONFIG_TEMPLATE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v12, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v11, v12

    const/16 v13, 0xb

    const-string/jumbo v14, "mode_name"

    const-string v15, "MODE_NAME"

    invoke-direct {v12, v15, v13, v14}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v13, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "anchorPoint"

    move-object/from16 v21, v0

    const-string v0, "ANCHOR_POINT"

    invoke-direct {v13, v0, v14, v15}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, "initialOrientation"

    move-object/from16 v22, v1

    const-string v1, "INITIAL_ORIENTATION"

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "errorDialogContents"

    move-object/from16 v23, v2

    const-string v2, "ERROR_DIALOG_CONTENTS"

    invoke-direct {v0, v2, v1, v15}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "errorDialogTitle"

    move-object/from16 v24, v3

    const-string v3, "ERROR_DIALOG_TITLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_TITLE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "errorDialogMessage"

    const-string v3, "ERROR_DIALOG_MESSAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_MESSAGE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "errorDialogButtonText"

    const-string v3, "ERROR_DIALOG_BUTTON_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_BUTTON_TEXT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-string v2, "errorDialogButtonIntent"

    const-string v3, "ERROR_DIALOG_BUTTON_INTENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_BUTTON_INTENT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-string/jumbo v2, "targetInstances"

    const-string v3, "TARGET_INSTANCES"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->TARGET_INSTANCES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-string/jumbo v2, "migratedParameter"

    const-string v3, "MIGRATED_PARAMETER"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->MIGRATED_PARAMETER:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    filled-new-array/range {v0 .. v20}, [Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->b:[Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->b:[Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    return-object v0
.end method
