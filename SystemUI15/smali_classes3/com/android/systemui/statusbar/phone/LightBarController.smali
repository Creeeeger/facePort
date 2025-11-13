.class public final Lcom/android/systemui/statusbar/phone/LightBarController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD:F


# instance fields
.field public mAppearance:I

.field public mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public mBouncerVisible:Z

.field public mDirectReplying:Z

.field public mForceDarkForScrim:Z

.field public mForceLightForScrim:Z

.field public mGlobalActionsVisible:Z

.field public mHasLightNavigationBar:Z

.field public mIsCustomizingForBackNav:Z

.field public final mIsDefaultDisplay:Z

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public final mModeChangedListener:Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda2;

.field public final mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public mNavbarColorManagedByIme:Z

.field public mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field public mNavigationBarMode:I

.field public mNavigationLight:Z

.field public mNavigationMode:I

.field public final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public final mObserver:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;

.field public mQsCustomizing:Z

.field public mQsExpanded:Z

.field public final mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

.field public final mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

.field public mStatusBarBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

.field public final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

.field public mStatusBarMode:I

.field public final mStatusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    if-eqz v0, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/phone/LightBarController;->NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/android/internal/view/AppearanceRegion;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BoundsPair;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/BoundsPair;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mModeChangedListener:Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda2;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mIsDefaultDisplay:Z

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    sget-boolean p9, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-eqz p9, :cond_1

    new-instance p9, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;

    invoke-direct {p9, v0}, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;-><init>(I)V

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mObserver:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;

    :cond_1
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    check-cast p3, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast p4, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->addCallback(Ljava/lang/Object;)V

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz p2, :cond_2

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {p5, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda2;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;I)V

    invoke-virtual {p5, p2}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationMode:I

    :goto_0
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_3

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "LightBarController"

    invoke-static {p7, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mIsDefaultDisplay:Z

    :cond_3
    return-void
.end method

.method public static isLight(III)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    and-int/2addr p0, p2

    if-eqz p0, :cond_2

    move p0, v0

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0
.end method


# virtual methods
.method public final animateChange()Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz p0, :cond_3

    if-eqz v1, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "LightBarController: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " mAppearance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v0, Landroid/view/InsetsFlags;

    const-string v1, "appearance"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/view/AppearanceRegion;->getAppearance()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v2

    const-string v3, " stack #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/view/AppearanceRegion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " isLight="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, " mNavigationLight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mHasLightNavigationBar="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, " mStatusBarMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNavigationBarMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, " mForceDarkForScrim="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mForceLightForScrim="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceLightForScrim:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, " mQsCustomizing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mQsExpanded="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsExpanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mBouncerVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBouncerVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mGlobalActionsVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mGlobalActionsVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mDirectReplying="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mNavbarColorManagedByIme="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, " Recent Calculation Logs:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "   "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    check-cast v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_1

    const-string v1, " StatusBarTransitionsController:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    const-string v1, " NavigationBarTransitionsController:"

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mObserver:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;->notify(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "SamsungStatusBarGrayIconHelper:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  isGrayIcon=false"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->homeIndicatorIconColor:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  homeIndicatorIconColor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "(0x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final onNavigationBarAppearanceChanged(IIZZLjava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    xor-int/2addr v3, v1

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    if-eqz p3, :cond_12

    :cond_0
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    move-object v8, v5

    check-cast v8, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v9, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v9, v9, Lcom/android/systemui/navigationbar/model/NavBarStates;->transitionMode:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2

    invoke-virtual {v8}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isNavigationBarUseThemeDefault()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    iget-object v8, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v8, v8, Lcom/android/systemui/navigationbar/model/NavBarStates;->darkMode:Z

    if-nez v8, :cond_2

    move v11, v7

    goto :goto_0

    :cond_2
    move v11, v6

    :goto_0
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-static {v1, v2, v4}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz v3, :cond_3

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_3
    move v9, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v9, v7

    :goto_2
    iput-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    if-eqz v9, :cond_5

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    if-eqz v9, :cond_5

    move v9, v7

    goto :goto_3

    :cond_5
    move v9, v6

    :goto_3
    iget-boolean v10, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    if-eqz v10, :cond_6

    if-nez v9, :cond_6

    move v10, v7

    goto :goto_4

    :cond_6
    move v10, v6

    :goto_4
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceLightForScrim:Z

    if-eqz v12, :cond_7

    if-nez v9, :cond_7

    move v9, v7

    goto :goto_5

    :cond_7
    move v9, v6

    :goto_5
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    if-nez v12, :cond_8

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsExpanded:Z

    if-eqz v12, :cond_9

    :cond_8
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBouncerVisible:Z

    if-nez v12, :cond_9

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mGlobalActionsVisible:Z

    if-eqz v12, :cond_a

    :goto_6
    move v12, v7

    goto :goto_7

    :cond_a
    move v12, v6

    :goto_7
    if-eqz v3, :cond_b

    sget-object v13, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v14, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-virtual {v13, v14}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v13}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "bottom"

    invoke-static {v13}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v13

    and-int/2addr v9, v13

    :cond_b
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz v13, :cond_c

    if-eqz v10, :cond_d

    :cond_c
    if-eqz v9, :cond_e

    :cond_d
    if-nez v12, :cond_e

    move v9, v7

    goto :goto_8

    :cond_e
    move v9, v6

    :goto_8
    iput-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    if-eqz v3, :cond_f

    check-cast v5, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v5, v5, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v5, v5, Lcom/android/systemui/navigationbar/model/NavBarStates;->regionSamplingEnabled:Z

    if-eqz v5, :cond_f

    move v6, v7

    :cond_f
    if-eq v9, v8, :cond_12

    if-eqz v3, :cond_12

    if-nez v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    if-eqz v3, :cond_10

    const-string v3, "BLACK button"

    :goto_9
    move-object v10, v3

    goto :goto_a

    :cond_10
    const-string v3, "WHITE button"

    goto :goto_9

    :goto_a
    invoke-static {v1, v2, v4}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v12

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceLightForScrim:Z

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsExpanded:Z

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/systemui/statusbar/phone/NavigationBarModel;

    move-object v9, v7

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, p5

    invoke-direct/range {v9 .. v19}, Lcom/android/systemui/statusbar/phone/NavigationBarModel;-><init>(Ljava/lang/String;ZZZZZZZZLjava/lang/String;)V

    iget-object v3, v6, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->navigationBarModel:Lcom/android/systemui/statusbar/phone/NavigationBarModel;

    if-eqz v3, :cond_11

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarModel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_11
    iput-object v7, v6, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->navigationBarModel:Lcom/android/systemui/statusbar/phone/NavigationBarModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateNavigationBar "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SamsungLightBarControlHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iput v1, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    iput v2, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    move/from16 v1, p4

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    return-void
.end method

.method public final onPowerSaveChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    return-void
.end method

.method public final onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZZZ)V
    .locals 7

    array-length v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_1

    if-nez v1, :cond_1

    aget-object v5, p1, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Lcom/android/internal/view/AppearanceRegion;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v3

    or-int/2addr v1, v5

    add-int/2addr v4, v3

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mIsCustomizingForBackNav:Z

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_3

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus([Lcom/android/internal/view/AppearanceRegion;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mIsCustomizingForBackNav:Z

    if-eqz v1, :cond_4

    iget p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelperKt;->$r8$clinit:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onStatusBarAppearanceChanged() -"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  sbModeChanged:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, ", statusBarMode:"

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, ", barState:"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ", isKeyguardShowing:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, ", navbarColorManagedByIme:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p1

    :goto_2
    if-ge v2, p2, :cond_3

    aget-object p3, p1, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    goto :goto_2

    :cond_3
    const-string p1, ")"

    const-string p2, "SamsungLightBarControlHelper"

    invoke-static {v1, p1, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    return-void
.end method

.method public final reevaluate()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mIsDefaultDisplay:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZZZ)V

    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reevaluate: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarAppearanceChanged(IIZZLjava/lang/String;)V

    return-void
.end method

.method public final start()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    check-cast v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;->defaultDisplay:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->statusBarAppearance:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final updateNavigation()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mObserver:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;->notify(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationMode:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNavigationButtonsForcedVisible:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    :cond_2
    return-void
.end method

.method public final updateStatus([Lcom/android/internal/view/AppearanceRegion;)V
    .locals 8

    array-length v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/android/internal/view/AppearanceRegion;->getAppearance()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    const/16 v7, 0x8

    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/view/AppearanceRegion;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->grayIconChangedCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->access$getMView$p$s1936973844(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f0a0163

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/battery/BatteryMeterView;

    iput-boolean v2, p1, Lcom/android/systemui/battery/BatteryMeterView;->mIsGrayColor:Z

    iget-object p1, p1, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    iput-boolean v2, p1, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->shouldShowGrayIcon:Z

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    if-eqz p1, :cond_5

    if-nez v0, :cond_4

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v4, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v5, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v4

    const-class v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v6, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v5, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez p1, :cond_3

    if-nez v4, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    const-string p0, "SKIP updateStatus (white icon) dreaming:"

    const-string v0, ", keyguardVisible:"

    const-string v1, ", goingToSleep:"

    invoke-static {p0, v0, v1, p1, v4}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "LightBarController"

    invoke-static {p0, v5, p1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void

    :cond_4
    check-cast v3, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->needGrayIcon:Z

    iput-boolean v3, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->iconColorChanged:Z

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->needGrayIcon:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    const-string v2, "WHITE icon"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->updateStatusBarModel(Ljava/lang/String;ILjava/util/ArrayList;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v4, 0x1

    if-ne p1, v0, :cond_6

    check-cast v3, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->needGrayIcon:Z

    iput-boolean v5, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->iconColorChanged:Z

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->needGrayIcon:Z

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->setIconsDarkArea(Ljava/util/ArrayList;)V

    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v2

    invoke-virtual {p1, v4, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    const-string v2, "BLACK icon"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->updateStatusBarModel(Ljava/lang/String;ILjava/util/ArrayList;I)V

    goto :goto_1

    :cond_6
    check-cast v3, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->needGrayIcon:Z

    iput-boolean v5, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->iconColorChanged:Z

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->needGrayIcon:Z

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->setIconsDarkArea(Ljava/util/ArrayList;)V

    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v2

    invoke-virtual {p1, v4, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    const-string v2, "BLACK magic"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->updateStatusBarModel(Ljava/lang/String;ILjava/util/ArrayList;I)V

    :goto_1
    return-void
.end method
