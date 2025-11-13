.class Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$1;
.super Ljava/lang/Object;
.source "EyeComfortTimeSettingDialog.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->initMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$1;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

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
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$1;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->-$$Nest$fgetmTimePicker(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;)Landroidx/picker/widget/SeslTimePicker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslTimePicker;->setEditTextMode(Z)V

    .line 103
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$1;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->-$$Nest$fputmTabIndex(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;I)V

    if-nez p1, :cond_0

    .line 107
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$1;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->-$$Nest$fgetmStartTime(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->-$$Nest$mupdatePicker(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 109
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$1;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->-$$Nest$fgetmEndTime(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->-$$Nest$mupdatePicker(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
