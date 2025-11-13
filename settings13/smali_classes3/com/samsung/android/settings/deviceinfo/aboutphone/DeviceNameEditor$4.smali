.class Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$4;
.super Ljava/lang/Object;
.source "DeviceNameEditor.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$4;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 174
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$4;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$4;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-virtual {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->saveDeviceName()V

    .line 176
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$4;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
