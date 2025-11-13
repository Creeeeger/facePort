.class public final Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $isKeyguardShowing:Z

.field public final synthetic $userHandle:Landroid/os/UserHandle;

.field public final synthetic this$0:Lcom/android/systemui/user/ui/dialog/AddUserDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/ui/dialog/AddUserDialog;Landroid/os/UserHandle;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/AddUserDialog;

    iput-object p2, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->$userHandle:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->$isKeyguardShowing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/AddUserDialog;

    iget-object v0, v0, Lcom/android/systemui/user/ui/dialog/AddUserDialog;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, -0x3

    if-ne p2, p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/AddUserDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/AddUserDialog;

    iget-object p2, p1, Lcom/android/systemui/user/ui/dialog/AddUserDialog;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {p2, p1}, Lcom/android/systemui/animation/DialogTransitionAnimator;->dismissStack(Landroid/app/Dialog;)V

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/AddUserDialog;

    iget-object p1, p1, Lcom/android/systemui/user/ui/dialog/AddUserDialog;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->$userHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->$context:Landroid/content/Context;

    iget-boolean p2, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->$isKeyguardShowing:Z

    sget v0, Lcom/android/systemui/user/CreateUserActivity;->$r8$clinit:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/user/CreateUserActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "extra_is_keyguard_showing"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->$userHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
