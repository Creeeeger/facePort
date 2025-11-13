.class public final Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    sget p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->$r8$clinit:I

    const-string p1, "WifiApSeekBarPreference"

    const-string v0, "Secondary icon clicked."

    invoke-static {p1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mOnPreferenceItemsCLickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;

    if-eqz p0, :cond_3

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Secondary Icon clicked"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->hideKeyboard(Landroid/content/Context;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0d0a0d

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const v2, 0x7f140d33

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const v0, 0x7f0a017b

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0184

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0a018a

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->is5GhzBandSupported(Landroid/content/Context;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->is5GhzBandSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp6GBasedOnCountry()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method
