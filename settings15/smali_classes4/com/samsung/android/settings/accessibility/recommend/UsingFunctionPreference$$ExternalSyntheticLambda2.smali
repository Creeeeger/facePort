.class public final synthetic Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    sget p1, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->item:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->usingFunction:Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;

    invoke-interface {p0}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "function"

    invoke-static {v0, p0}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const/16 v0, 0x3eb

    const-string v1, "A11Y1009"

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(ILjava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
