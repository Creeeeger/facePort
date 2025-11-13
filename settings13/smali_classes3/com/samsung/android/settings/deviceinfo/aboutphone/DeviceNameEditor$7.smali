.class Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$7;
.super Ljava/lang/Object;
.source "DeviceNameEditor.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->onResume()V
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

    .line 249
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$7;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 251
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$7;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmEditText(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$7;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmEditText(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$7;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmEditText(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 253
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 254
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$7;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmEditText(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
