.class public final Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModelImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModel;


# instance fields
.field public final isTouchable:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModelImpl$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModelImpl$special$$inlined$map$1;

    iget-object p1, p1, Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;->isTouchExplorationEnabled:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModelImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModelImpl;->isTouchable:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModelImpl$special$$inlined$map$1;

    return-void
.end method


# virtual methods
.method public final isTouchable()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModelImpl;->isTouchable:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModelImpl$special$$inlined$map$1;

    return-object p0
.end method
