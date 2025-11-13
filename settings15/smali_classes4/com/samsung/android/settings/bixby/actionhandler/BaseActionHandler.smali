.class public abstract Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mResultConverter:Lcom/samsung/android/settings/bixby/converter/ResultConverter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/settings/bixby/converter/ResultConverter;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/samsung/android/settings/bixby/converter/ResultConverter;->mMap:Ljava/util/HashMap;

    const-string v1, "disabled_by_open_theme"

    const-string/jumbo v2, "nighttheme_err_disabled_by_open_theme"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_accessibility_hight_contrasts_fonts"

    const-string/jumbo v2, "nighttheme_err_disabled_by_accessibility_hight_contrasts_fonts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_not_support_screen_mode"

    const-string/jumbo v2, "whiteBalance_disabled_by_not_support_screen_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_natural"

    const-string/jumbo v2, "whiteBalance_disabled_by_natural"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_eye_comfort_shield_on"

    const-string/jumbo v2, "whiteBalance_disabled_by_eye_comfort_shield"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_accessibility_grey_scale"

    const-string v2, "disabled_by_ecs_toast_accessibility_grey_scale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_accessibility_negative_color"

    const-string v2, "disabled_by_ecs_toast_accessibility_negative_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_accessibility_color_adjustment"

    const-string v2, "disabled_by_ecs_toast_accessibility_color_adjustment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_accessibility_color_lens"

    const-string v2, "disabled_by_ecs_toast_accessibility_color_lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_easy_mode_on"

    const-string v2, "edgepanel_err_easy_mode_on"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_talk_back_on"

    const-string v2, "edgepanel_err_talk_back_on"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_universal_switch_on"

    const-string v2, "edgepanel_err_universal_switch_on"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_psm_on"

    const-string v2, "aod_err_disabled_in_psm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_smart_view_connected"

    const-string v2, "aod_err_smart_view_connected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_color_reverse_on"

    const-string v2, "aod_err_color_reverse_on"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "mute_state_off"

    const-string/jumbo v2, "temporary_mute_state_off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_admin"

    const-string/jumbo v2, "screentimeout_err_disabled_by_admin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disabled_by_dex"

    const-string/jumbo v2, "screentimeout_err_disabled_by_dex"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "invalid_argument"

    const-string/jumbo v2, "screentimeout_err_invalid_argument"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;->mResultConverter:Lcom/samsung/android/settings/bixby/converter/ResultConverter;

    return-void
.end method


# virtual methods
.method public final executeAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 4

    const-string v0, "callback response : "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "executeAction() actionName : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseActionHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;->isAffectedByKnoxPolicy()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x18894

    if-lt v1, v3, :cond_2

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getApplicationRestrictions(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p2, "actionType"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "punchOut"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const-string/jumbo p3, "restricted_by_knox"

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/settings/bixby/utils/BixbyUtils;->startSettingsMain(Landroid/content/Context;)V

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;->mResultConverter:Lcom/samsung/android/settings/bixby/converter/ResultConverter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/samsung/android/settings/bixby/converter/ResultConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    new-instance v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;->executeActionInternal(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;)Ljava/lang/String;

    move-result-object p0

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4, p0}, Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;->onComplete(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public abstract executeActionInternal(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;)Ljava/lang/String;
.end method

.method public isAffectedByKnoxPolicy()Z
    .locals 0

    instance-of p0, p0, Lcom/samsung/android/settings/bixby/actionhandler/AODActionHandler;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
