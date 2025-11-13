.class public final Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final startingUser:I

.field public final synthetic this$0:Lcom/android/systemui/controls/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;->this$0:Lcom/android/systemui/controls/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/controls/BaseActivity;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;->startingUser:I

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 3

    iget-object p2, p0, Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;->this$0:Lcom/android/systemui/controls/BaseActivity;

    invoke-virtual {p2}, Lcom/android/systemui/controls/BaseActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUserChanged newUser = "

    const-string v2, ", startingUser = "

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;->startingUser:I

    invoke-static {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    if-eq p1, v2, :cond_0

    iget-object p1, p2, Lcom/android/systemui/controls/BaseActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
