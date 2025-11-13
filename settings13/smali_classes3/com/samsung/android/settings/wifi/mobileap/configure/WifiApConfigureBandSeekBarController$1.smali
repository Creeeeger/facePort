.class Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1;
.super Ljava/lang/Object;
.source "WifiApConfigureBandSeekBarController.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecondaryIconClicked(Ljava/lang/Object;)V
    .locals 5

    .line 46
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Secondary Icon clicked"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->hideKeyboard(Landroid/content/Context;)V

    .line 48
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 49
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_ap_band_tips_dialog:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 50
    sget v0, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 58
    sget v0, Lcom/android/settings/R$id;->band_2ghz_5ghz_layout:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 59
    sget v1, Lcom/android/settings/R$id;->band_5ghz_layout:I

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 60
    sget v2, Lcom/android/settings/R$id;->band_6ghz_layout:I

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 61
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isDualBand2GhzAnd5GhzSupported(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->is5GhzBandSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->is6GhzBandSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 72
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method
