.class final enum Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

.field public static final enum CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

.field public static final enum IDLE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

.field public static final enum MAIN:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->IDLE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    const-string v2, "MAIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->MAIN:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    new-instance v2, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    const-string v3, "CONFIRM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->$VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;
    .locals 1

    const-class v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;
    .locals 1

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->$VALUES:[Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$State;

    return-object v0
.end method
