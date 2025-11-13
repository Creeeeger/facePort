.class public final Lcom/samsung/android/settings/accessibility/recommend/tryitem/BoldFontTryItem;
.super Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final controller:Lcom/android/settings/core/BasePreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    const-string v0, "dummy"

    const-string v1, "com.samsung.android.settings.display.controller.SecFontSizeAndStylePreferenceController"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/BoldFontTryItem;->controller:Lcom/android/settings/core/BasePreferenceController;

    return-void
.end method


# virtual methods
.method public final getFragmentClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.display.SecFontSizePreferenceFragment"

    return-object p0
.end method

.method public final getFunctionName()Ljava/lang/String;
    .locals 0

    const-string p0, "BoldFont"

    return-object p0
.end method

.method public final getMappedUsingFunctionKeySet()Ljava/util/Set;
    .locals 2

    const-string p0, "high_keyboard_contrast_preference_screen"

    const-string/jumbo v0, "toggle_inversion_preference"

    const-string/jumbo v1, "toggle_high_text_contrast_preference"

    invoke-static {v1, p0, v0}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;->mContext:Landroid/content/Context;

    const v0, 0x7f142241

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/BoldFontTryItem;->controller:Lcom/android/settings/core/BasePreferenceController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sec_font_size"

    invoke-static {v1, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "bold_text"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method
