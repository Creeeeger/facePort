.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

.field public static final enum DEBUG:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

.field public static final enum RELEASE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;->DEBUG:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;->RELEASE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    filled-new-array {v0, v1}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;->DEBUG:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    const-string v1, "RELEASE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;->RELEASE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    invoke-static {}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;->$values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method
