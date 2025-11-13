.class public interface abstract Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getControllerName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getTaskName()Ljava/lang/String;
.end method

.method public abstract getTaskTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public isAccessibilityTask()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
