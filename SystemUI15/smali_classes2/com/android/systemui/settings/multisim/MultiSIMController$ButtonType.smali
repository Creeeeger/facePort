.class final enum Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum SIMINFO1:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const-string v1, "VOICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const-string v2, "SMS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const-string v3, "DATA"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    new-instance v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const-string v4, "SIMINFO1"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO1:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    new-instance v4, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const-string v5, "SIMINFO2"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->$VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

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

    iput p3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;
    .locals 1

    const-class v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;
    .locals 1

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->$VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {v0}, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->index:I

    return p0
.end method
