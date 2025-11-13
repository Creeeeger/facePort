.class public final Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;

.field public final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController$4;->this$0:Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController$4;->val$checkBox:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isAllNAVendor()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController$4;->this$0:Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;->access$000(Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    const-string/jumbo v0, "mobile_data_off_popup_show_again"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController$4;->this$0:Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;->-$$Nest$fgetmTelephonyManager(Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController$4;->this$0:Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;->-$$Nest$fgetmSecSwitchPreference(Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
