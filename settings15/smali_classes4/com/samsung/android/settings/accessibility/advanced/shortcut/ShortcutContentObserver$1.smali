.class public final Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;
.super Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;->val$context:Landroid/content/Context;

    sget-object p2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_INTERACTION_CONTROL_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getValuesInSettings(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;->val$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "access_control_use"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;->val$context:Landroid/content/Context;

    sget-object p2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_AMPLIFY_AMBIENT_SOUND_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getValuesInSettings(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.accessibility"

    const-string v3, "com.samsung.accessibility.amplifyambientsound.AmplifyAmbientSoundService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "run_amplify_ambient_sound"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.accessibility.AMPLIFY_AMBIENT_SOUND_TOGGLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isEnabled"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p2, "stopself"

    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "amplify_ambient_sound"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;->val$context:Landroid/content/Context;

    const-string p2, "com.android.server.accessibility.MagnificationController"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getValuesInSettings(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;->val$context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "accessibility_magnification_shortcut"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;->val$context:Landroid/content/Context;

    const-string p1, "accessibility"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->setMagnificationDisactivate()V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
