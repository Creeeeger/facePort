.class final enum Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

.field public static final enum Off:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

.field public static final enum On:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

.field public static final enum TurningOff:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

.field public static final enum TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;


# instance fields
.field private final mInTransition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    const-string v3, "TurningOn"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    const-string v5, "TurningOff"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->TurningOff:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    new-instance v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    const-string v5, "On"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->On:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    filled-new-array {v0, v1, v3, v4}, [Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->$VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->mInTransition:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;
    .locals 1

    const-class v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;
    .locals 1

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->$VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    return-object v0
.end method


# virtual methods
.method public final inTransition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->mInTransition:Z

    return p0
.end method
