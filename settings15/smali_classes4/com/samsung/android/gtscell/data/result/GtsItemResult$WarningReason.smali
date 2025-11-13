.class public final enum Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;",
        "",
        "(Ljava/lang/String;I)V",
        "NONE",
        "UNKNOWN",
        "DUPLICATED_ITEM",
        "REQUIRE_USER_ACTION",
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
.field private static final synthetic $VALUES:[Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

.field public static final Companion:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason$Companion;

.field public static final enum DUPLICATED_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

.field public static final enum NONE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

.field public static final enum REQUIRE_USER_ACTION:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

.field public static final enum UNKNOWN:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->NONE:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->UNKNOWN:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    new-instance v2, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    const-string v3, "DUPLICATED_ITEM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->DUPLICATED_ITEM:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    new-instance v3, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    const-string v4, "REQUIRE_USER_ACTION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->REQUIRE_USER_ACTION:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    move-result-object v0

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
