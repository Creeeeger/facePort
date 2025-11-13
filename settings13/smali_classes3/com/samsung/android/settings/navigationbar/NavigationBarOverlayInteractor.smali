.class public Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;
.super Ljava/lang/Object;
.source "NavigationBarOverlayInteractor.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$JNdPr6CD2zdcVrsTPcQFsiOzuqc(Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->lambda$setInteractionMode$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mContext:Landroid/content/Context;

    const-string p1, "overlay"

    .line 36
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mOverlayManager:Landroid/content/om/IOverlayManager;

    return-void
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "com.android.internal.systemui.navbar.threebutton"

    return-object p0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->getGestureOverlayPackageName()Ljava/lang/String;

    move-result-object p0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPackageName() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationBarOverlayInteractor"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private synthetic lambda$setInteractionMode$0(Ljava/lang/String;)V
    .locals 5

    const-string v0, "NavigationBarOverlayInteractor"

    .line 49
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_0

    const-string v1, "com.android.internal.systemui.navbar.threebutton"

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->getGestureOverlayPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    const-string v1, "setInteractionMode() hard key model three button mode"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v1, p1, v2}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInteractionMode() packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "com.android.internal.systemui.navbar.gestural"

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.samsung.internal.systemui.navbar.gestural_no_hint"

    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.samsung.internal.systemui.navbar.sec_gestural_no_hint"

    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->setSensitivityInsetScale(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred while set interaction mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public getGestureOverlayPackageName()Ljava/lang/String;
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_detail_type"

    .line 93
    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDefaultSettingsValue(Ljava/lang/String;)I

    move-result v2

    .line 92
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "navigation_bar_gesture_hint"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ne v0, v2, :cond_2

    if-eqz p0, :cond_1

    const-string p0, "com.android.internal.systemui.navbar.gestural"

    goto :goto_1

    :cond_1
    const-string p0, "com.samsung.internal.systemui.navbar.gestural_no_hint"

    :goto_1
    return-object p0

    :cond_2
    if-eqz p0, :cond_3

    const-string p0, "com.samsung.internal.systemui.navbar.sec_gestural"

    goto :goto_2

    :cond_3
    const-string p0, "com.samsung.internal.systemui.navbar.sec_gestural_no_hint"

    :goto_2
    return-object p0
.end method

.method public getInteractionMode()I
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_navBarInteractionMode"

    const-string v2, "integer"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 72
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInteractionMode() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationBarOverlayInteractor"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setInteractionMode()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode(Ljava/lang/String;)V

    return-void
.end method

.method public setInteractionMode(Ljava/lang/String;)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mRunnable:Ljava/lang/Runnable;

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
