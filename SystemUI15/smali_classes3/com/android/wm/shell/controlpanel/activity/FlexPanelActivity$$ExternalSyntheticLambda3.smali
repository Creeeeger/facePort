.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    sget v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p1

    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
