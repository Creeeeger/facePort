.class public final Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;
    .locals 1

    sget-object v0, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->sInstance:Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->sInstance:Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    :cond_0
    sget-object v0, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->sInstance:Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    return-object v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "SafetyCenterManagerWrap"

    if-nez p0, :cond_0

    const-string p0, "Context is null at SafetyCenterManagerWrapper#isEnabled"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-class v2, Landroid/safetycenter/SafetyCenterManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/safetycenter/SafetyCenterManager;

    if-nez p0, :cond_1

    const-string p0, "System service SAFETY_CENTER_SERVICE (SafetyCenterManager) is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/safetycenter/SafetyCenterManager;->isSafetyCenterEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v2, "Calling isSafetyCenterEnabled failed."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static setSafetySourceData(Landroid/content/Context;Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;)V
    .locals 1

    const-class v0, Landroid/safetycenter/SafetyCenterManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/safetycenter/SafetyCenterManager;

    const-string v0, "SafetyCenterManagerWrap"

    if-nez p0, :cond_0

    const-string p0, "System service SAFETY_CENTER_SERVICE (SafetyCenterManager) is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/safetycenter/SafetyCenterManager;->setSafetySourceData(Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to send SafetySourceData"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
