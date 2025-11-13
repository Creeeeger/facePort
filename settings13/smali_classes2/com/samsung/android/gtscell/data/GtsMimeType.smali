.class public final enum Lcom/samsung/android/gtscell/data/GtsMimeType;
.super Ljava/lang/Enum;
.source "GtsItemFormat.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/gtscell/data/GtsMimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/gtscell/data/GtsMimeType;

.field public static final enum AUDIO:Lcom/samsung/android/gtscell/data/GtsMimeType;

.field public static final enum BIN:Lcom/samsung/android/gtscell/data/GtsMimeType;

.field public static final enum JSON:Lcom/samsung/android/gtscell/data/GtsMimeType;

.field public static final enum TEXT:Lcom/samsung/android/gtscell/data/GtsMimeType;

.field public static final enum UNKNOWN:Lcom/samsung/android/gtscell/data/GtsMimeType;

.field public static final enum VIDEO:Lcom/samsung/android/gtscell/data/GtsMimeType;

.field public static final enum XML:Lcom/samsung/android/gtscell/data/GtsMimeType;

.field public static final enum ZIP:Lcom/samsung/android/gtscell/data/GtsMimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/samsung/android/gtscell/data/GtsMimeType;

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsMimeType;

    const-string v2, "ZIP"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsMimeType;->ZIP:Lcom/samsung/android/gtscell/data/GtsMimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsMimeType;

    const-string v2, "JSON"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsMimeType;->JSON:Lcom/samsung/android/gtscell/data/GtsMimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsMimeType;

    const-string v2, "XML"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsMimeType;->XML:Lcom/samsung/android/gtscell/data/GtsMimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsMimeType;

    const-string v2, "TEXT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsMimeType;->TEXT:Lcom/samsung/android/gtscell/data/GtsMimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsMimeType;

    const-string v2, "VIDEO"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsMimeType;->VIDEO:Lcom/samsung/android/gtscell/data/GtsMimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsMimeType;

    const-string v2, "AUDIO"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsMimeType;->AUDIO:Lcom/samsung/android/gtscell/data/GtsMimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsMimeType;

    const-string v2, "BIN"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsMimeType;->BIN:Lcom/samsung/android/gtscell/data/GtsMimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsMimeType;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsMimeType;->UNKNOWN:Lcom/samsung/android/gtscell/data/GtsMimeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsMimeType;->$VALUES:[Lcom/samsung/android/gtscell/data/GtsMimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsMimeType;
    .locals 1

    const-class v0, Lcom/samsung/android/gtscell/data/GtsMimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gtscell/data/GtsMimeType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/gtscell/data/GtsMimeType;
    .locals 1

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsMimeType;->$VALUES:[Lcom/samsung/android/gtscell/data/GtsMimeType;

    invoke-virtual {v0}, [Lcom/samsung/android/gtscell/data/GtsMimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gtscell/data/GtsMimeType;

    return-object v0
.end method
