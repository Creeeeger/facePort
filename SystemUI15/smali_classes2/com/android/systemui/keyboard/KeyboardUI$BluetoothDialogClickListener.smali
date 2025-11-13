.class public final Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iget-object p2, p2, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    const/4 v1, 0x3

    invoke-virtual {p2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method
