.class public final Lcom/samsung/android/settings/accessibility/recommend/tryitem/BixbyVisionForA11yTryItem;
.super Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final controller:Lcom/android/settings/core/BasePreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    const-string v0, "dummy"

    const-string v1, "com.samsung.android.settings.accessibility.vision.controllers.BixbyVisionAccessibilityPreferenceController"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/BixbyVisionForA11yTryItem;->controller:Lcom/android/settings/core/BasePreferenceController;

    return-void
.end method


# virtual methods
.method public final getFunctionName()Ljava/lang/String;
    .locals 0

    const-string p0, "BixbyVisionForA11y"

    return-object p0
.end method

.method public final getLaunchIntent()Landroid/content/Intent;
    .locals 2

    new-instance p0, Landroid/content/Intent;

    const-string/jumbo v0, "samsung.intentfilter.visionintelligence.accessibility"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x14000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "SHOW_START_BIXBYVISION"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getMappedUsingFunctionKeySet()Ljava/util/Set;
    .locals 0

    const-string p0, "magnification_preference_screen"

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;->mContext:Landroid/content/Context;

    const v0, 0x7f140673

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/BixbyVisionForA11yTryItem;->controller:Lcom/android/settings/core/BasePreferenceController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
