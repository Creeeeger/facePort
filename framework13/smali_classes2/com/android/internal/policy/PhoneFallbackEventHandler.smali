.class public Lcom/android/internal/policy/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneFallbackEventHandler$WindowManagerHolder;,
        Lcom/android/internal/policy/PhoneFallbackEventHandler$UndefinedSettingNames;
    }
.end annotation


# static fields
.field private static final blacklist AFTER_KEYGUARD_GONE:Ljava/lang/String; = "afterKeyguardGone"

.field private static final blacklist CLASS_NAME_MESSAGING:Ljava/lang/String; = "com.android.mms.ui.ConversationComposer"

.field private static final blacklist COMPONENT_NAME_CAMERA:Ljava/lang/String; = "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field private static final blacklist LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field private static final blacklist PACKAGE_NAME_MESSAGING:Ljava/lang/String; = "com.samsung.android.messaging"

.field private static final blacklist RESERVE_BATTERY_MODE_KEY_TOAST:I = 0x1

.field private static blacklist TAG:Ljava/lang/String; = null

.field private static final blacklist XCOVER_TOP_KEY_TYPE_LONG_PRESS:I = 0x1

.field private static final blacklist XCOVER_TOP_KEY_TYPE_NONE:I = -0x1

.field private static final blacklist XCOVER_TOP_KEY_TYPE_SHORT_PRESS:I


# instance fields
.field blacklist mAudioManager:Landroid/media/AudioManager;

.field greylist mContext:Landroid/content/Context;

.field private blacklist mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field blacklist mKeyguardManager:Landroid/app/KeyguardManager;

.field blacklist mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private blacklist mPressType:I

.field blacklist mSearchManager:Landroid/app/SearchManager;

.field blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field greylist mView:Landroid/view/View;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 72
    const-string v0, "PhoneFallbackEventHandler"

    sput-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPressType:I

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method

