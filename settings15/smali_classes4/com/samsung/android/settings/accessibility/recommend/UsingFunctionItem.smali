.class public final Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final controllable:Lcom/android/settings/core/BasePreferenceController;

.field public final key:Ljava/lang/String;

.field public final uriList:Ljava/util/List;

.field public final usingFunction:Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/BasePreferenceController;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->key:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->usingFunction:Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->controllable:Lcom/android/settings/core/BasePreferenceController;

    invoke-interface {v0}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getUsingFunctionType()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const-string p1, "accessibility_button_targets"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string p1, "accessibility_shortcut_target_service"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string p1, "accessibility_display_magnification_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "accessibility_magnification_two_finger_triple_tap_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string p1, "accessibility_qs_targets"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string p1, "accessibility_direct_access_target_service"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->uriList:Ljava/util/List;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityObservableController;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityObservableController;

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityObservableController;->getUriList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->uriList:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->uriList:Ljava/util/List;

    :goto_0
    return-void
.end method


# virtual methods
.method public final isTurnedOn(Landroid/content/Context;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->controllable:Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    iget v3, v0, Lcom/samsung/android/settings/cube/ControlValue;->mAvailabilityStatus:I

    if-eqz v3, :cond_1

    if-ne v3, v2, :cond_5

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->usingFunction:Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    move p0, v1

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getUsingFunctionType()I

    move-result p0

    if-eq p0, v2, :cond_4

    const/4 v3, 0x2

    if-eq p0, v3, :cond_3

    const/16 v3, 0x65

    if-eq p0, v3, :cond_3

    const/16 v3, 0xc8

    if-eq p0, v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    xor-int/2addr p0, v2

    goto :goto_2

    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :goto_2
    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method
