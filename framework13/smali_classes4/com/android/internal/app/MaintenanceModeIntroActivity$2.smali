.class Lcom/android/internal/app/MaintenanceModeIntroActivity$2;
.super Ljava/lang/Object;
.source "MaintenanceModeIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MaintenanceModeIntroActivity;->showDialogToConfirmRestart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

.field final synthetic blacklist val$checkedTextView:Landroid/widget/CheckedTextView;

.field final synthetic blacklist val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;Landroid/widget/CheckedTextView;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/MaintenanceModeIntroActivity;

    .line 450
    iput-object p1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    iput-object p2, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->val$checkedTextView:Landroid/widget/CheckedTextView;

    iput-object p3, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onClick$0$com-android-internal-app-MaintenanceModeIntroActivity$2()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmUm(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmUm(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLowOnStorageForMaintenanceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$mshowDialogToNotifyLowOnStorage(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmTurnOnButton(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 490
    return-void
.end method

.method synthetic blacklist lambda$onClick$1$com-android-internal-app-MaintenanceModeIntroActivity$2()V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$menterMaintenanceMode(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 483
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmWm(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v2}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmWaitingView(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 485
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    new-instance v2, Lcom/android/internal/app/MaintenanceModeIntroActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity$2;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 492
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$onClick$2$com-android-internal-app-MaintenanceModeIntroActivity$2(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .line 498
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmContext(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/content/Context;

    move-result-object v0

    .line 500
    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 498
    :goto_0
    const-string v2, "7070"

    invoke-static {v0, v2, v1}, Lcom/android/internal/app/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$onClick$3$com-android-internal-app-MaintenanceModeIntroActivity$2()V
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmContext(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "7071"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 453
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmTurnOnButton(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmIsTablet(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 456
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 458
    .local v2, "rotation":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 472
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmViewWindowParams(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v3, 0x8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0

    .line 468
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmViewWindowParams(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v3, 0x9

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 470
    goto :goto_0

    .line 464
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v3}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmViewWindowParams(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 466
    goto :goto_0

    .line 460
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmViewWindowParams(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v3, 0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 478
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "rotation":I
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->val$checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 479
    .local v0, "isChecked":Z
    if-eqz v0, :cond_1

    .line 480
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmWm(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v2}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmWaitingView(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v3}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmViewWindowParams(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/app/MaintenanceModeIntroActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity$2;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 492
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 494
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmWm(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v2}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmDumpView(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v3}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmViewWindowParams(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$mtriggerDump(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    .line 497
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 498
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmLoggingExecutor(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/MaintenanceModeIntroActivity$2$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity$2;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 501
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmLoggingExecutor(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/MaintenanceModeIntroActivity$2$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$2$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity$2;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 503
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
