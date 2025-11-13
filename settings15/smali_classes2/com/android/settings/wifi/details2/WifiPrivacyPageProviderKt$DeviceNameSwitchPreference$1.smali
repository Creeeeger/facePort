.class public final Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;


# instance fields
.field public final checked:Lkotlin/jvm/functions/Function0;

.field public final onCheckedChange:Lkotlin/jvm/functions/Function1;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f143628

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1;->title:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1$summary$1;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1$summary$1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1;->summary:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1$checked$1;

    invoke-direct {p1, p2}, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1$checked$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1;->checked:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1$onCheckedChange$1;

    invoke-direct {p1, p3, p4, p2}, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1$onCheckedChange$1;-><init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager;Landroidx/compose/runtime/MutableState;)V

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getChecked()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1;->checked:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnCheckedChange()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiPrivacyPageProviderKt$DeviceNameSwitchPreference$1;->title:Ljava/lang/String;

    return-object p0
.end method
