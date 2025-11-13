.class public final Lcom/samsung/android/settings/accessibility/exclusive/info/SmartAlertTaskInfo;
.super Lcom/samsung/android/settings/accessibility/exclusive/info/MotionFeatureTaskInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getTaskName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "smart_alert"

    return-object p0
.end method

.method public final getTaskTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const p0, 0x7f141c27

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
