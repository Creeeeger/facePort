.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

.field public static final enum BFLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

.field public static final enum FLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

.field public static final enum FLOAT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

.field public static final enum QASYMM16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

.field public static final enum QASYMM8:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;->FLOAT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;->FLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    sget-object v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;->QASYMM16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    sget-object v3, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;->QASYMM8:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    sget-object v4, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;->BFLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    const-string v1, "FLOAT32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;->FLOAT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    const-string v1, "FLOAT16"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;->FLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    const-string v1, "QASYMM16"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;->QASYMM16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    const-string v1, "QASYMM8"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;->QASYMM8:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    const-string v1, "BFLOAT16"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;->BFLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    invoke-static {}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;->$values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method
