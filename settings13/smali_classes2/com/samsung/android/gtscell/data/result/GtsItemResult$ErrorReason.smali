.class public final enum Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;
.super Ljava/lang/Enum;
.source "GtsItemResult.kt"


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
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->NONE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->UNKNOWN:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "NOT_INITIALIZE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->NOT_INITIALIZE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "UNSUPPORTED_ITEM"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->UNSUPPORTED_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "UNSUPPORTED_DEVICE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->UNSUPPORTED_DEVICE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "UNSUPPORTED_FORM_FACTOR"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->UNSUPPORTED_FORM_FACTOR:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "UNSUPPORTED_ONE_UI"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->UNSUPPORTED_ONE_UI:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "PERMISSION"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->PERMISSION:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "INVALID_DATA_TYPE"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->INVALID_DATA_TYPE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "INVALID_DATA_VALUE"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->INVALID_DATA_VALUE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "DEPENDENT_ITEM"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->DEPENDENT_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "EXCLUSIVE_ITEM"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->EXCLUSIVE_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "EXCEEDED_MAXIMUM_ITEM"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->EXCEEDED_MAXIMUM_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "TIMEOUT"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->TIMEOUT:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "FATAL"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->FATAL:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    const-string v2, "ITEM_MADE_BY_GTS"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;->ITEM_MADE_BY_GTS:Lcom/samsung/android/gtscell/data/result/GtsItemResult$ErrorReason;

    aput-object v1, v0, v3

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

    .line 29
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
