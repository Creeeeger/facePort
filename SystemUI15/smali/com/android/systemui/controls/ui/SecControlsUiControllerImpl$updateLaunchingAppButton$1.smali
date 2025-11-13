.class public final Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateLaunchingAppButton$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $pendingIntent:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateLaunchingAppButton$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateLaunchingAppButton$1;->$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateLaunchingAppButton$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateLaunchingAppButton$1;->$pendingIntent:Landroid/app/PendingIntent;

    iput-object p0, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->launchingPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v1, Lcom/android/systemui/controls/management/model/MainComponentModel;->showButton:Z

    iget-object p0, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method
