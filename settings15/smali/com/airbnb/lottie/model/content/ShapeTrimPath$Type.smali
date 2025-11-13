.class public final enum Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

.field public static final enum INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

.field public static final enum SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    const-string v1, "SIMULTANEOUSLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    const-string v2, "INDIVIDUALLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    filled-new-array {v0, v1}, [Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->$VALUES:[Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->$VALUES:[Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-object v0
.end method
