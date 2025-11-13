.class public final enum Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/result/GtsItemResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorReason"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0013\u0008\u0086\u0001\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0013B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;",
        "",
        "(Ljava/lang/String;I)V",
        "NONE",
        "UNKNOWN",
        "NOT_INITIALIZE",
        "UNSUPPORTED_ITEM",
        "UNSUPPORTED_DEVICE",
        "UNSUPPORTED_FORM_FACTOR",
        "UNSUPPORTED_ONE_UI",
        "PERMISSION",
        "INVALID_DATA_TYPE",
        "INVALID_DATA_VALUE",
        "DEPENDENT_ITEM",
        "EXCLUSIVE_ITEM",
        "EXCEEDED_MAXIMUM_ITEM",
        "TIMEOUT",
        "FATAL",
        "ITEM_MADE_BY_GTS",
        "Companion",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final Companion:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason$Companion;

.field public static final enum DEPENDENT_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum EXCEEDED_MAXIMUM_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum EXCLUSIVE_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum FATAL:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum INVALID_DATA_TYPE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum INVALID_DATA_VALUE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum ITEM_MADE_BY_GTS:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum NONE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum NOT_INITIALIZE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum PERMISSION:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum TIMEOUT:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum UNKNOWN:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum UNSUPPORTED_DEVICE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum UNSUPPORTED_FORM_FACTOR:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum UNSUPPORTED_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

.field public static final enum UNSUPPORTED_ONE_UI:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->NONE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->UNKNOWN:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v2, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v3, "NOT_INITIALIZE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->NOT_INITIALIZE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v3, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v4, "UNSUPPORTED_ITEM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->UNSUPPORTED_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v4, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v5, "UNSUPPORTED_DEVICE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->UNSUPPORTED_DEVICE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v5, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v6, "UNSUPPORTED_FORM_FACTOR"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->UNSUPPORTED_FORM_FACTOR:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v6, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v7, "UNSUPPORTED_ONE_UI"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->UNSUPPORTED_ONE_UI:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v7, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v8, "PERMISSION"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->PERMISSION:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v8, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v9, "INVALID_DATA_TYPE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->INVALID_DATA_TYPE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v9, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v10, "INVALID_DATA_VALUE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->INVALID_DATA_VALUE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v10, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v11, "DEPENDENT_ITEM"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->DEPENDENT_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v11, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v12, "EXCLUSIVE_ITEM"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->EXCLUSIVE_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v12, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v13, "EXCEEDED_MAXIMUM_ITEM"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->EXCEEDED_MAXIMUM_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v13, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v14, "TIMEOUT"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->TIMEOUT:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v14, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v15, "FATAL"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->FATAL:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v15, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v13, "ITEM_MADE_BY_GTS"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->ITEM_MADE_BY_GTS:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->$VALUES:[Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->Companion:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;
    .locals 1

    const-class v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;
    .locals 1

    sget-object v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->$VALUES:[Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    invoke-virtual {v0}, [Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    return-object v0
.end method
