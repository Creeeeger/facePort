.class public final enum Lcom/samsung/android/gtscell/data/GtsExpressionType;
.super Ljava/lang/Enum;
.source "GtsItemFormat.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/gtscell/data/GtsExpressionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/gtscell/data/GtsExpressionType;

.field public static final enum TYPE_BOOLEAN:Lcom/samsung/android/gtscell/data/GtsExpressionType;

.field public static final enum TYPE_COLOR:Lcom/samsung/android/gtscell/data/GtsExpressionType;

.field public static final enum TYPE_ICON:Lcom/samsung/android/gtscell/data/GtsExpressionType;

.field public static final enum TYPE_ICON_URI:Lcom/samsung/android/gtscell/data/GtsExpressionType;

.field public static final enum TYPE_LEVEL:Lcom/samsung/android/gtscell/data/GtsExpressionType;

.field public static final enum TYPE_MIME:Lcom/samsung/android/gtscell/data/GtsExpressionType;

.field public static final enum TYPE_MIME_ICON:Lcom/samsung/android/gtscell/data/GtsExpressionType;

.field public static final enum TYPE_NONE:Lcom/samsung/android/gtscell/data/GtsExpressionType;

.field public static final enum TYPE_PROGRESS:Lcom/samsung/android/gtscell/data/GtsExpressionType;

.field public static final enum TYPE_URL:Lcom/samsung/android/gtscell/data/GtsExpressionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/samsung/android/gtscell/data/GtsExpressionType;

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v2, "TYPE_NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_NONE:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v2, "TYPE_BOOLEAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_BOOLEAN:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v2, "TYPE_COLOR"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_COLOR:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v2, "TYPE_MIME"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_MIME:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v2, "TYPE_MIME_ICON"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_MIME_ICON:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v2, "TYPE_ICON"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_ICON:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v2, "TYPE_ICON_URI"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_ICON_URI:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v2, "TYPE_URL"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_URL:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v2, "TYPE_LEVEL"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_LEVEL:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v2, "TYPE_PROGRESS"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_PROGRESS:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionType;->$VALUES:[Lcom/samsung/android/gtscell/data/GtsExpressionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionType;
    .locals 1

    const-class v0, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/gtscell/data/GtsExpressionType;
    .locals 1

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionType;->$VALUES:[Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v0}, [Lcom/samsung/android/gtscell/data/GtsExpressionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gtscell/data/GtsExpressionType;

    return-object v0
.end method
