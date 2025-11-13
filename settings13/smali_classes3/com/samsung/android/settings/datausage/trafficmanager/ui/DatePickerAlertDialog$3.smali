.class Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$3;
.super Ljava/lang/Object;
.source "DatePickerAlertDialog.java"

# interfaces
.implements Landroidx/picker/widget/SeslDatePicker$ValidationCallback;


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

    .line 266
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidationChanged(Z)V
    .locals 1

    .line 269
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 271
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
