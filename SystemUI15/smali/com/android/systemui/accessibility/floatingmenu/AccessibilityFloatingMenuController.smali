.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver$ModeChangedListener;
.implements Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver$TargetsChangedListener;


# instance fields
.field public final mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

.field public final mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

.field public final mBroadcastReceiver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$4;

.field public mBtnMode:I

.field public mBtnTargets:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public final mDesktopModeListener:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

.field public final mFoldStateListener:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$3;

.field public final mHandler:Landroid/os/Handler;

.field public mIsKeyguardVisible:Z

.field final mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/hardware/display/DisplayManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$1;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance p2, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mDesktopModeListener:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;

    new-instance p2, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$3;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFoldStateListener:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$3;

    new-instance p2, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$4;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBroadcastReceiver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$4;

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object p5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    iput-object p6, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    iput-object p7, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p8, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p9, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mIsKeyguardVisible:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    const-string p2, "desktopmode"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void
.end method


# virtual methods
.method public final destroyFloatingMenu()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;

    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-boolean v2, v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsShowing:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsShowing:Z

    iget-object v2, v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v2, v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSystemGestureExclusion()V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAccessibilityFloatingReceiver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$5;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mEditTooltipView:Lcom/android/systemui/accessibility/floatingmenu/EditTooltipView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->hide()V

    :cond_3
    :goto_0
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mOnDragEndListener:Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mDockTooltipView:Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;

    invoke-virtual {v1}, Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;->hide()V

    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$1;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mSizeContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$2;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mFadeOutContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$3;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mEnabledA11yServicesContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$4;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_1
    iput-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBroadcastReceiver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$4;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mDesktopModeListener:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final handleFloatingMenuVisibility(ILjava/lang/String;Z)V
    .locals 7

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->destroyFloatingMenu()V

    return-void

    :cond_2
    :try_start_0
    iget-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    const-string v0, "desktopmode"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p3}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p3

    if-eqz p3, :cond_3

    iget p3, p3, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    goto/16 :goto_4

    :catch_0
    :cond_3
    const/4 p3, 0x1

    if-ne p1, p3, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    const/16 p2, 0x9

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "accessibility_floating_menu_icon_type"

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, p3

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v0

    :goto_0
    invoke-virtual {p1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iget-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    const/16 v4, 0x7e8

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    const-string v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    const-string v5, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v4

    aget-object v4, v4, p3

    invoke-virtual {v3, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, p2, :cond_6

    move v3, p3

    goto :goto_1

    :cond_6
    move v3, v0

    :goto_1
    new-instance v4, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;

    invoke-direct {v4, p1, v3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    const-string p1, "android.intent.action.LOCALE_CHANGED"

    const-string v3, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-static {p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBroadcastReceiver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$4;

    invoke-virtual {v3, v4, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mDesktopModeListener:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;

    invoke-virtual {p1, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    check-cast p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-boolean v3, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsShowing:Z

    if-eqz v3, :cond_8

    goto/16 :goto_5

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-static {v3, p3}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_5

    :cond_9
    iget-boolean v4, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsShowing:Z

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    iput-boolean p3, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsShowing:Z

    iget-object v4, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, p1, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda7;

    invoke-direct {v4, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSystemGestureExclusion()V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.android.systemui.accessibility.floatingmenu.SHOW"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAccessibilityFloatingReceiver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$5;

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_2
    invoke-virtual {p1, v3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->onTargetsChanged(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "accessibility_floating_menu_fade_enabled"

    invoke-static {v1, v3, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, p3, :cond_b

    goto :goto_3

    :cond_b
    move p3, v0

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const v4, 0x3f0ccccd    # 0.55f

    const-string v5, "accessibility_floating_menu_opacity"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {p1, v1, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateOpacityWith(FZ)V

    iget-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v1, "accessibility_floating_menu_size"

    const/4 v4, -0x2

    invoke-static {p3, v1, p2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSizeType(I)V

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    new-instance p2, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mOnDragEndListener:Ljava/util/Optional;

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "accessibility_button_targets"

    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$1;

    invoke-virtual {p2, p3, v0, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mSizeContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$2;

    invoke-virtual {p2, p3, v0, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mFadeOutContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$3;

    invoke-virtual {p2, p3, v0, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, v0, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "enabled_accessibility_services"

    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mEnabledA11yServicesContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$4;

    invoke-virtual {p2, p3, v0, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mIsHideHandle:Z

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->getPosition(Landroid/content/Context;)Lcom/android/systemui/accessibility/floatingmenu/Position;

    move-result-object p2

    iget p2, p2, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageY:F

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateHideHandle(I)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->getPosition(Landroid/content/Context;)Lcom/android/systemui/accessibility/floatingmenu/Position;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateHideHandleLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    goto :goto_5

    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->destroyFloatingMenu()V

    :cond_d
    :goto_5
    return-void
.end method

.method public final init()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->getSettingsValue()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid string for  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11yButtonModeObserver"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    invoke-virtual {v1}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->getSettingsValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->addListener(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->addListener(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    sget-boolean v0, Landroid/view/accessibility/A11yRune;->A11Y_COMMON_BOOL_SUPPORT_LARGE_COVER_SCREEN_FLIP:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFoldStateListener:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$3;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public final onAccessibilityButtonModeChanged(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mIsKeyguardVisible:Z

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->handleFloatingMenuVisibility(ILjava/lang/String;Z)V

    return-void
.end method

.method public final onAccessibilityButtonTargetsChanged(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mIsKeyguardVisible:Z

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->handleFloatingMenuVisibility(ILjava/lang/String;Z)V

    return-void
.end method
