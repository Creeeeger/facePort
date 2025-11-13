.class public final enum Lcom/samsung/android/gtscell/data/GtsItemFormat;
.super Ljava/lang/Enum;
.source "GtsItemFormat.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/gtscell/data/GtsItemFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/gtscell/data/GtsItemFormat;

.field public static final enum FORMAT_BOOLEAN:Lcom/samsung/android/gtscell/data/GtsItemFormat;

.field public static final enum FORMAT_DOUBLE:Lcom/samsung/android/gtscell/data/GtsItemFormat;

.field public static final enum FORMAT_INT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

.field public static final enum FORMAT_LONG:Lcom/samsung/android/gtscell/data/GtsItemFormat;

.field public static final enum FORMAT_TEXT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

.field public static final enum FORMAT_URI:Lcom/samsung/android/gtscell/data/GtsItemFormat;

.field public static final enum FORMAT_URL:Lcom/samsung/android/gtscell/data/GtsItemFormat;


# instance fields
.field private final fromGts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/gtscell/data/GtsItemFormat;

    new-instance v7, Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const-string v2, "FORMAT_TEXT"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/gtscell/data/GtsItemFormat;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_TEXT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const-string v9, "FORMAT_BOOLEAN"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/gtscell/data/GtsItemFormat;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_BOOLEAN:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const-string v4, "FORMAT_INT"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/gtscell/data/GtsItemFormat;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_INT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const-string v5, "FORMAT_LONG"

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/gtscell/data/GtsItemFormat;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_LONG:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const-string v5, "FORMAT_DOUBLE"

    const/4 v6, 0x4

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/gtscell/data/GtsItemFormat;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_DOUBLE:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const-string v5, "FORMAT_URI"

    const/4 v6, 0x5

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/gtscell/data/GtsItemFormat;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_URI:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const-string v3, "FORMAT_URL"

    const/4 v4, 0x6

    .line 10
    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/gtscell/data/GtsItemFormat;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_URL:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->$VALUES:[Lcom/samsung/android/gtscell/data/GtsItemFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->fromGts:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gtscell/data/GtsItemFormat;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsItemFormat;
    .locals 1

    const-class v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gtscell/data/GtsItemFormat;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/gtscell/data/GtsItemFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->$VALUES:[Lcom/samsung/android/gtscell/data/GtsItemFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/gtscell/data/GtsItemFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gtscell/data/GtsItemFormat;

    return-object v0
.end method


# virtual methods
.method public final getFromGts()Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->fromGts:Z

    return p0
.end method
