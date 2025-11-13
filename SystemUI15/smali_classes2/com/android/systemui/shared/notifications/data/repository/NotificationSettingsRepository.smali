.class public final Lcom/android/systemui/shared/notifications/data/repository/NotificationSettingsRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isNotificationHistoryEnabled:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/shared/settings/data/repository/SecureSettingsRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/android/systemui/shared/settings/data/repository/SecureSettingsRepository;->intSetting$default(Lcom/android/systemui/shared/settings/data/repository/SecureSettingsRepository;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/shared/notifications/data/repository/NotificationSettingsRepository$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/shared/notifications/data/repository/NotificationSettingsRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/notifications/data/repository/NotificationSettingsRepository;->isNotificationHistoryEnabled:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
