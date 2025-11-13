.class public final enum Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider$Decision;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;",
        ">;",
        "Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider$Decision;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

.field public static final Companion:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl$Companion;

.field public static final enum SHOULD_INTERRUPT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

.field public static final enum SHOULD_NOT_INTERRUPT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;


# instance fields
.field private final logReason:Ljava/lang/String;

.field private final shouldInterrupt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    const-string v1, "SHOULD_INTERRUPT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->SHOULD_INTERRUPT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    new-instance v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    const-string v4, "SHOULD_NOT_INTERRUPT"

    invoke-direct {v1, v4, v3, v2}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->SHOULD_NOT_INTERRUPT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    filled-new-array {v0, v1}, [Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->$VALUES:[Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->Companion:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl$Companion;

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

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->shouldInterrupt:Z

    const-string/jumbo p1, "unknown"

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->logReason:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->$VALUES:[Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    return-object v0
.end method


# virtual methods
.method public final getLogReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->logReason:Ljava/lang/String;

    return-object p0
.end method

.method public final getShouldInterrupt()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->shouldInterrupt:Z

    return p0
.end method
