.class Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$1;
.super Ljava/lang/Object;
.source "DatePickerAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->-$$Nest$fgetmDatePicker(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)Landroidx/picker/widget/SeslDatePicker;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/picker/widget/SeslDatePicker;->isEditTextMode()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->-$$Nest$fgetmDatePicker(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)Landroidx/picker/widget/SeslDatePicker;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->setEditTextMode(Z)V

    :cond_0
    return-void
.end method
