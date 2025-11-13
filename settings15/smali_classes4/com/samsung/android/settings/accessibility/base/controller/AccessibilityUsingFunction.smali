.class public interface abstract Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public abstract getActionButtonDescription(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;
.end method

.method public abstract getFragmentClassName()Ljava/lang/String;
.end method

.method public abstract getFunctionName()Ljava/lang/String;
.end method

.method public abstract getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getLearnMoreButtonIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract getUsingFunctionHighlightKey()Ljava/lang/String;
.end method

.method public abstract getUsingFunctionTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public getUsingFunctionType()I
    .locals 1

    instance-of v0, p0, Lcom/android/settings/core/BasePreferenceController;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
