.class public abstract Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public controller:Lcom/android/settings/core/BasePreferenceController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->controller:Lcom/android/settings/core/BasePreferenceController;

    return-void
.end method


# virtual methods
.method public doEnableAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;Z)Landroid/os/Bundle;
    .locals 0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->controller:Lcom/android/settings/core/BasePreferenceController;

    instance-of p2, p0, Lcom/android/settings/core/TogglePreferenceController;

    if-eqz p2, :cond_0

    check-cast p0, Lcom/android/settings/core/TogglePreferenceController;

    invoke-virtual {p0, p3}, Lcom/android/settings/core/TogglePreferenceController;->setChecked(Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string/jumbo p0, "success"

    goto :goto_1

    :cond_1
    const-string p0, "fail"

    :goto_1
    const-string/jumbo p2, "result"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public doGetCurrentStatus(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->menuValue:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->controller:Lcom/android/settings/core/BasePreferenceController;

    instance-of v0, p0, Lcom/android/settings/core/TogglePreferenceController;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/settings/core/TogglePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-static {p2, p0}, Lcom/samsung/android/settings/accessibility/bixby/BixbyUtils;->getStateAlreadyChecked(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "result"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public doGetSupportFeature(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->controller:Lcom/android/settings/core/BasePreferenceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    if-eqz p0, :cond_3

    const/4 p2, 0x1

    if-ne p0, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x3

    if-ne p0, p2, :cond_2

    const-string p0, "DeviceChangeNeeded"

    goto :goto_2

    :cond_2
    const-string p0, "false"

    goto :goto_2

    :cond_3
    :goto_1
    const-string/jumbo p0, "true"

    :goto_2
    const-string/jumbo p2, "result"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public abstract getControllerName(Landroid/content/Context;)Ljava/lang/String;
.end method
