.class public final enum Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum ALREADY_SET:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum CANCELED_BY_USER:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum DEPENDENT_SETTING:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum INVALID_DATA:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum NOT_FOUND_CONTROLLER:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum NOT_SUPPORT_BY_POLICY:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum NOT_SUPPORT_DEVICE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum NOT_SUPPORT_TEMPORARY:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum OUT_OF_RANGE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum REQUEST_USER_INTERACTION:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum UNKNOWN:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;


# instance fields
.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v1, "NOT_INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v2, "NOT_FOUND_CONTROLLER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_FOUND_CONTROLLER:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    new-instance v2, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v3, "NOT_SUPPORT_DEVICE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_SUPPORT_DEVICE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    new-instance v3, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v4, "NOT_SUPPORT_TEMPORARY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_SUPPORT_TEMPORARY:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    new-instance v4, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v5, "INVALID_DATA"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->INVALID_DATA:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    new-instance v5, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v6, "OUT_OF_RANGE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->OUT_OF_RANGE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    new-instance v6, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v7, "NOT_SUPPORT_BY_POLICY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_SUPPORT_BY_POLICY:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    new-instance v7, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v8, "DEPENDENT_SETTING"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->DEPENDENT_SETTING:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    new-instance v8, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v9, "EXCLUSIVE_SETTING"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v10, "HAS_ASYNC"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v11, "CANCELED_BY_USER"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->CANCELED_BY_USER:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    new-instance v11, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v12, "PERMISSION"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v13, "ALREADY_SET"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->ALREADY_SET:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    new-instance v13, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v14, "REQUEST_USER_INTERACTION"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15, v15}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->REQUEST_USER_INTERACTION:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    new-instance v14, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const/16 v15, 0x64

    move-object/from16 v16, v13

    const-string v13, "UNKNOWN"

    move-object/from16 v17, v12

    const/16 v12, 0xe

    invoke-direct {v14, v13, v12, v15}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->UNKNOWN:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-object/from16 v12, v17

    move-object/from16 v13, v16

    filled-new-array/range {v0 .. v14}, [Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->$VALUES:[Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->$VALUES:[Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    return-object v0
.end method
