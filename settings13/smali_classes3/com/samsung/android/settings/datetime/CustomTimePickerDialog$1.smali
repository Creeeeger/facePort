.class Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$1;
.super Ljava/lang/Object;
.source "CustomTimePickerDialog.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->initMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$1;->this$0:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$1;->this$0:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->-$$Nest$fgetmTimePicker(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;)Landroidx/picker/widget/SeslTimePicker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslTimePicker;->setEditTextMode(Z)V

    .line 102
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$1;->this$0:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->-$$Nest$fputmTabIndex(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;I)V

    if-nez p1, :cond_0

    .line 106
    iget-object p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$1;->this$0:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->-$$Nest$fgetmStartTime(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->-$$Nest$mupdatePicker(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 108
    iget-object p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$1;->this$0:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->-$$Nest$fgetmEndTime(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->-$$Nest$mupdatePicker(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
