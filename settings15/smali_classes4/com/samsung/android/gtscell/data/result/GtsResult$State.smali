.class public final enum Lcom/samsung/android/gtscell/data/result/GtsResult$State;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/result/GtsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/gtscell/data/result/GtsResult$State;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/result/GtsResult$State;",
        "",
        "(Ljava/lang/String;I)V",
        "READY",
        "COMPLETE",
        "TIMEOUT",
        "EXTRA_ERROR",
        "URI_ERROR",
        "JSON_ERROR",
        "NO_SCREEN_PROVIDER",
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
.field private static final synthetic $VALUES:[Lcom/samsung/android/gtscell/data/result/GtsResult$State;

.field public static final enum COMPLETE:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

.field public static final enum EXTRA_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

.field public static final enum JSON_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

.field public static final enum NO_SCREEN_PROVIDER:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

.field public static final enum READY:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

.field public static final enum TIMEOUT:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

.field public static final enum URI_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gtscell/data/result/GtsResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->READY:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    const-string v2, "COMPLETE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->COMPLETE:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    new-instance v2, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    const-string v3, "TIMEOUT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/gtscell/data/result/GtsResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->TIMEOUT:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    new-instance v3, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    const-string v4, "EXTRA_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/gtscell/data/result/GtsResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->EXTRA_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    new-instance v4, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    const-string v5, "URI_ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/gtscell/data/result/GtsResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->URI_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    new-instance v5, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    const-string v6, "JSON_ERROR"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/gtscell/data/result/GtsResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->JSON_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    new-instance v6, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    const-string v7, "NO_SCREEN_PROVIDER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/gtscell/data/result/GtsResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->NO_SCREEN_PROVIDER:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->$VALUES:[Lcom/samsung/android/gtscell/data/result/GtsResult$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/result/GtsResult$State;
    .locals 1

    const-class v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/gtscell/data/result/GtsResult$State;
    .locals 1

    sget-object v0, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->$VALUES:[Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    invoke-virtual {v0}, [Lcom/samsung/android/gtscell/data/result/GtsResult$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    return-object v0
.end method
