.class public interface abstract Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# virtual methods
.method public abstract addLegacySuppressor(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;)V
.end method

.method public abstract logFullScreenIntentDecision(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;)V
.end method

.method public abstract makeAndLogBubbleDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider$Decision;
.end method

.method public abstract makeAndLogHeadsUpDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider$Decision;
.end method

.method public abstract makeUnloggedFullScreenIntentDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;
.end method

.method public abstract makeUnloggedHeadsUpDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider$Decision;
.end method

.method public abstract removeCondition(Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionCondition;)V
.end method

.method public abstract removeFilter(Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionFilter;)V
.end method

.method public abstract removeLegacySuppressor(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;)V
.end method

.method public start()V
    .locals 0

    return-void
.end method
