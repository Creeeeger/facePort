.class public Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/PluginLockMediator;
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/pluginlock/PluginLockMediator;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/pluginlock/PluginLock;",
        ">;"
    }
.end annotation


# static fields
.field private static final FACE_WIDGET:Ljava/lang/String; = "face_widget"

.field private static final INDICATION_TEXT:Ljava/lang/String; = "indication_text_view"

.field private static final LOCKSTAR_FACEWIDGET_AREA:Ljava/lang/String; = "lockstar_facewidget_area"

.field private static final NOTIFICATION_ICON_ONLY:Ljava/lang/String; = "notification_icon_only"

.field public static final TAG:Ljava/lang/String; = "PluginLockMediatorImpl"

.field private static sScreenType:I


# instance fields
.field private OFF_BECAUSE_OF_FOLD:I

.field private mBarState:I

.field private mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

.field private mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

.field private final mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field mDynamicLockData:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

.field private final mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

.field private mIsCoverAttached:Z

.field private mIsDynamicLockData:Z

.field private mIsEnabled:Z

.field private mIsLockScreenEnabled:Z

.field private mIsRotateMenuHide:Z

.field private mIsSecureWindow:Z

.field private mIsWallpaperPaused:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

.field private final mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

.field private mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

.field private mPluginContext:Landroid/content/Context;

.field private mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

.field private final mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

.field private mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

.field private final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShadeExpansionListener:Lcom/android/systemui/shade/ShadeExpansionListener;

.field private mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field private final mShortcurManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

.field private mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

.field private final mStateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

.field private mStatusBarCallback:Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;

.field private mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

.field private mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

.field private mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

.field private final mUserSwitchListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

.field private mViewMode:I

.field private mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;


