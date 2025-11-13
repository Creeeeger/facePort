.class public final synthetic Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/AccessibilityServicePreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/AccessibilityServicePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/AccessibilityServicePreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/AccessibilityServicePreference;

    sget p0, Lcom/android/settings/accessibility/AccessibilityServicePreference;->$r8$clinit:I

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object p0, v1, Lcom/android/settings/accessibility/AccessibilityServicePreference;->mA11yServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getAnimatedImageRes()I

    move-result v5

    iget-object p0, v1, Lcom/android/settings/accessibility/AccessibilityServicePreference;->mA11yServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v0, v1, Lcom/android/settings/accessibility/AccessibilityServicePreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadIntro(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object v0, v1, Lcom/android/settings/accessibility/AccessibilityServicePreference;->mA11yServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-boolean v4, v1, Lcom/android/settings/accessibility/AccessibilityServicePreference;->mServiceEnabled:Z

    invoke-static {p0, v0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object p0, v1, Lcom/android/settings/accessibility/AccessibilityServicePreference;->mA11yServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v0, v1, Lcom/android/settings/accessibility/AccessibilityServicePreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v6

    iget-object p0, v1, Lcom/android/settings/accessibility/AccessibilityServicePreference;->mA11yServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v8

    iget-object p0, v1, Lcom/android/settings/accessibility/AccessibilityServicePreference;->mA11yServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getTileServiceName()Ljava/lang/String;

    move-result-object v9

    iget-object p0, v1, Lcom/android/settings/accessibility/AccessibilityServicePreference;->mA11yServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->accessibilityMetricsFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/accessibility/AccessibilityMetricsFeatureProviderImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v10, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/AccessibilityServicePreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
