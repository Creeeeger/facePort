.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

.field public static final enum CAFFE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

.field public static final enum EDEN:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

.field public static final enum HVXNN:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

.field public static final enum OFI:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

.field public static final enum ONNX:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

.field public static final enum SNAPLITE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

.field public static final enum SNF:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

.field public static final enum SNPE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

.field public static final enum TENSORFLOW:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

.field public static final enum TENSORFLOWLITE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

.field public static final enum TVM:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;
    .locals 11

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->CAFFE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->SNPE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    sget-object v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->EDEN:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    sget-object v3, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->TENSORFLOW:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    sget-object v4, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->TENSORFLOWLITE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    sget-object v5, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->OFI:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    sget-object v6, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->SNF:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    sget-object v7, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->HVXNN:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    sget-object v8, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->ONNX:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    sget-object v9, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->SNAPLITE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    sget-object v10, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->TVM:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    filled-new-array/range {v0 .. v10}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    const-string v1, "CAFFE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->CAFFE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    const-string v1, "SNPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->SNPE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    const-string v1, "EDEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->EDEN:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    const-string v1, "TENSORFLOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->TENSORFLOW:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    const-string v1, "TENSORFLOWLITE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->TENSORFLOWLITE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    const-string v1, "OFI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->OFI:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    const-string v1, "SNF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->SNF:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    const-string v1, "HVXNN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->HVXNN:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    const-string v1, "ONNX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->ONNX:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    const-string v1, "SNAPLITE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->SNAPLITE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    const-string v1, "TVM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->TVM:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    invoke-static {}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->$values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method
