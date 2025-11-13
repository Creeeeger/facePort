.class public final enum Lcom/airbnb/lottie/AsyncUpdates;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/AsyncUpdates;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/airbnb/lottie/AsyncUpdates;

.field public static final enum AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

.field public static final enum ENABLED:Lcom/airbnb/lottie/AsyncUpdates;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/airbnb/lottie/AsyncUpdates;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    new-instance v1, Lcom/airbnb/lottie/AsyncUpdates;

    const-string v2, "ENABLED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/airbnb/lottie/AsyncUpdates;->ENABLED:Lcom/airbnb/lottie/AsyncUpdates;

    new-instance v2, Lcom/airbnb/lottie/AsyncUpdates;

    const-string v3, "DISABLED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [Lcom/airbnb/lottie/AsyncUpdates;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/AsyncUpdates;->$VALUES:[Lcom/airbnb/lottie/AsyncUpdates;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/AsyncUpdates;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/AsyncUpdates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/AsyncUpdates;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/AsyncUpdates;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->$VALUES:[Lcom/airbnb/lottie/AsyncUpdates;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/AsyncUpdates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/AsyncUpdates;

    return-object v0
.end method
