.class public final enum Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;
.super Ljava/lang/Enum;
.source "ControlResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/cube/ControlResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum ALREADY_SET:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum CANCELED_BY_USER:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum DEPENDENT_SETTING:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum EXCLUSIVE_SETTING:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum HAS_ASYNC:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum INVALID_DATA:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum NOT_FOUND_CONTROLLER:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum NOT_INITIALIZE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum NOT_SUPPORT_BY_POLICY:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum NOT_SUPPORT_DEVICE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum NOT_SUPPORT_TEMPORARY:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum OUT_OF_RANGE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum PERMISSION:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum REQUEST_USER_INTERACTION:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field public static final enum UNKNOWN:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;


# instance fields
.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 22
    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v1, "NOT_INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_INITIALIZE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 23
    new-instance v1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v3, "NOT_FOUND_CONTROLLER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_FOUND_CONTROLLER:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 24
    new-instance v3, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v5, "NOT_SUPPORT_DEVICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_SUPPORT_DEVICE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 25
    new-instance v5, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v7, "NOT_SUPPORT_TEMPORARY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_SUPPORT_TEMPORARY:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 26
    new-instance v7, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v9, "INVALID_DATA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->INVALID_DATA:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 27
    new-instance v9, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v11, "OUT_OF_RANGE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->OUT_OF_RANGE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 28
    new-instance v11, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v13, "NOT_SUPPORT_BY_POLICY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_SUPPORT_BY_POLICY:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 29
    new-instance v13, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v15, "DEPENDENT_SETTING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->DEPENDENT_SETTING:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 30
    new-instance v15, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v14, "EXCLUSIVE_SETTING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->EXCLUSIVE_SETTING:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 31
    new-instance v14, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v12, "HAS_ASYNC"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->HAS_ASYNC:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 32
    new-instance v12, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v10, "CANCELED_BY_USER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->CANCELED_BY_USER:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 33
    new-instance v10, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v8, "PERMISSION"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->PERMISSION:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 34
    new-instance v8, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v6, "ALREADY_SET"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->ALREADY_SET:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 35
    new-instance v6, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v4, "REQUEST_USER_INTERACTION"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->REQUEST_USER_INTERACTION:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 36
    new-instance v4, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const-string v2, "UNKNOWN"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    move-object/from16 v17, v8

    const/16 v8, 0x64

    invoke-direct {v4, v2, v6, v8}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->UNKNOWN:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const/4 v8, 0x0

    aput-object v0, v2, v8

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    aput-object v4, v2, v6

    .line 21
    sput-object v2, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->$VALUES:[Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;
    .locals 1

    .line 21
    const-class v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;
    .locals 1

    .line 21
    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->$VALUES:[Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    return-object v0
.end method
