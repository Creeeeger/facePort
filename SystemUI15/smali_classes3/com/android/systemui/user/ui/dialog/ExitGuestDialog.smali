.class public final Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final guestUserId:I

.field public final isGuestEphemeral:Z

.field public final onExitGuestUserListener:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$OnExitGuestUserListener;

.field public final targetUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZIZLcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$OnExitGuestUserListener;)V
    .locals 1

    const v0, 0x7f140604

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput p2, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->guestUserId:I

    iput-boolean p3, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->isGuestEphemeral:Z

    iput p4, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->targetUserId:I

    iput-object p6, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p7, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iput-object p8, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->onExitGuestUserListener:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$OnExitGuestUserListener;

    new-instance p2, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;-><init>(Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;)V

    const/4 p4, -0x1

    const/high16 p6, 0x1040000

    const/4 p7, -0x3

    if-eqz p3, :cond_0

    const p3, 0x7f130728

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const p3, 0x7f130726

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p7, p3, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p3, 0x7f130725

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_0
    const p3, 0x7f130729

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const p3, 0x7f130727

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p7, p3, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p3, 0x7f130724

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p6, -0x2

    invoke-virtual {p0, p6, p3, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p3, 0x7f13072d

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    invoke-static {p0, p5}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0x51

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    :cond_1
    return-void
.end method
