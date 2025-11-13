.class public Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView$ClickListener;
.implements Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$TurnOnClickListener;
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActivityState:I

.field public mBackButton:Landroid/widget/RelativeLayout;

.field public mContext:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

.field public final mDeviceStateCallback:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;

.field public mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public mFlashLightHelpText:Landroid/widget/TextView;

.field public mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

.field public mFlashLightPresentationController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

.field public mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

.field public mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

.field public mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field public mHelpViewTextCounter:I

.field public mIsFlexMode:Z

.field public mLastEvent:J

.field public mLongPress:Z

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

.field public mShowHelpViewTextPrefs:Landroid/content/SharedPreferences;

.field public mSubRoomPresentationView:Landroid/widget/FrameLayout;

.field public mSubScreen:I

.field public mSubroomFlashLightUtil:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mHelpViewTextCounter:I

    iput-boolean v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLongPress:Z

    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    iput-boolean v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mIsFlexMode:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLastEvent:J

    new-instance v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;-><init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mDeviceStateCallback:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;

    return-void
.end method


# virtual methods
.method public final finishFlashLightActivity()V
    .locals 2

    const-string v0, "SubroomFlashLightSettingsActivity"

    const-string v1, "finishFlashLightActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final getActivityState()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getActivityState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    const-string v2, "SubroomFlashLightSettingsActivity"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    return p0
.end method

.method public final isValidKey(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLastEvent:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x46

    cmp-long p0, p1, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->finishFlashLightActivity()V

    :cond_0
    const-string p1, "SubroomFlashLightSettingsActivity"

    const-string v0, "onCreate: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d047e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iput-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mContext:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    new-instance v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubroomFlashLightUtil:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;

    const v0, 0x7f0a0c5d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mContext:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v2, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mContext:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mDeviceStateCallback:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v3, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mContext:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x710

    goto :goto_0

    :cond_1
    const/16 v2, 0x700

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-static {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightPresentationController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightPresentationController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    iput-object p0, p1, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string v0, "ShowDifferentHelpViewText"

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mShowHelpViewTextPrefs:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubroomFlashLightUtil:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;

    iget-object v0, p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    iget-object v0, p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    iget-object v1, p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mBackButton:Landroid/widget/RelativeLayout;

    iget-object v1, p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightHelpText:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    iput-object p0, p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;->mListener:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView$ClickListener;

    iput-object p0, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;->mListener:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$TurnOnClickListener;

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    const-string v0, "SubroomFlashLightSettingsActivity"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$2;-><init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightPresentationController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    iput v2, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    iget-object v2, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v3, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mDeviceStateCallback:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;

    invoke-virtual {v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    invoke-static {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->isValidKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SubroomFlashLightSettingsActivity"

    const-string p1, "onKeyDown VOLUME!!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->isValidKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SubroomFlashLightSettingsActivity"

    const-string v1, "LONG PRESS!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLongPress:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->onVolumeKeyEvent(ILandroid/view/KeyEvent;)V

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->isValidKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLongPress:Z

    if-nez v0, :cond_0

    const-string v0, "SubroomFlashLightSettingsActivity"

    const-string v1, "SHORT PRESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->onVolumeKeyEvent(ILandroid/view/KeyEvent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLongPress:Z

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPause: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    const-string v2, "SubroomFlashLightSettingsActivity"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    const-string v1, "SubroomFlashLightSettingsActivity"

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final onStart()V
    .locals 6

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    const-string v3, "SubroomFlashLightSettingsActivity"

    invoke-static {v2, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->showTurnOffView()V

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x4

    if-eqz v1, :cond_2

    const-string/jumbo v1, "showTurnOnView: "

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->updateWindowFlag(Z)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mBackButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mBackButton:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "showHelpView: "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->updateWindowFlag(Z)V

    iput v5, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mBackButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightHelpText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mShowHelpViewTextPrefs:Landroid/content/SharedPreferences;

    const-string v3, "helpViewTextCount"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mHelpViewTextCounter:I

    const/4 v3, 0x3

    if-ge v1, v3, :cond_3

    const v1, 0x7f1312ef

    goto :goto_0

    :cond_3
    const v1, 0x7f1312ee

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightHelpText:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mBackButton:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130e3e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/android/systemui/qp/util/SubscreenUtil;->sendAnnouncementEvent(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QPBE2019"

    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QPBE2005"

    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final onStop()V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    const-string v2, "SubroomFlashLightSettingsActivity"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public final onVolumeKeyEvent(ILandroid/view/KeyEvent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVolumeKeyEvent: mSubScreen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    const-string v2, "SubroomFlashLightSettingsActivity"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onVolumeKeyEvent: Access Restrcicted by Talkback"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_4

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->showUnavailableMessage()V

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLastEvent:J

    iget p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    const/4 p2, 0x4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->showTurnOffView()V

    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mShowHelpViewTextPrefs:Landroid/content/SharedPreferences;

    const-string v1, "helpViewTextCount"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mHelpViewTextCounter:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mShowHelpViewTextPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mHelpViewTextCounter:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mHelpViewTextCounter:I

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    const/4 p2, 0x5

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->finishFlashLightActivity()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final showTurnOffView()V
    .locals 3

    const-string v0, "SubroomFlashLightSettingsActivity"

    const-string/jumbo v1, "showTurnOffView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->updateWindowFlag(Z)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mBackButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final updateWindowFlag(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x200080

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x200081

    and-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method
