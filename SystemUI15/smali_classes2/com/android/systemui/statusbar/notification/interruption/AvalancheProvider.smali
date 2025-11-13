.class public final Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final avalancheTriggerIntents:Ljava/util/Set;

.field public final broadcastReceiver:Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider$broadcastReceiver$1;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionLogger;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p1, "AvalancheProvider"

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;->TAG:Ljava/lang/String;

    const-string p1, "android.intent.action.AIRPLANE_MODE"

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    const-string p3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    const-string v0, "android.intent.action.USER_SWITCHED"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;->avalancheTriggerIntents:Ljava/util/Set;

    new-instance p1, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider$broadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider$broadcastReceiver$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;)V

    return-void
.end method
