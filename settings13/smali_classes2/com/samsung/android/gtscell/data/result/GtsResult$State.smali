.class public final enum Lcom/samsung/android/gtscell/data/result/GtsResult$State;
.super Ljava/lang/Enum;
.source "GtsResult.kt"


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
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    const-string v2, "READY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->READY:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    const-string v2, "COMPLETE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->COMPLETE:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    const-string v2, "TIMEOUT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->TIMEOUT:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    const-string v2, "EXTRA_ERROR"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->EXTRA_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    const-string v2, "URI_ERROR"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->URI_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    const-string v2, "JSON_ERROR"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->JSON_ERROR:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    const-string v2, "NO_SCREEN_PROVIDER"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/result/GtsResult$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/result/GtsResult$State;->NO_SCREEN_PROVIDER:Lcom/samsung/android/gtscell/data/result/GtsResult$State;

    aput-object v1, v0, v3

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

    .line 14
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
