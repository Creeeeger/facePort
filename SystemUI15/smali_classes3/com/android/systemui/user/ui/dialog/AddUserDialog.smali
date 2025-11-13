.class public final Lcom/android/systemui/user/ui/dialog/AddUserDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;ZZLcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/animation/DialogTransitionAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p6, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p7, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    new-instance p5, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;

    invoke-direct {p5, p0, p2, p1, p3}, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;-><init>(Lcom/android/systemui/user/ui/dialog/AddUserDialog;Landroid/os/UserHandle;Landroid/content/Context;Z)V

    const p2, 0x7f13141b

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setTitle(I)V

    const p2, 0x7f131419

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_0

    const p4, 0x7f131416

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const-string p4, ""

    :goto_0
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x1040000

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p4, -0x3

    invoke-virtual {p0, p4, p2, p5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p2, 0x104000a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1, p5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {p0, p3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;Z)V

    return-void
.end method
