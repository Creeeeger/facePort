.class public final Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    iget-object v1, v1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    iget v1, v1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mState:I

    const-string v2, "UwbFiraTestFragmentController"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    iget v0, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStartMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mOpenMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mCloseMenu:Landroid/view/MenuItem;

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStartMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mOpenMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mCloseMenu:Landroid/view/MenuItem;

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mOpenMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mCloseMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStartMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStopMenu:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_1
    return-void
.end method
