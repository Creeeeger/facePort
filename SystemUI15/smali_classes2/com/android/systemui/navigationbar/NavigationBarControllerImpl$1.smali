.class public final Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayReady(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mIsLargeScreen:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->removeNavigationBar(I)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mHasNavBar:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method

.method public final resetScheduleAutoHide()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iget-object v2, v1, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "NavigationBar"

    const-string v3, "resetAutoHide()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setNavigationBarLumaSamplingEnabled(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setNavigationBarShortcut requestClass : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteViews : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priority : "

    const-string v2, "NavigationBarControllerImpl"

    invoke-static {v0, p3, v1, p4, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;-><init>(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    return-void
.end method

.method public final showPinningEnterExitToast(Z)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v1

    const v2, 0x7f1310e5

    const v3, 0x7f1310e6

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, v1, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, v4}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v4}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-boolean v0, v5, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z

    if-eqz v0, :cond_2

    invoke-virtual {v5, p1}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->showPinningEnterExitToast(Z)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED_HARD_KEY:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v5, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, v4}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v4}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final showPinningEscapeToast()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->showPinningEscapeToast()V

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->showPinningEscapeToast()V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED_HARD_KEY:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->showEscapeToast(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method
