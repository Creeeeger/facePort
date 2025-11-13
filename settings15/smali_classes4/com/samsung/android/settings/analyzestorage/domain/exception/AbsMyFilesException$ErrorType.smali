.class public final enum Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

.field public static final enum ERROR_CLOUD_RELATED_END:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

.field public static final enum ERROR_CLOUD_RELATED_START:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

.field public static final enum ERROR_CLOUD_SIGN_IN_ALREADY_IN_PROGRESS:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

.field public static final enum ERROR_NONE:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

.field public static final enum ERROR_UNSUPPORTED_ARGS:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 53

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const-string v1, "ERROR_NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->ERROR_NONE:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const-string v3, "ERROR_UNKNOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const-string v3, "ERROR_UNSUPPORTED_ARGS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->ERROR_UNSUPPORTED_ARGS:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const/16 v4, 0x2710

    const-string v5, "ERROR_FILE_RELATED_START"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const/16 v5, 0x4e1f

    const-string v6, "ERROR_FILE_RELATED_END"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const/16 v6, 0x4e20

    const-string v7, "ERROR_QUOTA_RELATED_START"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const/16 v7, 0x752f

    const-string v8, "ERROR_QUOTA_RELATED_END"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const/16 v8, 0x7530

    const-string v9, "ERROR_REPOSITORY_RELATED_START"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v9, 0x9c3f

    const-string v10, "ERROR_REPOSITORY_RELATED_END"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v10, 0x9c40

    const-string v11, "ERROR_NETWORK_RELATED_START"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v11, 0x9c42

    const-string v12, "ERROR_NETWORK_UNSTABLE"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0x9c43

    const-string v13, "ERROR_NETWORK_POLICY_BLOCKED"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v13, 0x9c44

    const-string v14, "ERROR_NETWORK_NOT_SUFFICIENT_PERMISSION"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v14, 0x9c45

    const-string v15, "ERROR_NETWORK_WIFI_NOT_CONNECTED"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0x9c46

    const-string v15, "SMB1_NOT_SUPPORTED_EXCEPTION"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc34f

    const-string v13, "ERROR_NETWORK_RELATED_END"

    move-object/from16 v18, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc350

    const-string v13, "ERROR_CLOUD_RELATED_START"

    move-object/from16 v19, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->ERROR_CLOUD_RELATED_START:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc351

    const-string v13, "ERROR_CLOUD_SIGN_IN_ALREADY_IN_PROGRESS"

    move-object/from16 v20, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->ERROR_CLOUD_SIGN_IN_ALREADY_IN_PROGRESS:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc352

    const-string v13, "ERROR_CLOUD_SIGN_IN_NO_SELECTED_ACCOUNT"

    move-object/from16 v21, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc353

    const-string v13, "ERROR_CLOUD_ALREADY_SIGNED_IN"

    move-object/from16 v22, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc354

    const-string v13, "ERROR_CLOUD_TOKEN_FAILED"

    move-object/from16 v23, v15

    const/16 v15, 0x14

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc355

    const-string v13, "ERROR_CLOUD_TOKEN_EXPIRED"

    move-object/from16 v24, v14

    const/16 v14, 0x15

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc356

    const-string v13, "ERROR_CLOUD_AUTH_BLOCKED"

    move-object/from16 v25, v15

    const/16 v15, 0x16

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc357

    const-string v13, "ERROR_CLOUD_QUOTA_FAILED"

    move-object/from16 v26, v14

    const/16 v14, 0x17

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc3b4

    const-string v13, "ERROR_CLOUD_SYNC_FAILED"

    move-object/from16 v27, v15

    const/16 v15, 0x18

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc3b5

    const-string v13, "ERROR_CLOUD_SYNC_NEEDED"

    move-object/from16 v28, v14

    const/16 v14, 0x19

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc3b6

    const-string v13, "ERROR_CLOUD_NEXT_CHANGE_FAILED"

    move-object/from16 v29, v15

    const/16 v15, 0x1a

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc419

    const-string v13, "ERROR_CLOUD_FILE_NOT_EXIST"

    move-object/from16 v30, v14

    const/16 v14, 0x1b

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc41a

    const-string v13, "ERROR_CLOUD_EXCEEDED_UPLOAD_FILE_SIZE"

    move-object/from16 v31, v15

    const/16 v15, 0x1c

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc47c

    const-string v13, "ERROR_CLOUD_SERVER_NOT_RESPONDING"

    move-object/from16 v32, v14

    const/16 v14, 0x1d

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc47d

    const-string v13, "ERROR_CLOUD_CONNECTION_ERROR"

    move-object/from16 v33, v15

    const/16 v15, 0x1e

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc47e

    const-string v13, "ERROR_CLOUD_BAD_REQUEST"

    move-object/from16 v34, v14

    const/16 v14, 0x1f

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc47f

    const-string v13, "ERROR_CLOUD_NEED_RETRY"

    move-object/from16 v35, v15

    const/16 v15, 0x20

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc480

    const-string v13, "ERROR_CLOUD_NEED_RETRY_WITH_NEW_CONNECTION"

    move-object/from16 v36, v14

    const/16 v14, 0x21

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc481

    const-string v13, "ERROR_CLOUD_NO_NEED_RETRY"

    move-object/from16 v37, v15

    const/16 v15, 0x22

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc4e0

    const-string v13, "ERROR_CLOUD_PARSE_ERROR"

    move-object/from16 v38, v14

    const/16 v14, 0x23

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xc5a8

    const-string v13, "ERROR_CLOUD_NEED_USER_INTERACTION"

    move-object/from16 v39, v15

    const/16 v15, 0x24

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xea5f

    const-string v13, "ERROR_CLOUD_RELATED_END"

    move-object/from16 v40, v14

    const/16 v14, 0x25

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->ERROR_CLOUD_RELATED_END:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xea60

    const-string v13, "ERROR_COMPRESS_RELATED_START"

    move-object/from16 v41, v15

    const/16 v15, 0x26

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xea61

    const-string v13, "ERROR_COMPRESSOR_COMPRESS_FAILED"

    move-object/from16 v42, v14

    const/16 v14, 0x27

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xea62

    const-string v13, "ERROR_COMPRESSOR_EXTRACT_FAILED"

    move-object/from16 v43, v15

    const/16 v15, 0x28

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xea63

    const-string v13, "ERROR_COMPRESSOR_INVALID_SRC"

    move-object/from16 v44, v14

    const/16 v14, 0x29

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xea64

    const-string v13, "ERROR_COMPRESSOR_NO_SUCH_FILE"

    move-object/from16 v45, v15

    const/16 v15, 0x2a

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xea65

    const-string v13, "ERROR_COMPRESSOR_NOT_ENOUGH_MEMORY"

    move-object/from16 v46, v14

    const/16 v14, 0x2b

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xea66

    const-string v13, "ERROR_COMPRESSOR_NOT_SUPPORT_RAR"

    move-object/from16 v47, v15

    const/16 v15, 0x2c

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xea67

    const-string v13, "ERROR_COMPRESSOR_NOTHING_EXTRACTED"

    move-object/from16 v48, v14

    const/16 v14, 0x2d

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xea68

    const-string v13, "ERROR_COMPRESSOR_EXTRACT_FAILED_BY_ENCRYPTION"

    move-object/from16 v49, v15

    const/16 v15, 0x2e

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xea69

    const-string v13, "ERROR_COMPRESSOR_FILE_SIZE_NOT_SUPPORTED_FAT32"

    move-object/from16 v50, v14

    const/16 v14, 0x2f

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0xea6a

    const-string v13, "ERROR_COMPRESSOR_EXTRACT_NOT_ENOUGH_MEMORY"

    move-object/from16 v51, v15

    const/16 v15, 0x30

    invoke-direct {v14, v13, v15, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const v12, 0x1116f

    const-string v13, "ERROR_COMPRESS_RELATED_END"

    move-object/from16 v52, v14

    const/16 v14, 0x31

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;-><init>(Ljava/lang/String;II)V

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v16, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v36

    move-object/from16 v36, v38

    move-object/from16 v38, v40

    move-object/from16 v40, v42

    move-object/from16 v42, v44

    move-object/from16 v44, v46

    move-object/from16 v46, v48

    move-object/from16 v48, v50

    move-object/from16 v50, v52

    move-object/from16 v14, v18

    move-object/from16 v17, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v37

    move-object/from16 v37, v39

    move-object/from16 v39, v41

    move-object/from16 v41, v43

    move-object/from16 v43, v45

    move-object/from16 v45, v47

    move-object/from16 v47, v49

    move-object/from16 v49, v51

    move-object/from16 v51, v15

    move-object/from16 v15, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v30

    move-object/from16 v29, v31

    move-object/from16 v30, v32

    move-object/from16 v31, v33

    move-object/from16 v32, v34

    move-object/from16 v33, v35

    move-object/from16 v34, v36

    move-object/from16 v35, v37

    move-object/from16 v36, v38

    move-object/from16 v37, v39

    move-object/from16 v38, v40

    move-object/from16 v39, v41

    move-object/from16 v40, v42

    move-object/from16 v41, v43

    move-object/from16 v42, v44

    move-object/from16 v43, v45

    move-object/from16 v44, v46

    move-object/from16 v45, v47

    move-object/from16 v46, v48

    move-object/from16 v47, v49

    move-object/from16 v48, v50

    move-object/from16 v49, v51

    filled-new-array/range {v0 .. v49}, [Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->mValue:I

    return p0
.end method
