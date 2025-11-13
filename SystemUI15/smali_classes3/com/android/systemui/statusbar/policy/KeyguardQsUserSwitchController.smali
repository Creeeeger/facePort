.class public final Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field public mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;

.field public mBarState:I

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$2;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

.field public final mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public mIsKeyguardShowing:Z

.field public final mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

.field public final mResources:Landroid/content/res/Resources;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

.field public mUserAvatarViewWithBackground:Landroid/view/View;

.field public final mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 9

    move-object v0, p0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$2;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;

    const-string v1, "KeyguardQsUserSwitchController"

    const-string v2, "New KeyguardQsUserSwitchController"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mResources:Landroid/content/res/Resources;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object v3, p5

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    new-instance v8, Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/KeyguardVisibilityHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;ZLcom/android/systemui/log/LogBuffer;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public final getUserIconHeight()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    return-void
.end method

.method public final onInit()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    const-string v0, "KeyguardQsUserSwitchController"

    const-string v1, "onInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a05d4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a05d5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarViewWithBackground:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$5;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    const-string v0, "KeyguardQsUserSwitchController"

    const-string v1, "onViewAttached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;->onChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updateCurrentUser()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updateKeyguardShowing(Z)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    const-string v0, "KeyguardQsUserSwitchController"

    const-string v1, "onViewDetached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final updateCurrentUser()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getItem(I)Lcom/android/systemui/user/data/source/UserRecord;

    move-result-object v3

    iget-boolean v5, v3, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    if-eqz v5, :cond_0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    invoke-virtual {v3, v0}, Lcom/android/systemui/user/data/source/UserRecord;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    if-nez p0, :cond_2

    if-eqz v0, :cond_2

    move v1, v4

    :cond_2
    return v1
.end method

.method public updateKeyguardShowing(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mIsKeyguardShowing:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mIsKeyguardShowing:Z

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateKeyguardShowing: mIsKeyguardShowing="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mIsKeyguardShowing:Z

    const-string v2, " forceViewUpdate="

    const-string v3, "KeyguardQsUserSwitchController"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mIsKeyguardShowing:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updateView$3()V

    goto :goto_2

    :cond_3
    const-string p1, "clearAvatar"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method public final updatePosition(IIZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    int-to-float p2, p2

    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v0, v1, p2, v2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Landroid/widget/FrameLayout;

    sget-object p2, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {p0, p2, p1, v2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    return-void
.end method

.method public final updateView$3()V
    .locals 6

    const-string v0, "KeyguardQsUserSwitchController"

    const-string/jumbo v1, "updateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    iget-object v2, v2, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f13011e

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    const v2, 0x7f1300ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/user/data/source/UserRecord;->resolveId()I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, -0x2710

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/systemui/user/data/source/UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f07055f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    new-instance v3, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    iget-object v4, v4, Lcom/android/systemui/user/data/source/UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v2}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_5

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    iget-boolean v2, v2, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    const v3, 0x7f080821

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_3
    move-object v3, v2

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    const v3, 0x7f080823

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f06019b

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    const v2, 0x7f0814aa

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 p0, 0x1

    aput-object v3, v4, p0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setDrawableWithBadge(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
