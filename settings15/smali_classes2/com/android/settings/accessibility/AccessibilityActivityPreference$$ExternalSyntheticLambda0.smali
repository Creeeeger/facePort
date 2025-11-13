.class public final synthetic Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/AccessibilityActivityPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/AccessibilityActivityPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/AccessibilityActivityPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/AccessibilityActivityPreference;

    sget-object p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->TARGET_FRAGMENT:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object p0, v1, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mA11yShortcutInfo:Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getAnimatedImageRes()I

    move-result v5

    iget-object p0, v1, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mA11yShortcutInfo:Landroid/accessibilityservice/AccessibilityShortcutInfo;

    iget-object v0, v1, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadIntro(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    iget-object p0, v1, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mA11yShortcutInfo:Landroid/accessibilityservice/AccessibilityShortcutInfo;

    iget-object v0, v1, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    iget-object p0, v1, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mA11yShortcutInfo:Landroid/accessibilityservice/AccessibilityShortcutInfo;

    iget-object v0, v1, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v6

    iget-object p0, v1, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mA11yShortcutInfo:Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v7

    iget-object p0, v1, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mA11yShortcutInfo:Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getTileServiceName()Ljava/lang/String;

    move-result-object v8

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->accessibilityMetricsFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/accessibility/AccessibilityMetricsFeatureProviderImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v9, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/AccessibilityActivityPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
