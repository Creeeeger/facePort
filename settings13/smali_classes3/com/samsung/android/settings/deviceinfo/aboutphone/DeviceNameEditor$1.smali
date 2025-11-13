.class Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$1;
.super Ljava/lang/Object;
.source "DeviceNameEditor.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    .line 82
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmAnchorView(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/app/AlertDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmAnchorView(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->semSetAnchor(Landroid/view/View;)V

    :cond_0
    return-void
.end method
