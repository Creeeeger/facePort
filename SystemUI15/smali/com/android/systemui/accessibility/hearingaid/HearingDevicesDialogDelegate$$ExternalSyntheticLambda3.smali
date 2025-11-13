.class public final synthetic Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v0, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.HEARING_DEVICES_PAIRING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iget-object v2, v1, Lcom/android/systemui/animation/DialogTransitionAnimator;->openedDialogs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/animation/AnimatedDialog;

    iget-object v5, v5, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    check-cast v3, Lcom/android/systemui/animation/AnimatedDialog;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/animation/DialogTransitionAnimator;->createActivityTransitionController(Lcom/android/systemui/animation/AnimatedDialog;Ljava/lang/Integer;)Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;

    move-result-object v4

    :goto_1
    iget-object p0, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1, v4}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    return-void
.end method
