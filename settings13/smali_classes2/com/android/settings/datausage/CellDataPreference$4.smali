.class Lcom/android/settings/datausage/CellDataPreference$4;
.super Ljava/lang/Object;
.source "CellDataPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/CellDataPreference;->showDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/CellDataPreference;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/CellDataPreference;Landroid/widget/CheckBox;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    iput-object p2, p0, Lcom/android/settings/datausage/CellDataPreference$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 415
    sget-boolean p1, Lcom/samsung/android/settings/Rune;->FEATURE_MOBILE_DATA_OFF_POPUP_DO_NOT_SHOW_AGAIN:Z

    if-eqz p1, :cond_0

    .line 416
    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/datausage/CellDataPreference$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    const-string/jumbo v0, "mobile_data_off_popup_show_again"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    :cond_0
    iget-object p0, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->-$$Nest$msetMobileDataEnabled(Lcom/android/settings/datausage/CellDataPreference;Z)V

    return-void
.end method
