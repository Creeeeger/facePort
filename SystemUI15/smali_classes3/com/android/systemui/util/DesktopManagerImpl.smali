.class public Lcom/android/systemui/util/DesktopManagerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager;


# static fields
.field private static final DEBUG:Z

.field private static final DESKTOP_DUALVIEW:I = 0x2c8

.field private static final DESKTOP_NONE:I = 0x2c6

.field private static final DESKTOP_SETTINGS_KEY_TOUCH_PAD:Ljava/lang/String; = "touchpad_enabled"

.field private static final DESKTOP_SETTINGS_METHOD_GET:Ljava/lang/String; = "getSettings"

.field private static final DESKTOP_SETTINGS_URI:Landroid/net/Uri;

.field private static final DESKTOP_STANDALONE:I = 0x2c7

.field private static final DEX_SETTINGS_URI:Landroid/net/Uri;

.field private static final ENABLE_NEW_DEX_HOME:Ljava/lang/String; = "enable_new_dex_home"

.field private static final MSG_GET_CONNECTED_DEVICES:I = 0x30000

.field private static final MSG_MASK:I = -0x10000

.field private static final MSG_REQUEST_PRIVACY_ITEM:I = 0x90000

.field private static final MSG_REQUEST_STATUS_ICONS:I = 0x80000

.field private static final MSG_REQUEST_UNLOCK:I = 0x10000

.field private static final MSG_SHIFT:I = 0x10

.field private static final MSG_SHOW_CONTROLS:I = 0x70000

.field private static final MSG_SHOW_GLOBAL_ACTION_DIALOG:I = 0x50000

.field private static final TAG:Ljava/lang/String; = "DesktopManager"


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/util/DesktopManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDesktopBinderCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;

.field private mDesktopBluetoothCallback:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$BluetoothDesktopCallback;

.field private mDesktopMode:I

.field private final mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private final mDesktopSettingsObserver:Landroid/database/ContentObserver;

.field private mDesktopStatusBarIconCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDesktopSystemUiBinderLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy;"
        }
    .end annotation
.end field

.field private mDexOccluded:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIDesktopCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

.field private mIndicatorLogger:Lcom/android/systemui/statusbar/logging/IndicatorLogger;

.field private mIsTouchpadEnabled:Z

.field private final mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private final mKeyguardViewControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy;"
        }
    .end annotation
.end field

.field public final mObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private final mSecDeviceControlsController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy;"
        }
    .end annotation
.end field

