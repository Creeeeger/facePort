.class public final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;
.super Lcom/google/zxing/common/MinimalECIInput;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final macroId:I

.field public final shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/common/MinimalECIInput;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    iput-object p4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    iput p5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->macroId:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)V

    return-void
.end method
