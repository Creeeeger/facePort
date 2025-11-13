.class public final Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

.field public static final SAFE_DEBUG:Z


# instance fields
.field public final context:Landroid/content/Context;

.field public final displayController:Lcom/android/wm/shell/common/DisplayController;

.field public final displayId:I

.field public enabled:Z

.field public gestureDetected:Z

.field public final gestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

.field public inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private settingsCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final tmpBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "userdebug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/util/SettingsHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->context:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->displayId:I

    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->tmpBounds:Landroid/graphics/Rect;

    new-instance p2, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$settingsCallBack$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$settingsCallBack$1;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->settingsCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_MW_ENTER_SPLIT_USING_GESTURE:Z

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->isSystem()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->Companion:Lcom/android/systemui/SystemUIAppComponentFactoryBase$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/systemui/SystemUIInitializer;->getWMComponent()Lcom/android/systemui/dagger/WMComponent;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/systemui/dagger/WMComponent;->getDisplayController()Ljava/util/Optional;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/wm/shell/common/DisplayController;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->displayController:Lcom/android/wm/shell/common/DisplayController;

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/SystemUIInitializer;->getWMComponent()Lcom/android/systemui/dagger/WMComponent;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getSplitScreenController()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    :cond_1
    new-instance p2, Landroid/view/TwoFingerSwipeGestureDetector;

    new-instance p3, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$1;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;)V

    const-string v0, "EdgeBack"

    invoke-direct {p2, p1, p3, v0}, Landroid/view/TwoFingerSwipeGestureDetector;-><init>(Landroid/content/Context;Ljava/util/function/Function;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->gestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    return-void
.end method


# virtual methods
.method public final getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public final onNavBarAttached()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->settingsCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "open_in_split_screen_view"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public final onNavBarDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->settingsCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSplitGestureEnabled()Z

    move-result v0

    and-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->enabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->enabled:Z

    :cond_0
    return-void
.end method
