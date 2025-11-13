.class public final Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mOverlayManager:Landroid/content/om/IOverlayManager;

.field public mRunnable:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "overlay"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mOverlayManager:Landroid/content/om/IOverlayManager;

    return-void
.end method


# virtual methods
.method public final getGestureOverlayPackageName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_gesture_detail_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "navigation_bar_gesture_hint"

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

.method public final setInteractionMode()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.internal.systemui.navbar.threebutton"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->getGestureOverlayPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPackageName() : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavigationBarOverlayInteractor"

    invoke-static {v2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode(Ljava/lang/String;)V

    return-void
.end method

.method public final setInteractionMode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mRunnable:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->mRunnable:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor$$ExternalSyntheticLambda0;

    const-wide/16 p0, 0x12c

    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
