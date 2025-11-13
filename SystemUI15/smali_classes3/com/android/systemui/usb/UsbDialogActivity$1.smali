.class public final Lcom/android/systemui/usb/UsbDialogActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/usb/UsbDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/UsbDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/UsbDialogActivity$1;->this$0:Lcom/android/systemui/usb/UsbDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogActivity$1;->this$0:Lcom/android/systemui/usb/UsbDialogActivity;

    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
