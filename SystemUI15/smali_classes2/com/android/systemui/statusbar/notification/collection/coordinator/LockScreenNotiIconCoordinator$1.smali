.class Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->-$$Nest$fgetmAmbientState(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setDragDownOnKeyguard(Z)V

    :cond_0
    return-void
.end method
