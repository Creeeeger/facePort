.class public final Lcom/android/systemui/searcle/SearcleTipPopup;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public animHelper:Lcom/android/systemui/searcle/SearcleTipAnimHelper;

.field public bubbleLayout:Landroid/widget/LinearLayout;

.field public contentLayout:Landroid/widget/LinearLayout;

.field public final context:Landroid/content/Context;

.field public final defaultDisplay:Landroid/view/Display;

.field public final handler:Landroid/os/Handler;

.field public final inputEventListener:Lcom/android/systemui/searcle/SearcleTipPopup$inputEventListener$1;

.field public inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field public isTipPopupShowing:Z

.field public layoutHelper:Lcom/android/systemui/searcle/SearcleTipLayoutHelper;

.field public navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public final onAttachStateChangeListener:Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;

.field public rootView:Lcom/android/systemui/searcle/SearcleTipView;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/searcle/SearcleTipPopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/searcle/SearcleTipPopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->context:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->handler:Landroid/os/Handler;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/WindowManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->windowManager:Landroid/view/WindowManager;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->defaultDisplay:Landroid/view/Display;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance p1, Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;)V

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->onAttachStateChangeListener:Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;

    new-instance p1, Lcom/android/systemui/searcle/SearcleTipPopup$inputEventListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/searcle/SearcleTipPopup$inputEventListener$1;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;)V

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->inputEventListener:Lcom/android/systemui/searcle/SearcleTipPopup$inputEventListener$1;

    return-void
.end method

