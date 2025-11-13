.class public final Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModel;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModel;

.field public final interactor:Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;->interactor:Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;->$$delegate_0:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModel;

    return-void
.end method


# virtual methods
.method public final isTouchable()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;->$$delegate_0:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModel;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModel;->isTouchable()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
