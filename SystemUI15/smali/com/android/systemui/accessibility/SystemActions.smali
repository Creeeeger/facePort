.class public final Lcom/android/systemui/accessibility/SystemActions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mContext:Landroid/content/Context;

.field public mDismissNotificationShadeActionRegistered:Z

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mLocale:Ljava/util/Locale;

.field public final mNotificationShadeCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

.field public final mNotificationShadeController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mPanelExpansionInteractor:Ldagger/Lazy;

.field public final mReceiver:Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

.field public final mRecentsOptional:Ljava/util/Optional;

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/ShadeController;Ldagger/Lazy;Ljava/util/Optional;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/shade/ShadeController;",
            "Ldagger/Lazy;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/accessibility/SystemActions;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p4, p0, Lcom/android/systemui/accessibility/SystemActions;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p5, p0, Lcom/android/systemui/accessibility/SystemActions;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    iput-object p6, p0, Lcom/android/systemui/accessibility/SystemActions;->mPanelExpansionInteractor:Ldagger/Lazy;

    iput-object p7, p0, Lcom/android/systemui/accessibility/SystemActions;->mRecentsOptional:Ljava/util/Optional;

    iput-object p8, p0, Lcom/android/systemui/accessibility/SystemActions;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    new-instance p2, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;-><init>(Lcom/android/systemui/accessibility/SystemActions;I)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/SystemActions;->mReceiver:Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/accessibility/SystemActions;->mLocale:Ljava/util/Locale;

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object p3, p0, Lcom/android/systemui/accessibility/SystemActions;->mNotificationShadeController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    new-instance p2, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/SystemActions;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/SystemActions;->mNotificationShadeCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    new-instance p2, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {p2, p1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/SystemActions;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    return-void
.end method


# virtual methods
.method public final createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Landroid/app/RemoteAction;

    iget-object v2, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    const v3, 0x10800b4

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mReceiver:Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "SYSTEM_ACTION_DPAD_LEFT"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 p0, 0x11

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "SYSTEM_ACTION_DPAD_DOWN"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 p0, 0x10

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 p0, 0xf

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "SYSTEM_ACTION_DPAD_RIGHT"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 p0, 0xe

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "SYSTEM_ACTION_QUICK_SETTINGS"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 p0, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string v5, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 p0, 0xc

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "SYSTEM_ACTION_HEADSET_HOOK"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 p0, 0xb

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 p0, 0xa

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "SYSTEM_ACTION_DPAD_UP"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 p0, 0x9

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "SYSTEM_ACTION_DPAD_CENTER"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 p0, 0x8

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_0

    :cond_a
    const/4 p0, 0x7

    goto :goto_0

    :sswitch_b
    const-string v5, "SYSTEM_ACTION_RECENTS"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_0

    :cond_b
    const/4 p0, 0x6

    goto :goto_0

    :sswitch_c
    const-string v5, "SYSTEM_ACTION_LOCK_SCREEN"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_0

    :cond_c
    const/4 p0, 0x5

    goto :goto_0

    :sswitch_d
    const-string v5, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_0

    :cond_d
    const/4 p0, 0x4

    goto :goto_0

    :sswitch_e
    const-string v5, "SYSTEM_ACTION_NOTIFICATIONS"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_0

    :cond_e
    const/4 p0, 0x3

    goto :goto_0

    :sswitch_f
    const-string v5, "SYSTEM_ACTION_POWER_DIALOG"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_0

    :cond_f
    const/4 p0, 0x2

    goto :goto_0

    :sswitch_10
    const-string v5, "SYSTEM_ACTION_HOME"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_0

    :cond_10
    const/4 p0, 0x1

    goto :goto_0

    :sswitch_11
    const-string v5, "SYSTEM_ACTION_BACK"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_0

    :cond_11
    move p0, v0

    :goto_0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    :pswitch_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    invoke-static {v4, v0, p0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    :goto_1
    invoke-direct {v1, v2, v3, p1, p0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x41cad4c0 -> :sswitch_11
        -0x41c7e4c8 -> :sswitch_10
        -0x2af1b8c5 -> :sswitch_f
        -0x1fe56d71 -> :sswitch_e
        -0xacfbdb0 -> :sswitch_d
        -0x9247679 -> :sswitch_c
        0x289985f -> :sswitch_b
        0x1f693002 -> :sswitch_a
        0x291b586c -> :sswitch_9
        0x309b4632 -> :sswitch_8
        0x4a438bbc -> :sswitch_7
        0x5903ea39 -> :sswitch_6
        0x5e2ce025 -> :sswitch_5
        0x6379b96e -> :sswitch_4
        0x65415305 -> :sswitch_3
        0x70f16138 -> :sswitch_2
        0x76dace79 -> :sswitch_1
        0x76de49de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleHeadsetHook()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->interceptHeadsetHookForActiveCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x4f

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    :cond_0
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/SystemActions;->registerActions()V

    :cond_0
    return-void
.end method

.method public final registerActions()V
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x1040175

    const-string v2, "SYSTEM_ACTION_BACK"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v1

    const v2, 0x104017e

    const-string v3, "SYSTEM_ACTION_HOME"

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v2

    const v3, 0x1040185

    const-string v4, "SYSTEM_ACTION_RECENTS"

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v3

    const v4, 0x1040180

    const-string v5, "SYSTEM_ACTION_NOTIFICATIONS"

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v4

    const v5, 0x1040184

    const-string v6, "SYSTEM_ACTION_QUICK_SETTINGS"

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v5

    const v6, 0x1040183

    const-string v7, "SYSTEM_ACTION_POWER_DIALOG"

    invoke-virtual {v0, v6, v7}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v6

    const v7, 0x104017f

    const-string v8, "SYSTEM_ACTION_LOCK_SCREEN"

    invoke-virtual {v0, v7, v8}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v7

    const v8, 0x1040186

    const-string v9, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    invoke-virtual {v0, v8, v9}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v8

    const v9, 0x104017d

    const-string v10, "SYSTEM_ACTION_HEADSET_HOOK"

    invoke-virtual {v0, v9, v10}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v9

    const v10, 0x104017c

    const-string v11, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    invoke-virtual {v0, v10, v11}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v10

    const v11, 0x104017b

    const-string v12, "SYSTEM_ACTION_DPAD_UP"

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v11

    const v12, 0x1040178

    const-string v13, "SYSTEM_ACTION_DPAD_DOWN"

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v12

    const v13, 0x1040179

    const-string v14, "SYSTEM_ACTION_DPAD_LEFT"

    invoke-virtual {v0, v13, v14}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v13

    const v14, 0x104017a

    const-string v15, "SYSTEM_ACTION_DPAD_RIGHT"

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v14

    const v15, 0x1040177

    move-object/from16 v16, v14

    const-string v14, "SYSTEM_ACTION_DPAD_CENTER"

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v14

    iget-object v15, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v17, v14

    const/4 v14, 0x1

    invoke-virtual {v15, v1, v14}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v14, 0x2

    invoke-virtual {v1, v2, v14}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v1}, Lcom/android/systemui/shade/ShadeController;->isShadeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v2}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v5, v2}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v6, v2}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v7, v2}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v8, v2}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v9, v2}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0xd

    invoke-virtual {v1, v10, v2}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x10

    invoke-virtual {v1, v11, v2}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x11

    invoke-virtual {v1, v12, v2}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x12

    invoke-virtual {v1, v13, v2}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x13

    move-object/from16 v3, v16

    invoke-virtual {v1, v3, v2}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x14

    move-object/from16 v3, v17

    invoke-virtual {v1, v3, v2}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/accessibility/SystemActions;->registerOrUnregisterDismissNotificationShadeAction()V

    return-void
