.class public abstract Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG_DISABLE_REMOTE_UNLOCK_ANIMATION:Z

.field public static final IS_SAFE_MODE_ENABLED:Z

.field public static aodAppearWallpaperOpeningTarget:Landroid/view/RemoteAnimationTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "debug.keyguard.disable_unlock_animation"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;->DEBUG_DISABLE_REMOTE_UNLOCK_ANIMATION:Z

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;->IS_SAFE_MODE_ENABLED:Z

    return-void
.end method
