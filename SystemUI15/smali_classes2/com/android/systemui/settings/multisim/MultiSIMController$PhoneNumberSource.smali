.class final enum Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;

    const-string v1, "CARRIER"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;

    const-string v2, "UICC"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4}, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;

    const-string v4, "IMS"

    const/4 v5, 0x3

    invoke-direct {v2, v4, v3, v5}, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;->$VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;

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

    iput p3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;
    .locals 1

    const-class v0, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;
    .locals 1

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;->$VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;

    invoke-virtual {v0}, [Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$PhoneNumberSource;->value:I

    return p0
.end method
