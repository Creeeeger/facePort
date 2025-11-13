.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

.field public static final enum NCHW:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

.field public static final enum NHWC:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;


# instance fields
.field private final value:B


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->NCHW:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->NHWC:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    filled-new-array {v0, v1}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    const-string v1, "NCHW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->NCHW:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    const-string v1, "NHWC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->NHWC:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    invoke-static {}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->$values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    iput-byte p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 0

    iget-byte p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;->value:B

    return p0
.end method
