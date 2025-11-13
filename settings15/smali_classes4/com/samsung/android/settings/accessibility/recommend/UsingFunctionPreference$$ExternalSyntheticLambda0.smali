.class public final synthetic Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->item:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    iget-object v3, v0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->key:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->controllable:Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {v4}, Lcom/android/settings/core/BasePreferenceController;->getControlType()I

    move-result v5

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->usingFunction:Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)V

    const-string/jumbo v0, "recommend"

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setControlId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/settings/core/BasePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->item:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->usingFunction:Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;

    invoke-interface {v1}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "function"

    invoke-static {v2, v1}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x3eb

    const-string v3, "A11Y1008"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(ILjava/lang/String;Ljava/util/Map;)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->announceText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
