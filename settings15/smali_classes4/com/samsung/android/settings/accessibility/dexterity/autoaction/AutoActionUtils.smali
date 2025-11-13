.class public abstract Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final mActionMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionUtils;->mActionMap:Ljava/util/HashMap;

    const v1, 0x7f1400a3

    const-string/jumbo v2, "none"

    const v3, 0x7f1400a4

    const-string/jumbo v4, "open_close_notifications"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f1400a5

    const-string/jumbo v2, "open_close_quick_panel"

    const v3, 0x7f1400ae

    const-string/jumbo v4, "screen_shot"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f1400b6

    const-string/jumbo v2, "talk_to_bixby"

    const v3, 0x7f1400af

    const-string/jumbo v4, "send_sos_messages"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f1400a2

    const-string v2, "media_volume_up"

    const v3, 0x7f1400a1

    const-string v4, "media_volume_down"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f1400ab

    const-string/jumbo v2, "ringtone_volume_up"

    const v3, 0x7f1400aa

    const-string/jumbo v4, "ringtone_volume_down"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f1400a0

    const-string v2, "increase_brightness"

    const v3, 0x7f1400a9

    const-string/jumbo v4, "reduce_brightness"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f1400ad

    const-string/jumbo v2, "screen_rotation"

    const v3, 0x7f1400b1

    const-string/jumbo v4, "sound_vibrate_mute"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f1400ac

    const-string/jumbo v2, "screen_off"

    const v3, 0x7f1400a7

    const-string/jumbo v4, "power_off_menu"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f14009f

    const-string v2, "home"

    const v3, 0x7f1400a8

    const-string/jumbo v4, "recents"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f14009a

    const-string v2, "back"

    const v3, 0x7f140099

    const-string v4, "accessibility_button"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f14009c

    const-string v2, "double_click"

    const v3, 0x7f14009b

    const-string v4, "click_and_hold"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f14009d

    const-string v2, "drag"

    const v3, 0x7f14009e

    const-string v4, "drag_and_drop"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f1400b7

    const-string/jumbo v2, "zoom_in"

    const v3, 0x7f1400b8

    const-string/jumbo v4, "zoom_out"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f1400b3

    const-string/jumbo v2, "swipe_left"

    const v3, 0x7f1400b4

    const-string/jumbo v4, "swipe_right"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f1400b5

    const-string/jumbo v2, "swipe_up"

    const v3, 0x7f1400b2

    const-string/jumbo v4, "swipe_down"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f1400a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "pause_resume_auto_click"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static autoActionSetAsDefault(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_auto_action_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "accessibility_pause_auto_click_with"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "accessibility_corner_action_enabled"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "accessibility_corner_actions"

    const-string/jumbo v2, "none:none:none:none"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "accessibility_auto_action_delay"

    const/16 v2, 0x258

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "accessibility_auto_click_paused_state"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static updateAction(Landroid/content/Context;II)V
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_corner_actions"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "none:none:none:none"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "none"

    const/4 v5, 0x0

    const-string v6, ","

    const/4 v7, -0x1

    if-eq p1, v7, :cond_2

    new-instance v8, Ljava/util/ArrayList;

    aget-object v9, v0, p1

    invoke-virtual {v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    aput-object v4, v0, p1

    goto :goto_1

    :cond_1
    invoke-static {v6, v8}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, p1

    :cond_2
    :goto_1
    const/4 p1, 0x1

    if-eq p2, v7, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    aget-object v8, v0, p2

    invoke-virtual {v8, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const-string/jumbo v9, "pause_resume_auto_click"

    if-ne v8, p1, :cond_3

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    aput-object v9, v0, p2

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v5, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v6, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, p2

    :cond_4
    :goto_2
    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr p1, v2

    const-string v2, "accessibility_corner_action_enabled"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
