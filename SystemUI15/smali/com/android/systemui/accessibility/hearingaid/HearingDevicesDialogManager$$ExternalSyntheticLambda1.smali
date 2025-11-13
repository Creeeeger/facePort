.class public final synthetic Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f$2:Lcom/android/systemui/animation/Expandable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/animation/Expandable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;

    iget-object v1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/animation/Expandable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mDialogFactory:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$Factory;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    invoke-interface {v2, v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$Factory;->create(Z)Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p0, :cond_0

    new-instance v1, Lcom/android/systemui/animation/DialogCuj;

    const-string v2, "hearing_devices_tile"

    const/16 v4, 0x3a

    invoke-direct {v1, v4, v2}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iget-object v0, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v1, v0, p0, v3}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogManager;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v0, "HearingDevicesDialogManager"

    const-string v1, "Exception occurs while running pairedHearingDeviceCheckTask"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
