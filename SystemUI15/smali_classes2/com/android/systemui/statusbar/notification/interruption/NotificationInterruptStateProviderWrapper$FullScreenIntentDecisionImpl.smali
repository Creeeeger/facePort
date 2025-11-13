.class public final Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider$Decision;


# instance fields
.field public final logReason:Ljava/lang/String;

.field public final originalDecision:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public final originalEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final shouldInterrupt:Z

.field public final wouldInterruptWithoutDnd:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->originalEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->originalDecision:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    iget-boolean p1, p2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->shouldLaunch:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->shouldInterrupt:Z

    sget-object p1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSED_ONLY_BY_DND:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->wouldInterruptWithoutDnd:Z

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->logReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getLogReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->logReason:Ljava/lang/String;

    return-object p0
.end method

.method public final getShouldInterrupt()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->shouldInterrupt:Z

    return p0
.end method

.method public final getWouldInterruptWithoutDnd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->wouldInterruptWithoutDnd:Z

    return p0
.end method