.field private mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field private final mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public static synthetic $r8$lambda$6JjhZjHZGDOX9pp-8D9GvDjP-zE(Lcom/android/systemui/util/DesktopManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->lambda$startSystemUIDesktopService$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$UBk-EG9D1BWs__8iP9SHt2emttQ(Lcom/android/systemui/util/DesktopManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->lambda$stopSystemUIDesktopService$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/systemui/util/DesktopManagerImpl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDesktopBluetoothCallback(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$BluetoothDesktopCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopBluetoothCallback:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$BluetoothDesktopCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDesktopStatusBarIconCallback(Lcom/android/systemui/util/DesktopManagerImpl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopStatusBarIconCallback:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDexOccluded(Lcom/android/systemui/util/DesktopManagerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDexOccluded:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/systemui/util/DesktopManagerImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyguardViewControllerLazy(Lcom/android/systemui/util/DesktopManagerImpl;)Ldagger/Lazy;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecDeviceControlsController(Lcom/android/systemui/util/DesktopManagerImpl;)Ldagger/Lazy;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mSecDeviceControlsController:Ldagger/Lazy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSelectedUserInteractor(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateMonitor(Lcom/android/systemui/util/DesktopManagerImpl;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsTouchpadEnabled(Lcom/android/systemui/util/DesktopManagerImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIsTouchpadEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcontrolDesktopSettingsObserver(Lcom/android/systemui/util/DesktopManagerImpl;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManagerImpl;->controlDesktopSettingsObserver(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDesktopSettingsValue(Lcom/android/systemui/util/DesktopManagerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "false"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/DesktopManagerImpl;->getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleNotifyPrivacyItemStateRequested(Lcom/android/systemui/util/DesktopManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->handleNotifyPrivacyItemStateRequested()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartSystemUIDesktopIfNeeded(Lcom/android/systemui/util/DesktopManagerImpl;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/DesktopManagerImpl;->startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDesktopMode(Lcom/android/systemui/util/DesktopManagerImpl;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManagerImpl;->updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/DesktopManagerImpl;->DEBUG:Z

    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/util/DesktopManagerImpl;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/DesktopManagerImpl;->DEX_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lcom/android/systemui/statusbar/logging/IndicatorLogger;Ldagger/Lazy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/logging/IndicatorLogger;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c6

    iput v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDexOccluded:Z

    new-instance v1, Lcom/android/systemui/util/DesktopManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/DesktopManagerImpl$1;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    new-instance v1, Lcom/android/systemui/util/DesktopManagerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/DesktopManagerImpl$2;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/systemui/util/DesktopManagerImpl$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/util/DesktopManagerImpl$3;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/util/DesktopManagerImpl$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/DesktopManagerImpl$4;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;)V

    iput-object v2, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopBinderCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;

    new-instance v2, Lcom/android/systemui/util/DesktopManagerImpl$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/DesktopManagerImpl$5;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;)V

    iput-object v2, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIDesktopCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

    new-instance v2, Lcom/android/systemui/util/DesktopManagerImpl$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/DesktopManagerImpl$6;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;)V

    iput-object v2, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mCallbacks:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/util/DesktopManagerImpl$7;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/util/DesktopManagerImpl$7;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    const-string v1, "DesktopManager"

    const-string v3, "DesktopManagerImpl started"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iput-object p5, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iput-object p7, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    iput-object p6, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p8, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIndicatorLogger:Lcom/android/systemui/statusbar/logging/IndicatorLogger;

    iput-object p9, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mSecDeviceControlsController:Ldagger/Lazy;

    const-string p2, "desktopmode"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    sget-object p3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p2, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManagerImpl;->updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/DesktopManagerImpl;->startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V

    :cond_0
    return-void
.end method

.method private controlDesktopSettingsObserver(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    iget p1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/util/DesktopManagerImpl;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static getBouncerMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "msg"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "subMsg"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "popupMsg"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_2
    return-object v0
.end method

.method private getCallers()Ljava/lang/String;
    .locals 1

    const/4 p0, 0x3

    const-string v0, " "

    invoke-static {p0, v0}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentSecurityMode()I
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    :cond_1
    sget-object v3, Lcom/android/systemui/util/DesktopManagerImpl$8;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_6

    if-eq v1, v2, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_0
    if-eq v4, v2, :cond_8

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBiometricsAuthenticatedOnLock()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    return v3

    :cond_8
    return v4
.end method

.method private getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "def"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/util/DesktopManagerImpl;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    const-string v2, "getSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "DesktopManager"

    const-string v0, "Failed to get settings"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p2
.end method

.method private static getScreenState(Z)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isScreenOn"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static getTrustState(Z)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "trust"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private handleNotifyPrivacyItemStateRequested()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "handleNotifyPrivacyItemStateRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager$Callback;->onPrivacyItemStateRequested()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isNewDexHomeEnabled()Z
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "key"

    const-string v2, "enable_new_dex_home"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "def"

    const-string v3, "false"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/util/DesktopManagerImpl;->DEX_SETTINGS_URI:Landroid/net/Uri;

    const-string v3, "getSettings"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$startSystemUIDesktopService$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$stopSystemUIDesktopService$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x28

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p2

    const/16 v0, 0x1e

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->stopSystemUIDesktopService()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p1

    const/16 p2, 0x32

    if-ne p1, p2, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->startSystemUIDesktopService()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p2

    if-ne p2, v1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->stopSystemUIDesktopService()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->startSystemUIDesktopService()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p2

    if-ne p2, v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->stopSystemUIDesktopService()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->startSystemUIDesktopService()V

    :cond_5
    :goto_0
    return-void
.end method

.method private startSystemUIDesktopService()V
    .locals 3

    const-string/jumbo v0, "startSystemUIDesktopService"

    const-string v1, "DesktopManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->getCallers()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isNewDexHomeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIDesktopCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->start(Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopBinderCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->registerCallback(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/DesktopManagerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/util/DesktopManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private stopSystemUIDesktopService()V
    .locals 3

    const-string/jumbo v0, "stopSystemUIDesktopService"

    const-string v1, "DesktopManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->getCallers()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->stop()V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopBinderCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->unregisterCallback(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/DesktopManagerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/util/DesktopManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    const/16 v0, 0x2c6

    iput v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2c8

    iput p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x2c7

    iput p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    return-void
.end method

.method public getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isDesktopBarConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    move-result p0

    return p0
.end method

.method public isDesktopMode()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    const/16 v0, 0x2c6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDualView()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    const/16 v0, 0x2c8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStandalone()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    const/16 v0, 0x2c7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTouchpadEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIsTouchpadEnabled:Z

    return p0
.end method

.method public notifyDismissKeyguard()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "notifyDismissKeyguard()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->onDismiss()V

    :cond_0
    return-void
.end method

.method public notifyKeyguardLockout(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDualView()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "notifyKeyguardLockout lockout="

    const-string v1, "DesktopManager"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->updateLockoutWarningMessage()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->onLockout(ZLandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyKeyguardLockout(ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDualView()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "notifyKeyguardLockout lockout="

    const-string v1, "  msg="

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    if-eqz p2, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  sub="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    move-object v2, p3

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  popupMsg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    move-object v1, p4

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DesktopManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p2, p3, p4}, Lcom/android/systemui/util/DesktopManagerImpl;->getBouncerMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->onLockout(ZLandroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public notifyOccluded(Z)V
    .locals 2

    const-string v0, "notifyOccluded() occluded="

    const-string v1, "DesktopManager"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->setOccluded(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDexOccluded:Z

    return-void
.end method

.method public notifyPrivacyItemsChanged(Z)V
    .locals 2

    const-string v0, "notifyPrivacyItemsChanged() visible = "

    const-string v1, " mDesktopMode = "

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DesktopManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->notifyPrivacyItemsChanged(Z)V

    :cond_0
    return-void
.end method

.method public notifyScreenState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notifyScreenState() isScreenOn="

    const-string v1, "DesktopManager"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    const/4 v0, 0x3

    invoke-static {p1}, Lcom/android/systemui/util/DesktopManagerImpl;->getScreenState(Z)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->onUpdate(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public notifyShowKeyguard()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyShowKeyguard() security mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->getCurrentSecurityMode()I

    move-result v1

    const-string v2, "DesktopManager"

    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->getCurrentSecurityMode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->onShow(I)V

    :cond_0
    return-void
.end method

.method public notifyTrustChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDualView()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyTrustChanged hasTrust="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DesktopManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    const/4 p1, 0x4

    invoke-static {p2}, Lcom/android/systemui/util/DesktopManagerImpl;->getTrustState(Z)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->onUpdate(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public notifyUpdateBouncerMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDualView()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "notifyUpdateBouncerMessage type= "

    const-string v1, "  msg="

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    if-eqz p2, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  sub="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    move-object v2, p3

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  popupMsg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    move-object v1, p4

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DesktopManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p2, p3, p4}, Lcom/android/systemui/util/DesktopManagerImpl;->getBouncerMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->onUpdate(ILandroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDesktopStatusBarIconCallback(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopStatusBarIconCallback:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAirplaneMode(ZI)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIndicatorLogger:Lcom/android/systemui/statusbar/logging/IndicatorLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAirplaneMode - visible:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",resId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/logging/IndicatorLogger;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->setAirplaneMode(ZI)V

    :cond_0
    return-void
.end method

.method public setBtTetherIcon(ZI)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIndicatorLogger:Lcom/android/systemui/statusbar/logging/IndicatorLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBtTetherIcon - visible:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",iconId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/logging/IndicatorLogger;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->setBtTetherIcon(ZI)V

    :cond_0
    return-void
.end method

.method public setConnectedDeviceListForGroup(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->setConnectedDeviceListForGroup(Landroid/os/Bundle;)V

    return-void
.end method

.method public setDesktopBluetoothCallback(Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$BluetoothDesktopCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopBluetoothCallback:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$BluetoothDesktopCallback;

    return-void
.end method

.method public setDesktopStatusBarIconCallback(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopStatusBarIconCallback:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopStatusBarIconCallback:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopStatusBarIconCallback:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMPTCPIcon(ZIII)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIndicatorLogger:Lcom/android/systemui/statusbar/logging/IndicatorLogger;

    const-string/jumbo v1, "setMPTCPIcon - visible:"

    const-string v2, ",typeId: "

    const-string v3, "gigaModeId:"

    invoke-static {v1, p2, v2, p1, v3}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",activityId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/logging/IndicatorLogger;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->setMPTCPIcon(ZIII)V

    :cond_0
    return-void
.end method

.method public setMobileIcon(ZIIIIZII)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIndicatorLogger:Lcom/android/systemui/statusbar/logging/IndicatorLogger;

    const-string/jumbo v1, "setMobileIcon - visible:"

    const-string v2, ",subId:"

    const-string v3, ",stengthId:"

    invoke-static {v1, p3, v2, p1, v3}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",typeId:"

    const-string v3, ",showTriangle:"

    invoke-static {v1, p4, v2, p5, v3}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",activityId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",roamingId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/logging/IndicatorLogger;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "visible"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "slotId"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "subId"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "strengthId"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "typeId"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "showTriangle"

    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "activityId"

    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "roamingId"

    invoke-virtual {v0, p1, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->setMobileIcon(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setWifiIcon(ZII)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIndicatorLogger:Lcom/android/systemui/statusbar/logging/IndicatorLogger;

    const-string/jumbo v1, "setWifiIcon - visible:"

    const-string v2, ",resId:"

    const-string v3, ",activityId:"

    invoke-static {v1, p2, v2, p1, v3}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/logging/IndicatorLogger;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->setWifiIcon(ZII)V

    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
