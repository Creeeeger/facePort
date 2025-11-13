.class public final Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;

.field public final synthetic val$key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1$1;->this$1:Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1$1;->val$key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, "high_contrast"

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1$1;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "HighContrast"

    goto :goto_0

    :cond_0
    const-string p1, "large_display"

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1$1;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "LargeDisplay"

    goto :goto_0

    :cond_1
    const-string p1, "default"

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1$1;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string p1, "Default"

    :goto_0
    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1$1;->this$1:Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->access$100(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1$1;->this$1:Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;

    iget-object v2, v2, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->access$200(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Settings"

    goto :goto_1

    :cond_2
    const-string v2, "SetupWizard"

    :goto_1
    const-string v3, "Button"

    const-string v4, "From"

    invoke-static {v3, p1, v4, v2}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const-string v2, "A11Y3004"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(ILjava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1$1;->this$1:Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1$1;->val$key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->changeMode(Ljava/lang/String;)Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
