.class abstract Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;
.super Ljava/lang/Object;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Viewer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V

    return-void
.end method

.method private redrawIconForHeader(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 441
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->access$100(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->wifi_detail_page_header_image_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 443
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 444
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    if-ne v0, p0, :cond_0

    if-eq v1, p0, :cond_1

    .line 446
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/VectorDrawable;

    if-nez v0, :cond_2

    :cond_1
    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 453
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 456
    invoke-static {p1, p0, p0}, Lcom/android/settings/Utils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 459
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method


# virtual methods
.method refreshEntityHeader()V
    .locals 3

    .line 397
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmEntityHeaderController(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmInManageNetwork(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmFragment(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 400
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmHeaderInsetPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method abstract refreshGatewayAndSubnet()V
.end method

.method abstract refreshIpAddress()V
.end method

.method refreshMacAddress()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "02:00:00:00:00:00"

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmMacAddressPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->device_info_not_available:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmMacAddressPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 437
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmMacAddressPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 428
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmMacAddressPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method refreshPage()V
    .locals 2

    const-string v0, "WifiDetailsPrefCtrl"

    const-string v1, "Update UI!"

    .line 374
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshEntityHeader()V

    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshWifiSpeed()V

    .line 381
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshSecurity()V

    .line 383
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshPasspoint()V

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshRouterLocation()V

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshMacAddress()V

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshIpAddress()V

    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshGatewayAndSubnet()V

    .line 393
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshRssiViews()V

    return-void
.end method

.method refreshPasspoint()V
    .locals 5

    .line 416
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiConfig(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmPasspointPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->access$000(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->passpoint_content:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiConfig(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmPasspointPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiConfig(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 421
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmPasspointPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method abstract refreshRouterLocation()V
.end method

.method refreshRssiViews()V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmEntityHeaderController(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmIconInjector(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmRssiSignalLevel(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->redrawIconForHeader(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmFragment(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object p0

    .line 412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    return-void
.end method

.method refreshSecurity()V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmSecurityPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 404
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry;->semGetSecurityString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->setSummary(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmSecurityPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiSpeedPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const/4 p0, 0x3

    :goto_1
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->setLocation(I)V

    return-void
.end method

.method abstract refreshWifiSpeed()V
.end method
