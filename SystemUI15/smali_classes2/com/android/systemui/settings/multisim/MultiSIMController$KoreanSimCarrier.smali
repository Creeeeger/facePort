.class final enum Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;


# instance fields
.field private final mNumeric:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    const-string v1, "45008"

    const-string v2, "KT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    const-string v2, "45006"

    const-string v3, "LG_U_PLUS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array {v0, v1}, [Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;->$VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;->mNumeric:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;
    .locals 1

    const-class v0, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;
    .locals 1

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;->$VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    invoke-virtual {v0}, [Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    return-object v0
.end method


# virtual methods
.method public final getNumeric()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;->mNumeric:Ljava/lang/String;

    return-object p0
.end method
