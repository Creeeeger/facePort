.class public Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    const-string v0, "com.samsung.accessibility.shortcut.action.ON"

    const-string v1, "com.samsung.accessibility.shortcut.action.OFF"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "AccessibilityShortcutEditRequestBroadcastReceiver"

    if-eqz v5, :cond_a

    if-nez v7, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v8, "EXTRA_SHORTCUT_COMPONENT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "defaultType"

    invoke-virtual {v7, v9, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "EXTRA_SHORTCUT_INFO_FLAGS"

    invoke-virtual {v7, v10, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "action: "

    const-string v12, ", flags: "

    const-string v13, ", EXTRA_SHORTCUT_COMPONENT: "

    invoke-static {v10, v11, v6, v12, v13}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", defaultType : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_1

    const-string v0, "action is null"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez v8, :cond_2

    const-string v0, "EXTRA_SHORTCUT_COMPONENT is null."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    if-nez v11, :cond_3

    const-string v0, "EXTRA_SHORTCUT_COMPONENT is invalid."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilityShortcutInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityShortcutInfo;

    move-result-object v12

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilityServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v13

    if-nez v12, :cond_4

    if-nez v13, :cond_4

    const-string v0, "EXTRA_SHORTCUT_COMPONENTis not exist."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v13, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :goto_0
    move v2, v13

    goto :goto_1

    :sswitch_0
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "com.samsung.accessibility.shortcut.action.REQUEST_INFO"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_1

    :sswitch_2
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    packed-switch v2, :pswitch_data_0

    const-string v0, "invalid action: "

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    invoke-static {v5, v9, v8}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v5, v2, v11}, Lcom/android/settings/accessibility/AccessibilityUtil;->optInAllValuesToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v5, v2, v11}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    :cond_9
    :goto_2
    new-instance v0, Lcom/android/settings/accessibility/PreferredShortcut;

    invoke-direct {v0, v8, v2}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    invoke-static {v5, v0}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shortcutTypes : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v14, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;

    move-object v0, v14

    move-object v1, p0

    move v2, v10

    move-object v3, v11

    move-object v4, v8

    move-object/from16 v5, p1

    move-object v6, v12

    move-object/from16 v7, p2

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityShortcutInfo;Landroid/content/Intent;I)V

    const-wide/16 v0, 0x64

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_a
    :goto_3
    const-string v0, "context or intent is null"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x66b9c982 -> :sswitch_2
        0x2697a42f -> :sswitch_1
        0x367e22d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