.method private blacklist getApplicationInfo(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 651
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 652
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 653
    return-object v3

    .line 656
    :cond_0
    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "Can not start activity because app is not added in reserveBatteryMode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :try_start_0
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 659
    :catch_0
    move-exception v1

    .line 660
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 662
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v3
.end method

.method private blacklist getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 645
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private blacklist getToastString(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;
    .locals 4
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "resId"    # I

    .line 638
    if-nez p1, :cond_0

    .line 639
    const/4 v0, 0x0

    return-object v0

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 507
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventAsSystemService(Landroid/view/KeyEvent;)V

    .line 508
    return-void
.end method

.method private blacklist handleVolumeKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 502
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 504
    return-void
.end method

.method private blacklist isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z
    .locals 1
    .param p1, "dispatcher"    # Landroid/view/KeyEvent$DispatcherState;

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0
.end method

.method private blacklist isReserveBatteryMode()Z
    .locals 6

    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 527
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_DOWNLOADABLE_RESERVE_BATTERY_MODE:Z

    const-string v2, "enable_reserve_max_mode"

    const-string v3, "reserve_battery_on"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 528
    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 530
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    .line 528
    :goto_0
    return v4

    .line 532
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_RESERVE_BATTERY_MODE:Z

    if-eqz v1, :cond_3

    .line 533
    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 535
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    .line 533
    :goto_1
    return v4

    .line 538
    :cond_3
    return v5
.end method

.method private blacklist isUserSetupComplete()Z
    .locals 3

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private blacklist isXCoverKeyOnLockScreen(I)Z
    .locals 4
    .param p1, "keyCode"    # I

    .line 686
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 687
    const/16 v1, 0x437

    if-ne p1, v1, :cond_0

    .line 688
    const-string/jumbo v1, "xcover_top_key_on_lockscreen"

    goto :goto_0

    .line 689
    :cond_0
    const-string v1, "active_key_on_lockscreen"

    :goto_0
    const/4 v2, -0x3

    .line 686
    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v3, v1

    :cond_1
    return v3
.end method

.method private blacklist launchCamera()V
    .locals 4

    .line 699
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 700
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    const-string v2, "isSecure"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 702
    const-string v1, "isQuickLaunchMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 703
    const-string v1, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 704
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 706
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 710
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 711
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 710
    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->requestWaitingForOccluding(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 712
    :catch_0
    move-exception v1

    .line 713
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 714
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 717
    :cond_0
    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 721
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 724
    goto :goto_2

    .line 722
    :catch_1
    move-exception v1

    .line 723
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity to launch Camera."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 727
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    .line 728
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 730
    :cond_1
    return-void
.end method

.method private blacklist launchUserDefinedApp(II)Z
    .locals 6
    .param p1, "pressType"    # I
    .param p2, "keyCode"    # I

    .line 555
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xcover key press type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v0, 0x0

    .line 559
    .local v0, "info":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 560
    .local v2, "windowManager":Landroid/view/IWindowManager;
    packed-switch p1, :pswitch_data_0

    .line 570
    return v1

    .line 566
    :pswitch_0
    const/4 v3, 0x4

    invoke-interface {v2, v3, p2}, Landroid/view/IWindowManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v3

    move-object v0, v3

    .line 567
    goto :goto_0

    .line 562
    :pswitch_1
    const/4 v3, 0x3

    invoke-interface {v2, v3, p2}, Landroid/view/IWindowManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 563
    nop

    .line 574
    .end local v2    # "windowManager":Landroid/view/IWindowManager;
    :goto_0
    goto :goto_1

    .line 572
    :catch_0
    move-exception v2

    .line 573
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not read keyCustomizeEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    if-eqz v0, :cond_7

    iget-object v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-nez v2, :cond_0

    goto :goto_2

    .line 580
    :cond_0
    iget v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 581
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "xcover/top key action of info is wrong"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return v1

    .line 585
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 586
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_2

    .line 587
    sget-object v3, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "xcover/top key componentName is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return v1

    .line 591
    :cond_2
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isXCoverKeyOnLockScreen(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 593
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchCamera()V

    .line 595
    :cond_4
    return v3

    .line 598
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 600
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_RESERVE_BATTERY_MODE:Z

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isReserveBatteryMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 601
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->showToastIfNeeded(Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 603
    return v3

    .line 606
    :cond_6
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    const/high16 v4, 0x10200000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 608
    invoke-direct {p0, v1, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startActivityForXCoverTopKey(Landroid/content/Intent;I)V

    .line 609
    return v3

    .line 577
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_7
    :goto_2
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "xcover/top key info is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist showToastIfNeeded(Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "keyToastMode"    # I

    .line 613
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 618
    :cond_0
    const/4 v0, 0x0

    .line 619
    .local v0, "toastString":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 621
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getApplicationInfo(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const v3, 0x1040b85

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getToastString(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;

    move-result-object v0

    .line 623
    nop

    .line 628
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 629
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 631
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 632
    const/4 v1, 0x1

    return v1

    .line 634
    :cond_1
    return v1

    .line 614
    .end local v0    # "toastString":Ljava/lang/String;
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName or intent is empty. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist startActivityForXCoverTopKey(Landroid/content/Intent;I)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "keyCode"    # I

    .line 666
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivityForXCoverTopKey keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isXCoverKeyOnLockScreen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 670
    .local v0, "fillInIntent":Landroid/content/Intent;
    const/4 v1, 0x1

    const-string v2, "afterKeyguardGone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 671
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0xc000000

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 674
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 675
    .end local v0    # "fillInIntent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_0

    .line 678
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v2, "No activity to launch on XCover Key."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 683
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 108
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 109
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 111
    .local v1, "keyCode":I
    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 114
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method blacklist getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method blacklist getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method blacklist getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 496
    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method blacklist getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method blacklist getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method blacklist isFactoryMode()Z
    .locals 2

    .line 745
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 746
    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 747
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 752
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 748
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "Block launchUserDefinedApp because of Factory binary, test mode or Factory app."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v0, 0x1

    return v0
.end method

.method greylist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 18
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 124
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 126
    .local v4, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    const/high16 v0, 0x800000

    const-string v5, "android.intent.action.MAIN"

    const/high16 v6, 0x10000000

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_8

    .line 314
    :sswitch_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v0, :cond_16

    .line 315
    :cond_0
    if-eqz v4, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    goto/16 :goto_8

    .line 319
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 320
    .local v0, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    .line 321
    .local v5, "longPress":Z
    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    .line 323
    .local v6, "isTracking":Z
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v9, :cond_2

    .line 324
    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onKeyDown, keycode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " repeatCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isLongPress="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isTracking="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_2
    if-nez v0, :cond_3

    .line 329
    invoke-virtual {v4, v3, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 330
    iput v7, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPressType:I

    goto :goto_0

    .line 331
    :cond_3
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 332
    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 333
    iget-object v9, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 334
    invoke-direct {v1, v8, v2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(II)Z

    .line 338
    :cond_4
    :goto_0
    return v8

    .line 260
    .end local v0    # "repeatCount":I
    .end local v5    # "longPress":Z
    .end local v6    # "isTracking":Z
    :sswitch_1
    if-eqz v4, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-gtz v5, :cond_16

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 262
    goto/16 :goto_8

    .line 265
    :cond_5
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 266
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "com.samsung.android.messaging"

    const-string v9, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 270
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "No activity to launch mms ConversationComposer."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return v8

    .line 239
    .end local v5    # "intent":Landroid/content/Intent;
    :sswitch_2
    if-eqz v4, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-gtz v9, :cond_16

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 241
    goto/16 :goto_8

    .line 244
    :cond_6
    const-string v7, "android.intent.category.APP_EMAIL"

    invoke-static {v5, v7}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 246
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    :try_start_1
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    goto :goto_2

    .line 250
    :catch_1
    move-exception v0

    .line 251
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "No activity to launch email"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    return v8

    .line 302
    .end local v5    # "intent":Landroid/content/Intent;
    :sswitch_3
    if-eqz v4, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_16

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 304
    goto/16 :goto_8

    .line 306
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 307
    return v8

    .line 281
    :sswitch_4
    if-eqz v4, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_16

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 283
    goto/16 :goto_8

    .line 286
    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 287
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 289
    const-string v0, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v6, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :try_start_2
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 294
    goto :goto_3

    .line 292
    :catch_2
    move-exception v0

    .line 293
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "No activity to launch launcher app list."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_3
    return v8

    .line 202
    .end local v5    # "intent":Landroid/content/Intent;
    :sswitch_5
    invoke-direct {v1, v4}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 203
    goto/16 :goto_8

    .line 205
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 206
    invoke-virtual {v4, v3, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 207
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 208
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 209
    .local v5, "config":Landroid/content/res/Configuration;
    iget v0, v5, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v8, :cond_b

    iget v0, v5, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_d

    .line 211
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 214
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    :try_start_3
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 218
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 222
    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 223
    return v8

    .line 224
    :catch_3
    move-exception v0

    .line 227
    .end local v9    # "intent":Landroid/content/Intent;
    goto :goto_4

    .line 228
    :cond_c
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not dispatching SEARCH long press because user setup is in progress."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v5    # "config":Landroid/content/res/Configuration;
    :cond_d
    :goto_4
    goto/16 :goto_8

    .line 147
    :sswitch_6
    invoke-direct {v1, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 148
    return v8

    .line 178
    :sswitch_7
    invoke-direct {v1, v4}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 179
    goto/16 :goto_8

    .line 181
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 182
    invoke-virtual {v4, v3, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_5

    .line 183
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 184
    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 186
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 188
    new-instance v0, Landroid/content/Intent;

    const/4 v5, 0x0

    const-string v7, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v0, v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    iget-object v9, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v0

    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 193
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_5

    .line 194
    :cond_10
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "Not dispatching CAMERA long press because user setup is in progress."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_11
    :goto_5
    return v8

    .line 130
    :sswitch_8
    invoke-direct {v1, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleVolumeKeyEvent(Landroid/view/KeyEvent;)V

    .line 131
    return v8

    .line 152
    :sswitch_9
    invoke-direct {v1, v4}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 153
    goto :goto_8

    .line 155
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 156
    invoke-virtual {v4, v3, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_7

    .line 157
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 158
    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 160
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 163
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    :try_start_4
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 168
    goto :goto_6

    .line 166
    :catch_4
    move-exception v0

    .line 167
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    .line 169
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_6
    goto :goto_7

    .line 170
    :cond_14
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "Not starting call activity because user setup is in progress."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_15
    :goto_7
    return v8

    .line 344
    :cond_16
    :goto_8
    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_9
        0x18 -> :sswitch_8
        0x19 -> :sswitch_8
        0x1b -> :sswitch_7
        0x4f -> :sswitch_6
        0x54 -> :sswitch_5
        0x55 -> :sswitch_6
        0x56 -> :sswitch_6
        0x57 -> :sswitch_6
        0x58 -> :sswitch_6
        0x59 -> :sswitch_6
        0x5a -> :sswitch_6
        0x5b -> :sswitch_6
        0x7e -> :sswitch_6
        0x7f -> :sswitch_6
        0x82 -> :sswitch_6
        0xa4 -> :sswitch_8
        0xde -> :sswitch_6
        0x3ea -> :sswitch_4
        0x3ee -> :sswitch_3
        0x3f0 -> :sswitch_2
        0x3f5 -> :sswitch_1
        0x3f7 -> :sswitch_0
        0x437 -> :sswitch_0
    .end sparse-switch
.end method

.method greylist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 354
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 357
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 360
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 364
    :cond_1
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 429
    :sswitch_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v2, :cond_6

    .line 430
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isFactoryMode()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 431
    goto/16 :goto_2

    .line 434
    :cond_3
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_4

    .line 435
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp, keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " press="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPressType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event.isCanceled()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 436
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_4
    iget v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPressType:I

    if-nez v2, :cond_6

    .line 439
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPressType:I

    .line 440
    invoke-direct {p0, v2, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(II)Z

    .line 443
    :cond_5
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPressType:I

    .line 446
    :cond_6
    return v1

    .line 386
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 387
    return v1

    .line 391
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 392
    goto :goto_2

    .line 394
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 398
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 400
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchCamera()V

    goto :goto_0

    .line 402
    :cond_8
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Not starting camera activity because user setup is in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_9
    :goto_0
    return v1

    .line 368
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 369
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleVolumeKeyEvent(Landroid/view/KeyEvent;)V

    .line 371
    :cond_a
    return v1

    .line 412
    :sswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 413
    goto :goto_2

    .line 415
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 416
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 417
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_1

    .line 419
    :cond_c
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Not starting call activity because user setup is in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_d
    :goto_1
    return v1

    .line 450
    :cond_e
    :goto_2
    const/4 v1, 0x0

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_2
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_3
        0xde -> :sswitch_1
        0x3f7 -> :sswitch_0
        0x437 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    .line 104
    return-void
.end method

.method public blacklist setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 99
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 100
    return-void
.end method

.method greylist startCallActivity()V
    .locals 4

    .line 455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    goto :goto_0

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method
