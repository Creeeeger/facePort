.class public final Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mClickListenerFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener$Factory;

.field public final mDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

.field public final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;Landroid/content/res/Resources;Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;->mDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iput-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;->mResources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;->mClickListenerFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener$Factory;

    return-void
.end method


# virtual methods
.method public final create(I)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;->mDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;->mClickListenerFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener$Factory;

    invoke-interface {v1, p1, v0}, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener$Factory;->create(ILandroid/content/DialogInterface;)Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener;

    move-result-object p1

    const v1, 0x7f130737

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f130736

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;->mResources:Landroid/content/res/Resources;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f13073a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p0, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method
