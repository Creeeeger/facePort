.class public final Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x8

    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;I)V

    new-instance v1, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;I)V

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBluetoothDialogDelegate:Lcom/android/systemui/keyboard/BluetoothDialogDelegate;

    invoke-virtual {v0}, Lcom/android/systemui/keyboard/BluetoothDialogDelegate;->createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v2, 0x7f1305d1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v2, 0x7f1305d0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v2, 0x7f1305cf

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method
