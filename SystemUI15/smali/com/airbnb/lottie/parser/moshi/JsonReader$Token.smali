.class public final enum Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const-string v2, "END_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const-string v3, "BEGIN_OBJECT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const-string v4, "END_OBJECT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v4, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const-string v5, "NAME"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const-string v6, "STRING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const-string v7, "NUMBER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v7, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const-string v8, "BOOLEAN"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v8, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const-string v9, "NULL"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    new-instance v9, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const-string v10, "END_DOCUMENT"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    filled-new-array/range {v0 .. v9}, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->$VALUES:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

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

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->$VALUES:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0
.end method
