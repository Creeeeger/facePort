.class public final Lcom/android/systemui/usb/UsbDebuggingActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/UsbDebuggingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    iget-object p1, p1, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mAlwaysAllow="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    iget-object p0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsbDebuggingActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
