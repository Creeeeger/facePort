.class public final Lcom/android/systemui/mediaprojection/taskswitcher/ui/TaskSwitcherNotificationCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final context:Landroid/content/Context;

.field public final notificationManager:Landroid/app/NotificationManager;

.field public final viewModel:Lcom/android/systemui/mediaprojection/taskswitcher/ui/viewmodel/TaskSwitcherNotificationViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/mediaprojection/taskswitcher/ui/TaskSwitcherNotificationCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/mediaprojection/taskswitcher/ui/TaskSwitcherNotificationCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/mediaprojection/taskswitcher/ui/viewmodel/TaskSwitcherNotificationViewModel;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
