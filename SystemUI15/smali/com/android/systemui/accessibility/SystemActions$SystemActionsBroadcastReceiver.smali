.class public final Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/SystemActions;


# direct methods
.method private constructor <init>(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/SystemActions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;-><init>(Lcom/android/systemui/accessibility/SystemActions;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 p1, 0x7

    const/4 v0, 0x3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SystemActions"

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "SYSTEM_ACTION_DPAD_LEFT"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_1
    const-string v6, "SYSTEM_ACTION_DPAD_DOWN"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_2
    const-string v6, "SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_3
    const-string v6, "SYSTEM_ACTION_DPAD_RIGHT"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_4
    const-string v6, "SYSTEM_ACTION_QUICK_SETTINGS"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string v6, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_6
    const-string v6, "SYSTEM_ACTION_HEADSET_HOOK"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_7
    const-string v6, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_8
    const-string v6, "SYSTEM_ACTION_DPAD_UP"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_9
    const-string v6, "SYSTEM_ACTION_DPAD_CENTER"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_a
    const-string v6, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    move v5, p1

    goto :goto_0

    :sswitch_b
    const-string v6, "SYSTEM_ACTION_RECENTS"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_c
    const-string v6, "SYSTEM_ACTION_LOCK_SCREEN"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_d
    const-string v6, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_0

    :cond_d
    move v5, v2

    goto :goto_0

    :sswitch_e
    const-string v6, "SYSTEM_ACTION_NOTIFICATIONS"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_0

    :cond_e
    move v5, v0

    goto :goto_0

    :sswitch_f
    const-string v6, "SYSTEM_ACTION_POWER_DIALOG"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_0

    :cond_f
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_10
    const-string v6, "SYSTEM_ACTION_HOME"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_0

    :cond_10
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_11
    const-string v6, "SYSTEM_ACTION_BACK"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto :goto_0

    :cond_11
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0, v4}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(I)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    const/16 p1, 0x16

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    goto/16 :goto_1

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    check-cast p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->animateExpandQs()V

    goto/16 :goto_1

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(ILandroid/os/Handler;Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/SystemActions;->handleHeadsetHook()V

    goto/16 :goto_1

    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    iget-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    goto/16 :goto_1

    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    const/16 p1, 0x13

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    goto/16 :goto_1

    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    const/16 p1, 0x17

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    goto/16 :goto_1

    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p2, 0x10008000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-class p2, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mRecentsOptional:Ljava/util/Optional;

    new-instance p1, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6, p1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    :try_start_0
    invoke-interface {p2, v3}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "failed to lock screen."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut()V

    goto :goto_1

    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    check-cast p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->animateExpandShade()V

    goto :goto_1

    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    :try_start_1
    invoke-interface {p0}, Landroid/view/IWindowManager;->showGlobalActions()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "failed to display power dialog."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    goto :goto_1

    :pswitch_11
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->this$0:Lcom/android/systemui/accessibility/SystemActions;

    invoke-virtual {p0, v2}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    :goto_1
    return-void

    nop

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
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
