.class public abstract Lcom/google/zxing/aztec/encoder/Token;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final EMPTY:Lcom/google/zxing/aztec/encoder/SimpleToken;


# instance fields
.field public final previous:Lcom/google/zxing/aztec/encoder/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/zxing/aztec/encoder/SimpleToken;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    sput-object v0, Lcom/google/zxing/aztec/encoder/Token;->EMPTY:Lcom/google/zxing/aztec/encoder/SimpleToken;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/aztec/encoder/Token;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/Token;->previous:Lcom/google/zxing/aztec/encoder/Token;

    return-void
.end method


# virtual methods
.method public abstract appendTo(Lcom/google/zxing/common/BitArray;[B)V
.end method
