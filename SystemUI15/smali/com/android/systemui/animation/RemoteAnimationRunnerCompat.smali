.class public abstract Lcom/android/systemui/animation/RemoteAnimationRunnerCompat;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FW_SHELL_TRANSITION_MERGE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "persist.wm.debug.shell_transit"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "persist.wm.enable.custom.anim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string v0, "persist.wm.enable.merge.transit"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v0, :cond_1

    const-string v0, "persist.wm.enable.merge_transfer.transit"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAnimationStart()V
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat;->onAnimationStart()V

    return-void
.end method
