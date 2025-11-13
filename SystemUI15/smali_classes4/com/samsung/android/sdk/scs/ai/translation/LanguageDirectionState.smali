.class public final enum Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

.field public static final enum AVAILABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

.field public static final enum AVAILABLE_BY_PIVOT:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

.field public static final enum DOWNLOADABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->UNKNOWN:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    const-string v3, "AVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    const-string v3, "AVAILABLE_BY_PIVOT"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE_BY_PIVOT:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    new-instance v3, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    const-string v4, "DOWNLOADABLE"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->DOWNLOADABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    new-instance v4, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    const-string v5, "UNAUTHORIZED_RESOURCE"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

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

    iput p3, p0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->value:I

    return-void
.end method

.method public static from(I)Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->values()[Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->UNKNOWN:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    return-object v0
.end method
