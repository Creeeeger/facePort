.class public final Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker$trackNotificationHideTime$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker$trackNotificationHideTime$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 p2, 0x1a

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker$trackNotificationHideTime$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {p0, p2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {p0, p2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