.end method

.method public final registerOrUnregisterDismissNotificationShadeAction()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mPanelExpansionInteractor:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isPanelExpanded()Z

    move-result v0

    const/16 v1, 0xf

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mDismissNotificationShadeActionRegistered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const v2, 0x1040176

    const-string v3, "SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mDismissNotificationShadeActionRegistered:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mDismissNotificationShadeActionRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->unregisterSystemAction(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mDismissNotificationShadeActionRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final sendDownAndUpKeyEvents(I)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v3, v7

    move-wide v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/accessibility/SystemActions;->sendKeyEventIdentityCleared(IIJJ)V

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/accessibility/SystemActions;->sendKeyEventIdentityCleared(IIJJ)V

    return-void
.end method

.method public final sendKeyEventIdentityCleared(IIJJ)V
    .locals 13

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v11, 0x101

    const/4 v12, 0x0

    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    move v4, p2

    move v5, p1

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    move-object v1, p0

    iget-object v1, v1, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    return-void
.end method

.method public final start()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mNotificationShadeCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    iget-object v1, p0, Lcom/android/systemui/accessibility/SystemActions;->mNotificationShadeController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V

    iget-object v2, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->$r8$clinit:I

    iget-object v3, p0, Lcom/android/systemui/accessibility/SystemActions;->mReceiver:Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "SYSTEM_ACTION_BACK"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_HOME"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_RECENTS"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_NOTIFICATIONS"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_QUICK_SETTINGS"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_POWER_DIALOG"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_LOCK_SCREEN"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_HEADSET_HOOK"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_DPAD_UP"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_DPAD_DOWN"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_DPAD_LEFT"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_DPAD_RIGHT"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "SYSTEM_ACTION_DPAD_CENTER"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v7, 0x2

    const-string v5, "com.android.systemui.permission.SELF"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/SystemActions;->registerActions()V

    return-void
.end method
