.class public abstract Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static setBounceKeysEnable(Landroid/content/Context;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bounce_keys_period"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    if-eqz p1, :cond_0

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Landroid/hardware/input/InputSettings;->setAccessibilityBounceKeysThreshold(Landroid/content/Context;I)V

    return-void
.end method
