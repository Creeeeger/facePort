.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$5;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    sget p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "F004"

    const-string v1, "b"

    invoke-static {v0, v1, p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->semIsResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->finish()V

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad(Z)V

    iget-object p1, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object p1, p1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsResumeCalled:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->dismissSplitTask(Landroid/os/IBinder;Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_0
    return-void
.end method
