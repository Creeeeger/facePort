.class public abstract Lcom/samsung/android/settings/accessibility/exclusive/info/MotionFeatureTaskInfo;
.super Lcom/samsung/android/settings/accessibility/exclusive/info/NonAccessibilityExclusiveTaskInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public getMotionFeatureName()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getTaskName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isAvailable(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/exclusive/info/MotionFeatureTaskInfo;->getMotionFeatureName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
