.class final enum Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;

.field public static final enum find_appinfo:Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;


# direct methods
.method private static synthetic $values()[Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;
    .locals 1

    sget-object v0, Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;->find_appinfo:Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;

    filled-new-array {v0}, [Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;

    const-string v1, "find_appinfo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;->find_appinfo:Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;->$values()[Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;
    .locals 1

    const-class v0, Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;
    .locals 1

    sget-object v0, Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;

    invoke-virtual {v0}, [Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor$Action;

    return-object v0
.end method