# direct methods
.method public static synthetic $r8$lambda$2ySynesVuoR8z-MMz2iPJMYXDHU(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Landroid/app/SemWallpaperColors;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$setPluginWallpaperHint$7(Landroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5NXtmFQvtn0YduFCTOI3mCHWqm8(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$onBarStateChanged$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FfmQe-1ceeyAMCcMwaj2X4isPo0(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$onViewModeChanged$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$N7KhQPFRV45eI8R2K9YB9caWuRQ(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$updateOverlayUserTimeout$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$OzIJQwnhUoo5xiZLZmLosPhj8HY(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$onBarStateChanged$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZM55HsMOGSS0bUUbe_t9A5ZPesY(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$setLockscreenTimer$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$kak-ik6AOL3BZNeE_YyYS59qi0w(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$updateBiometricRecognition$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$nUB9ZPBD77M30Dj1vIvFpHBriM8(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$updateWindowSecureState$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$xM0CsGvHpQIaWuMTkFb_XZeuHpw(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$setScreenOrientation$8(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetOFF_BECAUSE_OF_FOLD(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->OFF_BECAUSE_OF_FOLD:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBarState(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBarState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBasicListener(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDozeParameters(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsLockScreenEnabled(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsLockScreenEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsWallpaperPaused(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsWallpaperPaused:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserSwitchListenerList(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUtils(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/PluginLockUtils;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmViewMode(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mViewMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsCoverAttached(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsCoverAttached:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsLockScreenEnabled(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsLockScreenEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$misLockScreenEnabled(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isLockScreenEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendWallpaperCommand(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sendWallpaperCommand(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/samsung/systemui/splugins/SPluginManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;Ldagger/Lazy;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockUtils;Lcom/android/systemui/shade/ShadeExpansionStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/samsung/systemui/splugins/SPluginManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/pluginlock/PluginLockUtils;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsEnabled:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    iput-boolean v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsLockScreenEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsSecureWindow:Z

    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsCoverAttached:Z

    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsWallpaperPaused:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->OFF_BECAUSE_OF_FOLD:I

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShadeExpansionListener:Lcom/android/systemui/shade/ShadeExpansionListener;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    iput-object p4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p6, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-interface {p7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcurManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iput-object p8, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iput-object p9, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    iput-object p10, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShadeExpansionListener:Lcom/android/systemui/shade/ShadeExpansionListener;

    invoke-virtual {p10, p2}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "## PluginLockMediatorImpl ##, "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PluginLockMediatorImpl"

    invoke-virtual {p9, p3, p2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance p2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    invoke-direct {p2, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    new-instance p2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    invoke-direct {p2, p1, v0, p8}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getItemLocation(I)Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, p0, 0x3

    if-le v0, p1, :cond_0

    const-string/jumbo p0, "top"

    return-object p0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    if-le v0, p1, :cond_1

    const-string p0, "background"

    return-object p0

    :cond_1
    if-lt p0, p1, :cond_2

    const-string p0, "bottom"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLockStarItemLocationInfoToInt(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "top"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_0

    :sswitch_1
    const-string v3, "background"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "bottom"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v1

    :pswitch_1
    return v0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :cond_3
    :goto_1
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_2
        -0x4f67aad2 -> :sswitch_1
        0x1c155 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCoverAttached()Z
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isLockScreenEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$onBarStateChanged$5(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onBarStateChanged(I)V

    return-void
.end method

.method private synthetic lambda$onBarStateChanged$6()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBarState:I

    invoke-interface {v0, p0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onBarStateChanged(I)V

    return-void
.end method

.method private synthetic lambda$onViewModeChanged$0(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->onViewModeChanged(I)V

    return-void
.end method

.method private synthetic lambda$setLockscreenTimer$1(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->onScreenTimeoutChanged(J)V

    return-void
.end method

.method private synthetic lambda$setPluginWallpaperHint$7(Landroid/app/SemWallpaperColors;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->onViewModePageChanged(Landroid/app/SemWallpaperColors;)V

    return-void
.end method

.method private synthetic lambda$setScreenOrientation$8(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->onScreenOrientationChangeRequired(Z)V

    return-void
.end method

.method private synthetic lambda$updateBiometricRecognition$4(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->updateBiometricRecognition(Z)V

    return-void
.end method

.method private synthetic lambda$updateOverlayUserTimeout$3(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->updateOverlayUserTimeout(Z)V

    return-void
.end method

.method private synthetic lambda$updateWindowSecureState$2(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->updateWindowSecureState(Z)V

    return-void
.end method

.method private publishLockStarState()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "publishLockStarState mIsDynamicLockData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PluginLockMediatorImpl"

    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "publishLockStarState : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    iget-boolean v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-interface {v2, v4}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onLockStarEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "publishLockStarState Exception: "

    invoke-static {v4, v2, v3}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "face_widget"

    invoke-direct {p0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getLockStarItemLocationInfoToInt(Ljava/lang/String;)I

    move-result v1

    :goto_2
    const-string p0, "lockstar_facewidget_area"

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void
.end method

.method private sendWallpaperCommand(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsWallpaperPaused:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "samsung.android.wallpaper.pause"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "samsung.android.wallpaper.resume"

    :goto_0
    const-string/jumbo v0, "sender"

    const-string v1, "quick_panel_wallpaper"

    invoke-static {v0, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, v0}, Landroid/app/WallpaperManager;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public addDump(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v0, "PluginLockMediatorImpl"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentScreenType()I
    .locals 0

    sget p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sScreenType:I

    return p0
.end method

.method public getDynamicLockData()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-direct {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    iget-object v9, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const-string v10, "PluginLockMediatorImpl"

    if-ge v8, v9, :cond_8

    iget-object v9, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getDynamicLockData() listener: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_7

    instance-of v11, v9, Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v12, 0x1

    if-eqz v11, :cond_2

    invoke-interface {v9, v7}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object v2, v11

    :cond_0
    invoke-interface {v9, v12}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_1

    move-object v5, v9

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "getDynamicLockData() bottom: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "getDynamicLockData() bottom_land: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    instance-of v11, v9, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;

    if-eqz v11, :cond_4

    invoke-interface {v9, v12}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_3

    move-object v3, v9

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "getDynamicLockData() faceWidget: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    instance-of v11, v9, Lcom/android/keyguard/SecLockIconViewController;

    if-eqz v11, :cond_7

    invoke-interface {v9, v7}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_5

    move-object v4, v11

    :cond_5
    invoke-interface {v9, v12}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_6

    move-object v6, v9

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "getDynamicLockData() lockIcon: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "getDynamicLockData() lockIcon_land: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    move-result-object v0

    const-string/jumbo v8, "shortcut_info"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setShortcutInfo(Ljava/lang/String;)V

    const-string/jumbo v8, "shortcut_enable"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setVisibility(Ljava/lang/Integer;)V

    const-string/jumbo v8, "shortcut_bottom"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setPaddingBottom(Ljava/lang/Integer;)V

    const-string/jumbo v9, "shortcut_side"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setPaddingSide(Ljava/lang/Integer;)V

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setPaddingBottomLand(Ljava/lang/Integer;)V

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setPaddingSideLand(Ljava/lang/Integer;)V

    const-string/jumbo v8, "shortcut_size"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setImageSize(Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getFingerPrintData()Lcom/android/systemui/pluginlock/model/FingerPrintData;

    move-result-object v0

    const-string v8, "finger_print_height"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/FingerPrintData;->setHeight(Ljava/lang/Integer;)V

    const-string v8, "finger_print_image_size"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/FingerPrintData;->setImageSize(Ljava/lang/Integer;)V

    const-string v8, "finger_print_margin"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/FingerPrintData;->setPaddingBottom(Ljava/lang/Integer;)V

    const-string v8, "finger_print_enabled"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/FingerPrintData;->setEnabled(Ljava/lang/Boolean;)V

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object v0

    const-string v8, "nio_gravity"

    const/16 v9, 0x11

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v11, "nio_gravity_land"

    invoke-virtual {v3, v11, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "noti_type"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v13, v12, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/android/systemui/pluginlock/model/NotificationData;->setNotiType(Ljava/lang/Integer;)V

    const-string v13, "noti_visibility"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/android/systemui/pluginlock/model/NotificationData;->setVisibility(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object v13

    const-string v14, "noti_top"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->setTopY(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object v13

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->setTopYLand(Ljava/lang/Integer;)V

    const-string v13, "noti_number"

    if-nez v12, :cond_9

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object v15

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->setNotiCardNumbers(Ljava/lang/Integer;)V

    :cond_9
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setGravity(Ljava/lang/Integer;)V

    const-string v15, "nio_start"

    const v9, 0x800003

    if-ne v8, v9, :cond_a

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v8

    invoke-virtual {v3, v15, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setPaddingStart(Ljava/lang/Integer;)V

    goto :goto_2

    :cond_a
    const v9, 0x800005

    if-ne v8, v9, :cond_b

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v8

    invoke-virtual {v3, v15, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setPaddingEnd(Ljava/lang/Integer;)V

    :cond_b
    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v8

    invoke-virtual {v2, v14, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setTopY(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v8

    invoke-virtual {v5, v14, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setTopYLand(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setGravityLand(Ljava/lang/Integer;)V

    const-string v8, "nio_start_land"

    const v9, 0x800003

    if-ne v11, v9, :cond_c

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v9

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setPaddingStartLand(Ljava/lang/Integer;)V

    goto :goto_3

    :cond_c
    const v9, 0x800005

    if-ne v11, v9, :cond_d

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v9

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setPaddingEndLand(Ljava/lang/Integer;)V

    :cond_d
    :goto_3
    if-nez v12, :cond_e

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object v0

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->setNotiCardNumbersLand(Ljava/lang/Integer;)V

    :cond_e
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    move-result-object v0

    const-string v8, "help_text_height"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setHeight(Ljava/lang/Integer;)V

    const-string v8, "help_text_margin"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setPaddingBottom(Ljava/lang/Integer;)V

    const-string v9, "help_text_visibility"

    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setVisibility(Ljava/lang/Integer;)V

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setPaddingBottomLand(Ljava/lang/Integer;)V

    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setVisibilityLand(Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    const-string v5, "clock_type"

    const/4 v8, 0x2

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setClockType(I)V

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    const-string v5, "clock_gravity"

    const/16 v8, 0x11

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setGravity(Ljava/lang/Integer;)V

    const-string v2, "clock_visibility"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setVisibility(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    const-string v5, "clock_scale"

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setScale(F)V

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    const-string v5, "clock_side_padding"

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setPaddingStart(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setPaddingEnd(Ljava/lang/Integer;)V

    const-string v2, "clock_top"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setTopY(Ljava/lang/Integer;)V

    const-string v2, "clock_bottom"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setBottomY(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    const-string v9, "clock_gravity_land"

    const/16 v11, 0x11

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setGravityLand(Ljava/lang/Integer;)V

    const-string v2, "clock_visibility_land"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setVisibilityLand(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    const-string v9, "clock_scale_land"

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setScaleLand(F)V

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    const-string v8, "clock_side_padding_land"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setPaddingStartLand(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setPaddingEndLand(Ljava/lang/Integer;)V

    const-string v2, "clock_top_land"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setTopYLand(Ljava/lang/Integer;)V

    const-string v2, "clock_bottom_land"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setBottomYLand(Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object v0

    const-string v2, "music_top"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setTopY(Ljava/lang/Integer;)V

    const-string v2, "music_height"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setHeight(Ljava/lang/Integer;)V

    const-string v2, "music_width"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setWidth(Ljava/lang/Integer;)V

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setPaddingStart(Ljava/lang/Integer;)V

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setPaddingEnd(Ljava/lang/Integer;)V

    const-string v2, "music_gravity"

    const/16 v5, 0x11

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setGravity(Ljava/lang/Integer;)V

    const-string v2, "music_visibility"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setVisibility(Ljava/lang/Integer;)V

    const-string v2, "music_top_land"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setTopYLand(Ljava/lang/Integer;)V

    const-string v2, "music_height_land"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setHeightLand(Ljava/lang/Integer;)V

    const-string v2, "music_width_land"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setWidthLand(Ljava/lang/Integer;)V

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setPaddingStartLand(Ljava/lang/Integer;)V

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setPaddingEndLand(Ljava/lang/Integer;)V

    const-string v2, "music_gravity_land"

    const/16 v5, 0x11

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setGravityLand(Ljava/lang/Integer;)V

    const-string v2, "music_visibility_land"

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setVisibilityLand(Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getLockIconData()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    move-result-object v0

    const-string v2, "lock_icon_visibility"

    invoke-virtual {v4, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->setVisibility(Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getLockIconData()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    move-result-object v0

    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->setVisibilityLand(Ljava/lang/Integer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getDynamicLockData() dlsData: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const-string v4, "none"

    if-eqz v3, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    const-string/jumbo v5, "top"

    const/4 v6, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_1
    move v0, v6

    goto :goto_2

    :sswitch_0
    const-string v0, "indication_text_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :sswitch_1
    const-string v0, "notification_icon_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :sswitch_2
    const-string v1, "face_widget"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    move-result-object v0

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getPaddingBottomLand()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    sub-int/2addr p1, v0

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getPaddingBottom()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :goto_4
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    :cond_6
    const-string v4, "bottom"

    goto/16 :goto_5

    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData;->getNotiType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_8

    if-eqz v3, :cond_7

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getTopYLand()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getTopY()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_8
    move-object v4, v5

    goto :goto_5

    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p1

    if-eqz p1, :cond_8

    if-eqz v3, :cond_9

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopYLand()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopY()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    move-result-object v4

    :goto_5
    return-object v4

    :cond_a
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getLockStarItemLocationInfo Data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", group: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginLockMediatorImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :sswitch_data_0
    .sparse-switch
        -0x5847f19a -> :sswitch_2
        0x143f195e -> :sswitch_1
        0x6cbdc754 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPluginHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    return-object p0
.end method

.method public getPluginLockSwipe()Lcom/android/systemui/pluginlock/component/PluginLockSwipe;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    return-object p0
.end method

.method public getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    return-object p0
.end method

.method public getSecureMode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->getSecureMode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public goToLockedShade()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->goToLockedShade()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isDynamicLockEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHomeWallpaperRequired(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getWallpaperType(I)I

    move-result p0

    const/16 p1, 0xa

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRotateMenuHide()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isRotateMenuHide mIsEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsRotateMenuHide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    const-string v2, "PluginLockMediatorImpl"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecure()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->isSecure()Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isTouchAndHoldToEditEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isSupportTouchAndHoldToEdit()Z

    move-result p0

    return p0
.end method

.method public isTouchConsumablePosition(FF)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->isTouchConsumablePosition(FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWindowSecured()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsSecureWindow:Z

    return p0
.end method

.method public makeExpandedInvisible()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->makeExpandedInvisible()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAodTransitionEnd()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onAodTransitionEnd()V

    :cond_0
    return-void
.end method

.method public onBarStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBarState:I

    invoke-interface {v0, p0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onBarStateChanged(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onBarStateChanged(I)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBarState:I

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onBarStateChanged(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onDataCleared()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getCallback()Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onDataCleared()V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getCallback()Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onDataCleared()V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->clearWallpaper()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public onEventReceived(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onEventReceived(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onFolderStateChanged(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onFolderStateChanged(ZZ)V

    :cond_0
    return-void
.end method

.method public onNowBarItemExpanded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onNowBarItemExpanded(Z)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onPluginConnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;)V
    .locals 2

    const-string v0, "PluginLockMediatorImpl"

    const-string v1, "onPluginConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;->onPluginConnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onPluginDisconnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;I)V
    .locals 2

    const-string v0, "PluginLockMediatorImpl"

    const-string v1, "onPluginDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;->onPluginDisconnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;I)V

    :cond_0
    return-void
.end method

.method public onReady()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getCallback()Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onReady()V

    return-void
.end method

.method public onRootViewAttached(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "onRootViewAttached: "

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    if-eqz v0, :cond_0

    const-class v2, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    const/4 v3, 0x1

    invoke-interface {v0, p0, v2, v3}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "onRootViewAttached: mSPluginManager is null."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;->onRootViewAttached(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_1
    const-string p0, "onRootViewAttached: mSPluginListener is null."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onRootViewDetached()V
    .locals 2

    const-string v0, "PluginLockMediatorImpl"

    const-string v1, "onRootViewDetached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/samsung/systemui/splugins/SPluginManager;->removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V

    :cond_0
    return-void
.end method

.method public onUserActivity()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUserActivity()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 4

    const-string v0, "onViewModeChanged mode: "

    const-string v1, ", mStateListenerList.size(): "

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mViewMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mViewMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PluginLockMediatorImpl"

    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mViewMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mViewMode:I

    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isWindowSecured()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->updateWindowSecureState(Z)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onViewModeChanged(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {v1, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->onViewModeChanged(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShadeExpansionListener:Lcom/android/systemui/shade/ShadeExpansionListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShadeExpansionListener:Lcom/android/systemui/shade/ShadeExpansionListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->removeExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onWallpaperChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onWallpaperChanged(I)V

    :cond_0
    return-void
.end method

.method public recoverItem(I)V
    .locals 2

    const-string v0, "recoverItem() type:"

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->recover()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->recover()V

    :cond_2
    :goto_0
    return-void
.end method

.method public registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 5

    const-string v0, "PluginLockMediatorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerStateCallback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    monitor-enter v0

    move v1, v2

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v1, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;

    if-eqz v1, :cond_3

    const-string v1, "PluginLockMediatorImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerStateCallback isLockStar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    xor-int/lit8 v1, v1, 0x1

    check-cast p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;

    invoke-virtual {p1, v1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->onLockStarEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->loadMusicData()V

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerStatusBarCallback(Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBarCallback:Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;

    return-void
.end method

.method public registerUpdateMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isCoverAttached()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsCoverAttached:Z

    return-void
.end method

.method public registerWindowListener(Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    return-void
.end method

.method public removeStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestDismissKeyguard(Landroid/content/Intent;)V
    .locals 6

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v4, :cond_1

    instance-of v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->isNoUnlockNeed(Ljava/lang/String;)Z

    move-result v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    :cond_3
    const-string v2, "requestDismissKeyguard isNoUnlockNeedApp: "

    invoke-static {v2, v3}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "PluginLockMediatorImpl"

    invoke-static {v5, v2, v4}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_5

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    instance-of v2, p1, Lcom/android/systemui/shade/NotificationPanelViewController;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onUnNeedLockAppStarted(Landroid/content/ComponentName;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    const/high16 v3, 0xc000000

    invoke-static {v2, v0, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_PLUGIN_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method

.method public resetConfigs()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resetConfig mIsDynamicLockData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setScreenOrientation(ZZ)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->updateOverlayUserTimeout(Z)V

    :cond_2
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onViewModeChanged(I)V

    iget-boolean v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    if-nez v3, :cond_3

    invoke-interface {v2, v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onLockStarEnabled(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    return-void
.end method

.method public resetDynamicLock()V
    .locals 2

    const-string v0, "PluginLockMediatorImpl"

    const-string v1, "resetDynamicLock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->resetDynamicLock()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetDynamicLockData(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const-string v0, "resetDynamicLockData() reconnectReq: "

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->reset(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->reset(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->reset(Z)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcurManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->reset(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->reset(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    if-eqz v0, :cond_7

    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_LSM:Z

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->resetAll()V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->reset(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->reset(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;->reset(Z)V

    :cond_a
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onPluginLockReset()V

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method public resetItem(IZ)V
    .locals 3

    const-string/jumbo v0, "resetItem() type:"

    const-string v1, ", reconnectReq:"

    const-string v2, "PluginLockMediatorImpl"

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->reset(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->reset(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDynamicLockData(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDynamicLockData:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->setDynamicLockData(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockMediatorImpl"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsEnabled:Z

    return-void
.end method

.method public setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setInstanceState, screen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object v1, v0

    move-object v3, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockMediator;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->registerStateCallback(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->registerStateCallback(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {v0, v1, p2, v2, p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockMediator;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {v0, v1, p2, v2, p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockMediator;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBarCallback:Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->setCallback(Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    if-nez v0, :cond_8

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mPluginContext:Landroid/content/Context;

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mPluginContext:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method public setKeyguardBasicListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    return-void
.end method

.method public setKeyguardSPluginListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

    return-void
.end method

.method public setKeyguardUserSwitchListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;)V
    .locals 4

    const-string v0, "PluginLockMediatorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setKeyguardUserSwitchListener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListenerList:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setLockscreenEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsLockScreenEnabled:Z

    return-void
.end method

.method public setLockscreenTimer(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->onScreenTimeoutChanged(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setNoSensorConsumer(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setNoSensorConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPluginLock() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPluginLockItem(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setPluginLockItem() mDynamicLockData:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDynamicLockData:Ljava/lang/String;

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDynamicLockData:Ljava/lang/String;

    const-class v2, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[parse, apply] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPluginLockItem() currData:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPluginLockItem() newData:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[basic, apply] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[clock, apply] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[music, apply] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[notification, apply] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[shortcut, apply] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    :try_start_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[statusbar, apply] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->publishLockStarState()V

    :cond_0
    return-void
.end method

.method public setPluginWallpaper(IIILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setPluginWallpaper(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPluginWallpaper(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/4 v1, 0x0

    const-string v2, ", screen: "

    const/4 v3, -0x2

    const-string v4, "PluginLockMediatorImpl"

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    if-eq p2, v3, :cond_1

    const/16 v5, 0xa

    if-lt p2, v5, :cond_4

    :cond_1
    const-string/jumbo v3, "setPluginWallpaper() Home, type: "

    invoke-static {p2, p1, v3, v2, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsCoverAttached:Z

    if-nez p1, :cond_2

    const-string/jumbo p0, "setPluginWallpaper() cover is not attached"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/16 p1, 0x14

    if-lt p2, p1, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    if-eqz v2, :cond_7

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->setWallpaper(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "setPluginWallpaper() Lock, type: "

    invoke-static {p2, p1, v0, v2, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_5

    const/4 p1, -0x3

    if-ne p2, p1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->resetAll()V

    goto :goto_1

    :cond_5
    if-ne p2, v3, :cond_6

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mPluginContext:Landroid/content/Context;

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->update(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setPluginWallpaper(IILjava/lang/String;)V
    .locals 1

    sget v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sScreenType:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setPluginWallpaper(IIILjava/lang/String;)V

    return-void
.end method

.method public setPluginWallpaperHint(ILjava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p2, :cond_2

    const-string/jumbo v0, "white"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Landroid/app/SemWallpaperColors$Builder;

    invoke-direct {p2}, Landroid/app/SemWallpaperColors$Builder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/SemWallpaperColors$Builder;->setColorType(I)Landroid/app/SemWallpaperColors$Builder;

    invoke-virtual {p2}, Landroid/app/SemWallpaperColors$Builder;->build()Landroid/app/SemWallpaperColors;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string v0, "black"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Landroid/app/SemWallpaperColors$Builder;

    invoke-direct {p2}, Landroid/app/SemWallpaperColors$Builder;-><init>()V

    invoke-virtual {p2, p1}, Landroid/app/SemWallpaperColors$Builder;->setColorType(I)Landroid/app/SemWallpaperColors$Builder;

    invoke-virtual {p2}, Landroid/app/SemWallpaperColors$Builder;->build()Landroid/app/SemWallpaperColors;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/app/SemWallpaperColors;->fromXml(Ljava/lang/String;)Landroid/app/SemWallpaperColors;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_5

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isHomeWallpaperRequired(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getCurrentScreen()I

    move-result v0

    if-ne v0, p1, :cond_5

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsCoverAttached:Z

    if-nez p1, :cond_4

    const-string p0, "PluginLockMediatorImpl"

    const-string/jumbo p1, "setPluginWallpaperHint() cover is not attached"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->setWallpaperHints(Landroid/app/SemWallpaperColors;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->updateHint()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setWallpaperHints(Landroid/app/SemWallpaperColors;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->updateHint()V

    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mViewMode:I

    if-ne v0, p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz p1, :cond_7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p2}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->onViewModePageChanged(Landroid/app/SemWallpaperColors;)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Landroid/app/SemWallpaperColors;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public setPluginWallpaperHint(Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sScreenType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setPluginWallpaperHint(ILjava/lang/String;)V

    return-void
.end method

.method public setPluginWallpaperState(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string/jumbo v2, "wallpaper_state_changed"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "screen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "state"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onEventReceived(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setQsExpansion(F)V
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsWallpaperPaused:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sendWallpaperCommand(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsWallpaperPaused:Z

    if-eqz v1, :cond_1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sendWallpaperCommand(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsEnabled:Z

    if-eqz p0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->setQsExpansion(F)V

    :cond_2
    return-void
.end method

.method public setScreenOrientation(ZZ)V
    .locals 3

    const-string/jumbo v0, "setScreenOrientation noSensor: "

    const-string v1, ", hideMenu : "

    const-string v2, "PluginLockMediatorImpl"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "setScreenOrientation ignore, video wallpaper"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "setScreenOrientation ignore, tablet"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    iput-boolean p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->onScreenOrientationChangeRequired(Z)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;ZI)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public setScreenTypeChanged(I)V
    .locals 1

    const-string/jumbo p0, "setScreenTypeChanged() type: "

    const-string v0, "PluginLockMediatorImpl"

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, p1

    :goto_1
    sput p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sScreenType:I

    invoke-static {p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setScreenTypeChanged(I)V

    invoke-static {p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->setScreenTypeChanged(I)V

    return-void
.end method

.method public unregisterUpdateMonitor()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public updateBiometricRecognition(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->updateBiometricRecognition(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateDynamicLockData(Ljava/lang/String;)V
    .locals 7

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/4 v1, 0x0

    const-string v2, "PluginLockMediatorImpl"

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sScreenType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string/jumbo p0, "updateDynamicLockData skip"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string/jumbo v0, "updateDynamicLockData dynamicLockData: "

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, v3, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/model/DynamicLockData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[parse, update] "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateDynamicLockData() currData:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", newData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[basic, update] "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[clock, update] "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[music, update] "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[notification, update] "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    :try_start_5
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[statusbar, update] "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    :try_start_6
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[shortcut, update] "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->publishLockStarState()V

    :cond_2
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->updateDynamicLockData(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4
    return-void
.end method

.method public updateOverlayUserTimeout(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->updateOverlayUserTimeout(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateWindowSecureState(Z)V
    .locals 3

    const-string/jumbo v0, "updateWindowSecureState() : "

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsSecureWindow:Z

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->updateWindowSecureState(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
