.class final enum Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

.field public static final enum FOLD:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

.field public static final enum UNFOLD:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    const-string v1, "FOLD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;->FOLD:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    new-instance v1, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    const-string v2, "UNFOLD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;->UNFOLD:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    filled-new-array {v0, v1}, [Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;->$VALUES:[Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;
    .locals 1

    const-class v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;
    .locals 1

    sget-object v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;->$VALUES:[Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    return-object v0
.end method
