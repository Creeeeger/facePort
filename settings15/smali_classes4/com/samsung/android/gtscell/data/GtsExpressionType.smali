.class public final enum Lcom/samsung/android/gtscell/data/GtsExpressionType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/gtscell/data/GtsExpressionType;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/GtsExpressionType;",
        "",
        "(Ljava/lang/String;I)V",
        "TYPE_NONE",
        "TYPE_BOOLEAN",
        "TYPE_COLOR",
        "TYPE_MIME",
        "TYPE_MIME_ICON",
        "TYPE_ICON",
        "TYPE_ICON_URI",
        "TYPE_URL",
        "TYPE_LEVEL",
        "TYPE_PROGRESS",
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
    .locals 12

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v1, "TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_NONE:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    new-instance v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v2, "TYPE_BOOLEAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_BOOLEAN:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    new-instance v2, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v3, "TYPE_COLOR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_COLOR:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    new-instance v3, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v4, "TYPE_MIME"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_MIME:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    new-instance v4, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v5, "TYPE_MIME_ICON"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_MIME_ICON:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    new-instance v5, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v6, "TYPE_ICON"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_ICON:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    new-instance v6, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v7, "TYPE_ICON_URI"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_ICON_URI:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    new-instance v7, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v8, "TYPE_URL"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_URL:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    new-instance v8, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v9, "TYPE_LEVEL"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_LEVEL:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    new-instance v9, Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const-string v10, "TYPE_PROGRESS"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/gtscell/data/GtsExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_PROGRESS:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    filled-new-array/range {v0 .. v9}, [Lcom/samsung/android/gtscell/data/GtsExpressionType;

    move-result-object v0

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
