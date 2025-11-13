.class public final enum Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NOT_SATISFIED:Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

.field public static final enum SATISFIED:Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

.field public static final synthetic b:[Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    const-string v1, "SATISFIED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->SATISFIED:Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    const-string v4, "NOT_SATISFIED"

    invoke-direct {v1, v4, v3, v2}, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->NOT_SATISFIED:Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    const/4 v3, 0x2

    const/4 v4, -0x1

    const-string v5, "ERROR_UNDETERMINED"

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->b:[Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->b:[Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    return-object v0
.end method
