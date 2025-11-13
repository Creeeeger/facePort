.class public final enum Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
.super Ljava/lang/Enum;
.source "GtsItemResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/result/GtsItemResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WarningReason"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

.field public static final Companion:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason$Companion;

.field public static final enum DUPLICATED_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

.field public static final enum NONE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

.field public static final enum REQUIRE_USER_ACTION:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

.field public static final enum UNKNOWN:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->NONE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->UNKNOWN:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    const-string v2, "DUPLICATED_ITEM"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->DUPLICATED_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    const-string v2, "REQUIRE_USER_ACTION"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->REQUIRE_USER_ACTION:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->$VALUES:[Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    new-instance v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->Companion:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
    .locals 1

    const-class v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
    .locals 1

    sget-object v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->$VALUES:[Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    invoke-virtual {v0}, [Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    return-object v0
.end method
