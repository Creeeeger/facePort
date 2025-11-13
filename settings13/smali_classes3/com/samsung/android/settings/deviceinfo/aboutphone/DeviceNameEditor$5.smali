.class Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$5;
.super Ljava/lang/Object;
.source "DeviceNameEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->showInputMethod()V
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

    .line 219
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$5;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$5;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmEditText(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 223
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$5;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmEditText(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/widget/EditText;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DeviceInfoHeaderDeviceName"

    const-string v0, "Caught showInputMethod Exception"

    .line 225
    invoke-static {p0, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