.method public static final access$show(Lcom/android/systemui/searcle/SearcleTipPopup;)Z
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    iget-object v2, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "show isTipPopupShowing = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rootView = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearcleTipPopup"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/searcle/SearcleTipPopup;->hideImmediate()V

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    const/4 v3, 0x0

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    if-nez v1, :cond_20

    new-instance v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;

    iget-object v5, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->context:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->defaultDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v6

    invoke-static {}, Lcom/android/systemui/util/TestHelper;->isRoboUnitTest()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v4

    :goto_0
    move v7, v4

    goto :goto_1

    :cond_1
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/android/systemui/util/TestHelper;->isRoboUnitTest()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v4

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_2
    iget-object v4, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v9

    iget-object v4, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarAlignPosition()I

    move-result v10

    iget-object v4, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    const/4 v12, 0x1

    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isTaskBarEnabled$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager;)Z

    move-result v4

    if-ne v4, v12, :cond_3

    move v11, v12

    goto :goto_3

    :cond_3
    move v11, v3

    :goto_3
    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;-><init>(Landroid/content/Context;IZZZIZ)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startOpenAnimatorSet layoutHelper = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->layoutHelper:Lcom/android/systemui/searcle/SearcleTipLayoutHelper;

    iget-object v4, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    if-eqz v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "makeRootLayout remove old tipLayout = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/searcle/SearcleTipPopup;->hideImmediate()V

    :cond_4
    iget-object v4, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0359

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/android/systemui/searcle/SearcleTipView;

    if-eqz v5, :cond_5

    check-cast v4, Lcom/android/systemui/searcle/SearcleTipView;

    goto :goto_4

    :cond_5
    move-object v4, v6

    :goto_4
    iput-object v4, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "makeRootLayout tipLayout = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    if-nez v2, :cond_6

    goto/16 :goto_10

    :cond_6
    iget-object v4, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->onAttachStateChangeListener:Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v4, Lcom/android/systemui/searcle/SearcleTipPopup$makeRootLayout$1$1;

    invoke-direct {v4, v0}, Lcom/android/systemui/searcle/SearcleTipPopup$makeRootLayout$1$1;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;)V

    iput-object v4, v2, Lcom/android/systemui/searcle/SearcleTipView;->dismiss:Ljava/lang/Runnable;

    const v4, 0x7f0a0a77

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v5

    if-eqz v5, :cond_8

    const v5, 0x7f131026

    goto :goto_5

    :cond_8
    const v5, 0x7f131025

    :goto_5
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v2, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    if-eqz v2, :cond_9

    const v4, 0x7f0a0a75

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    goto :goto_7

    :cond_9
    move-object v2, v6

    :goto_7
    iput-object v2, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->bubbleLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    iget-object v9, v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->direction:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    instance-of v11, v10, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v11, :cond_a

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_8

    :cond_a
    move-object v10, v6

    :goto_8
    iget v11, v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->bubbleLayoutWidth:I

    if-eqz v10, :cond_10

    iget-object v13, v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07172a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    sget-object v14, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v14, v14, v15

    if-eq v14, v12, :cond_f

    if-eq v14, v8, :cond_e

    if-eq v14, v7, :cond_d

    const v15, 0x7f071729

    if-eq v14, v5, :cond_c

    if-eq v14, v4, :cond_b

    goto :goto_9

    :cond_b
    iput v13, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v13, v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_9

    :cond_c
    iput v13, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v13, v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_9

    :cond_d
    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_9

    :cond_e
    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_9

    :cond_f
    iput v13, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_9
    iget v13, v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->gravity:I

    iput v13, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_10
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_11

    invoke-virtual {v10, v3, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :cond_11
    iget-boolean v10, v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->isTablet:Z

    const/high16 v13, 0x40000000    # 2.0f

    iget-boolean v14, v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->isNaviBtnAndLandscape:Z

    iget-boolean v15, v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->isFoldWithMainDisplay:Z

    if-nez v10, :cond_14

    if-eqz v15, :cond_12

    goto :goto_a

    :cond_12
    if-eqz v14, :cond_14

    iget v1, v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->rotation:I

    if-ne v1, v12, :cond_13

    int-to-float v1, v11

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    goto :goto_b

    :cond_14
    :goto_a
    int-to-float v1, v11

    div-float/2addr v1, v13

    :goto_b
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    if-nez v10, :cond_16

    if-eqz v15, :cond_15

    goto :goto_c

    :cond_15
    if-eqz v14, :cond_16

    int-to-float v1, v3

    div-float/2addr v1, v13

    goto :goto_d

    :cond_16
    :goto_c
    int-to-float v1, v3

    :goto_d
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    :cond_17
    iget-object v1, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    if-eqz v1, :cond_18

    const v2, 0x7f0a0a76

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    goto :goto_e

    :cond_18
    move-object v1, v6

    :goto_e
    iput-object v1, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->bubbleLayout:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/systemui/searcle/SearcleTipPopup$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v3, v3, v9

    if-eq v3, v12, :cond_1d

    if-eq v3, v8, :cond_1c

    if-eq v3, v7, :cond_1b

    if-eq v3, v5, :cond_1a

    if-ne v3, v4, :cond_19

    sget-object v3, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->TransXYOnRTL:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    goto :goto_f

    :cond_19
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1a
    sget-object v3, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->TransXYOnLTR:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    goto :goto_f

    :cond_1b
    sget-object v3, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->TransXOnRTL:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    goto :goto_f

    :cond_1c
    sget-object v3, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->TransXOnLTR:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    goto :goto_f

    :cond_1d
    sget-object v3, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->TransY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    :goto_f
    if-eqz v2, :cond_1e

    if-eqz v1, :cond_1e

    new-instance v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;

    iget-object v14, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->context:Landroid/content/Context;

    new-instance v15, Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimHelper$1;

    invoke-direct {v15, v0}, Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimHelper$1;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;)V

    new-instance v5, Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimHelper$2;

    invoke-direct {v5, v0}, Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimHelper$2;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;)V

    move-object v13, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    move-object/from16 v18, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/systemui/searcle/SearcleTipAnimHelper;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    iget-object v1, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->showAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->hideAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v6, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->showAnimSet:Landroid/animation/AnimatorSet;

    iput-object v6, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->hideAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->bubbleLayout:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->SHOW_ANIM_BUBBLE_TRANS_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    iput-object v3, v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->animType:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    iget-object v3, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07172b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->toValue:F

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;)V

    new-instance v1, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;

    iget-object v2, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->bubbleLayout:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->SHOW_ANIM_BUBBLE_ALPHA_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    invoke-direct {v1, v2, v5}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;)V

    new-instance v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;

    iget-object v5, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->bubbleLayout:Landroid/widget/LinearLayout;

    sget-object v6, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->SHOW_ANIM_BUBBLE_SCALE_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    invoke-direct {v2, v5, v6}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;)V

    new-instance v5, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;

    iget-object v6, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->contentLayout:Landroid/widget/LinearLayout;

    sget-object v7, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->SHOW_ANIM_CONTENT_ALPHA_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;)V

    filled-new-array {v3, v1, v2, v5}, [Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;

    move-result-object v1

    iget-object v2, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->showAnimList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/searcle/SearcleTipAnimHelper$ShowAnimatorListener;

    const-string v5, "ShowAnim"

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$ShowAnimatorListener;-><init>(Lcom/android/systemui/searcle/SearcleTipAnimHelper;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->makeAnimSet([Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;Ljava/util/ArrayList;Lcom/android/systemui/searcle/SearcleTipAnimHelper$BaseAnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->showAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;

    iget-object v2, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->bubbleLayout:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->HIDE_ANIM_BUBBLE_ALPHA_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;)V

    new-instance v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;

    iget-object v3, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->bubbleLayout:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->HIDE_ANIM_BUBBLE_SCALE_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    invoke-direct {v2, v3, v5}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;)V

    new-instance v3, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;

    iget-object v5, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->contentLayout:Landroid/widget/LinearLayout;

    sget-object v6, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->HIDE_ANIM_CONTENT_ALPHA_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;)V

    filled-new-array {v1, v2, v3}, [Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;

    move-result-object v1

    iget-object v2, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->hideAnimList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/searcle/SearcleTipAnimHelper$HideAnimatorListener;

    const-string v5, "HideAnim"

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$HideAnimatorListener;-><init>(Lcom/android/systemui/searcle/SearcleTipAnimHelper;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->makeAnimSet([Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;Ljava/util/ArrayList;Lcom/android/systemui/searcle/SearcleTipAnimHelper$BaseAnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->hideAnimSet:Landroid/animation/AnimatorSet;

    iput-object v4, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->animHelper:Lcom/android/systemui/searcle/SearcleTipAnimHelper;

    :cond_1e
    iget-object v0, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->animHelper:Lcom/android/systemui/searcle/SearcleTipAnimHelper;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1f
    move v3, v12

    :cond_20
    :goto_10
    return v3
.end method


# virtual methods
.method public final hide()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    const-string v1, "hide isTipPopupShowing = "

    const-string v2, "SearcleTipPopup"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->animHelper:Lcom/android/systemui/searcle/SearcleTipAnimHelper;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->hideAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public final hideImmediate()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->bubbleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->contentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->animHelper:Lcom/android/systemui/searcle/SearcleTipAnimHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->bubbleLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->INIT_BUBBLE_PROPERTY_FIELDS:[Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    invoke-static {v3, v2}, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->initProperty([Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;[Landroid/view/View;)V

    new-array v1, v1, [Landroid/view/View;

    iget-object v0, v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->contentLayout:Landroid/widget/LinearLayout;

    aput-object v0, v1, v4

    sget-object v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->INIT_CONTENT_PROPERTY_FIELDS:[Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    invoke-static {v0, v1}, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->initProperty([Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;[Landroid/view/View;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->animHelper:Lcom/android/systemui/searcle/SearcleTipAnimHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->showAnimList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->hideAnimList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v1, v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->showAnimSet:Landroid/animation/AnimatorSet;

    iput-object v1, v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->hideAnimSet:Landroid/animation/AnimatorSet;

    :cond_2
    iput-object v1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->animHelper:Lcom/android/systemui/searcle/SearcleTipAnimHelper;

    iput-object v1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->layoutHelper:Lcom/android/systemui/searcle/SearcleTipLayoutHelper;

    iput-object v1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    iput-object v1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->bubbleLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->contentLayout:Landroid/widget/LinearLayout;

    :cond_3
    return-void
.end method

.method public final showSearcleTip(Z)V
    .locals 2

    const-string/jumbo v0, "showSearcleTip isRetryShowing = "

    const-string v1, "SearcleTipPopup"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
