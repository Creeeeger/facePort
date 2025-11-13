.class public final synthetic Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QSSecurityFooter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda30;->f$0:Lcom/android/systemui/qs/QSSecurityFooter;

    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda30;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda30;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda30;->f$0:Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda30;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda30;->f$2:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v4, 0x7f140604

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v4, 0x7f130d5f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isParentalControlsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f130c57

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x2

    invoke-virtual {v2, v3, v1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object p0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
