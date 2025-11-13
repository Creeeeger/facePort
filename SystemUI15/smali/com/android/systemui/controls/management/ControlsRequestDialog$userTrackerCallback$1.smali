.class public final Lcom/android/systemui/controls/management/ControlsRequestDialog$userTrackerCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final startingUser:I

.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlsRequestDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlsRequestDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog$userTrackerCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsRequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog$userTrackerCallback$1;->startingUser:I

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    iget p2, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog$userTrackerCallback$1;->startingUser:I

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog$userTrackerCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsRequestDialog;

    iget-object p2, p1, Lcom/android/systemui/controls/management/ControlsRequestDialog;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
