.class public final enum Lcom/airbnb/lottie/compose/LottieCancellationBehavior;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/compose/LottieCancellationBehavior;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/airbnb/lottie/compose/LottieCancellationBehavior;",
        "",
        "lottie-compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

.field public static final enum Immediately:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    const-string v1, "Immediately"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;->Immediately:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    new-instance v1, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    const-string v2, "OnIterationFinish"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1}, [Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;->$VALUES:[Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/compose/LottieCancellationBehavior;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/compose/LottieCancellationBehavior;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;->$VALUES:[Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    return-object v0
.end method
