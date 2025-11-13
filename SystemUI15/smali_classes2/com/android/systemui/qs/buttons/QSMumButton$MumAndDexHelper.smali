.class public final Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# instance fields
.field public final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field public mBaseUserAdapter:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;

.field public final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field public mIsDexEnablingOrEnabled:Z

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field private final mSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public final synthetic this$0:Lcom/android/systemui/qs/buttons/QSMumButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "two_call_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "two_sms_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string/jumbo v1, "two_account"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string/jumbo v1, "two_register"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string/jumbo v1, "user_switcher_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-boolean v2, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mIsDexEnablingOrEnabled:Z

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object p1, p1, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mUserManager:Landroid/os/UserManager;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->isMumDeactivated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/systemui/util/DesktopManager;->unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mBaseUserAdapter:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final init()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->isMumDeactivated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mBaseUserAdapter:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;

    return-void
.end method

.method public final isMumDeactivated()Z
    .locals 5

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_LDU_BRANDING:Z

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isShopDemo(Landroid/content/Context;)Z

    move-result p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "isMumDeactivated: !result["

    const-string v3, "] isLduBranding["

    const-string v4, "] isShopDemo["

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QSMumButton"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    iget-object v1, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMainHandler:Landroid/os/Handler;

    const-string v2, "QSMumButton"

    if-nez v1, :cond_0

    const-string p0, "MumAndDexHelper, onDesktopModeStateChanged(): mMainHandler is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "MumAndDexHelper, onDesktopModeStateChanged()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MumAndDexHelper, onUserInfoChanged(name:"

    const-string v1, ", userAccount:"

    const-string v2, ")"

    invoke-static {v0, p1, v1, p3, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "QSMumButton"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    if-eqz p2, :cond_1

    iget-object v0, p3, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isGuestUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/android/settingslib/drawable/UserIconDrawable;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    iget-object v0, p3, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, p3, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    const v1, 0x1010030

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-object v0, p3, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p3, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13011e

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mIsDexEnablingOrEnabled:Z

    if-eq v0, p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MumAndDexHelper updateDesktopModeState() mIsDexEnablingOrEnabled:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mIsDexEnablingOrEnabled:Z

    const-string v2, ">>"

    const-string v3, "QSMumButton"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mIsDexEnablingOrEnabled:Z

    new-instance p1, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final updateMumSwitchVisibility()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    iget-object v2, v1, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->isMumDeactivated()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    goto/16 :goto_7

    :cond_1
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_MUM_TWO_PHONE:Z

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isTwoPhoneRegistered()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->hasTwoPhoneAccount()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget-object v5, v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mBaseUserAdapter:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getCount()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v3

    goto :goto_1

    :cond_4
    move v5, v3

    move v6, v5

    :goto_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "HasSeenMultiUser"

    invoke-static {v7, v8, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isUserSwitcherSettingOn()Z

    move-result v8

    if-nez v2, :cond_6

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    move v9, v3

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v9, 0x1

    :goto_3
    iget-object v10, v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mUserManager:Landroid/os/UserManager;

    const-string v11, "no_user_switch"

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v10

    iget-object v11, v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v11}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v11

    iget-object v12, v1, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v12

    iget-object v13, v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    if-eqz v13, :cond_7

    invoke-interface {v13}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    move v13, v3

    :goto_4
    iget-object v14, v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v14, :cond_8

    check-cast v14, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v14, v14, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v14, :cond_8

    iget-boolean v14, v14, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x1

    goto :goto_5

    :cond_8
    move v14, v3

    :goto_5
    iget-object v15, v1, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v15

    if-eqz v9, :cond_a

    iget-boolean v3, v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mIsDexEnablingOrEnabled:Z

    if-nez v3, :cond_a

    if-nez v11, :cond_a

    if-nez v12, :cond_a

    if-nez v13, :cond_a

    if-eqz v14, :cond_a

    if-nez v15, :cond_a

    iget-boolean v3, v1, Lcom/android/systemui/qs/buttons/QSMumButton;->mExpanded:Z

    if-nez v3, :cond_9

    iget-boolean v3, v1, Lcom/android/systemui/qs/buttons/QSMumButton;->mPanelSplitEnabled:Z

    if-eqz v3, :cond_a

    iget-boolean v3, v1, Lcom/android/systemui/qs/buttons/QSMumButton;->isExpandedOnLockScreen:Z

    if-eqz v3, :cond_a

    :cond_9
    if-nez v10, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_6
    const-string v4, "needToBeVisible() result: "

    move/from16 v16, v10

    const-string v10, " [MumSetting: "

    move/from16 v17, v15

    const-string v15, " = (TwoPhoneSetting: "

    invoke-static {v4, v10, v15, v3, v9}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " || (somethingInDetail("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " && Pref: "

    const-string v5, " && Settings: "

    invoke-static {v4, v6, v2, v7, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")), !DEX-(DeviceState: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    xor-int/lit8 v5, v12, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", !DesktopManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v5, v13, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", !mIsDexEnablingOrEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mIsDexEnablingOrEnabled:Z

    xor-int/2addr v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") Panel-mExpanded: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Lcom/android/systemui/qs/buttons/QSMumButton;->mExpanded:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", !isEmergencyMode: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v0, v11, 0x1

    const-string v5, ", isUserEnabled: "

    const-string v6, ", !isKioskModeEnabled: "

    invoke-static {v4, v0, v5, v14, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    xor-int/lit8 v0, v17, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", !isDisallowUserSwitch = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v0, v16, 0x1

    const-string v2, "QSMumButton"

    invoke-static {v4, v0, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :goto_7
    const/16 v0, 0x8

    if-eqz v3, :cond_b

    const/4 v2, 0x0

    goto :goto_8

    :cond_b
    move v2, v0

    :goto_8
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v3, :cond_c

    const/4 v0, 0x0

    :cond_c
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, v1, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, v1, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    return-void
.end method
