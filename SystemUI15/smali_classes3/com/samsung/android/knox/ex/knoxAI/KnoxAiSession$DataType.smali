.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum BYTE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum FLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum FLOAT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum INT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum INT64:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum SEQUENCE_MAP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum STRING:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;


# instance fields
.field private final value:B


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->FLOAT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->FLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    sget-object v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->BYTE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    sget-object v3, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->INT64:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    sget-object v4, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->STRING:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    sget-object v5, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->SEQUENCE_MAP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    sget-object v6, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->INT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "FLOAT32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->FLOAT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "FLOAT16"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->FLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "BYTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->BYTE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "INT64"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->INT64:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "STRING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->STRING:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "SEQUENCE_MAP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->SEQUENCE_MAP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    const-string v1, "INT32"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->INT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    invoke-static {}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->$values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    iput-byte p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 0

    iget-byte p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->value:B

    return p0
.end method
