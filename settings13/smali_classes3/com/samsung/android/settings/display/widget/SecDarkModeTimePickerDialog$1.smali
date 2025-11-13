.class Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;
.super Ljava/lang/Object;
.source "SecDarkModeTimePickerDialog.java"

# interfaces
.implements Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;-><init>(Landroid/content/Context;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;->this$0:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreTabSelected()V
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;->this$0:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->-$$Nest$fgetmTimePicker(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;)Landroidx/picker/widget/SeslTimePicker;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslTimePicker;->setEditTextMode(Z)V

    return-void
.end method

.method public onTabSelected(II)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;->this$0:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->-$$Nest$mupdatePicker(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;I)V

    return-void
.end method
