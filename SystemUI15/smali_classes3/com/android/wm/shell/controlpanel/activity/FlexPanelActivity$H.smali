.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mImmersiveState:I

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateImmersiveState(Z)V

    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mImmersiveState:I

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    invoke-virtual {v1, v0, v0}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    const/high16 v0, 0x30010000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_5

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Cancel FlexDimActivity: mIsMediaPanel="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mImmersiveState="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mImmersiveState:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mFlexMediaPanel="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " sFlexPanelActivity="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " sFlexDimActivity="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " usingTalkBack="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v1

    :cond_6
    const-string p0, "FlexPanelActivity"

    invoke-static {p1, v1, p0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_7
    :goto_5
    return-void
.end method
