.class public final Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1$onUserChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $newUser:I

.field public final synthetic this$0:Lcom/android/systemui/controls/start/ControlsStartable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/start/ControlsStartable;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1$onUserChanged$1;->this$0:Lcom/android/systemui/controls/start/ControlsStartable;

    iput p2, p0, Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1$onUserChanged$1;->$newUser:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1$onUserChanged$1;->this$0:Lcom/android/systemui/controls/start/ControlsStartable;

    iget-object v0, v0, Lcom/android/systemui/controls/start/ControlsStartable;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-object v0, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    iget p0, p0, Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1$onUserChanged$1;->$newUser:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->changeUser(Landroid/os/UserHandle;)V

    return-void
.end method
