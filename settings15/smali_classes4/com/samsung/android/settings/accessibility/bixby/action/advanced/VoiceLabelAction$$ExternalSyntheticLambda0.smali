.class public final synthetic Lcom/samsung/android/settings/accessibility/bixby/action/advanced/VoiceLabelAction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/bixby/action/advanced/VoiceLabelAction;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/bixby/action/advanced/VoiceLabelAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/bixby/action/advanced/VoiceLabelAction$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/bixby/action/advanced/VoiceLabelAction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/advanced/VoiceLabelAction$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/bixby/action/advanced/VoiceLabelAction;

    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sget-boolean p2, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->FEATURE_ACCESSIBILITY_SETTINGS_HOME_APPLIANCE_BACKUP:Z

    sget-object p2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->URI_ACCESSIBILITY_PROVIDER:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p2

    const-string v0, "SEC_FLOATING_FEATURE_VOICERECORDER_CONFIG_PACKAGE_NAME"

    invoke-virtual {p2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const-string/jumbo p2, "result"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
