.class public final Lcom/android/systemui/navigationbar/NavigationModeController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceProvisionedChanged()V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SETUP_WIZARD:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mDeviceProvisioned:Z

    if-eq v1, v0, :cond_4

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mDeviceProvisioned:Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->getOverlayPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/navigationbar/NavigationModeController;->isGestureDefault()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {}, Lcom/android/systemui/navigationbar/NavigationModeController;->isGestureDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.android.internal.systemui.navbar.gestural"

    goto :goto_1

    :cond_1
    const-string v3, "com.android.internal.systemui.navbar.threebutton"

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/navigationbar/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v4

    const/4 v5, -0x2

    if-ne v4, v1, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "onDeviceProvisionedChanged set to targetPackage by current settings: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "NavigationModeController"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_DEVICE_PROVISIONED_COMPLETE:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    invoke-virtual {p0, v5, v1, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->setModeOverlay(ILcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDeviceProvisionedChanged;

    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mDeviceProvisioned:Z

    invoke-direct {v1, v3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDeviceProvisionedChanged;-><init>(Z)V

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v0, v1, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    move v2, v1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;

    invoke-direct {v1, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;-><init>(Z)V

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateTaskbarAvailable;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateTaskbarAvailable;-><init>()V

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_4
    return-void
.end method
