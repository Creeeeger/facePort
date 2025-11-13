.class public final Lcom/android/systemui/recents/OverviewProxyService$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;

.field public final synthetic val$sysUiState:Lcom/android/systemui/model/SysUiState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$7;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$7;->val$sysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final moveFocusedTaskToStageSplit(IZ)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$7;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, p1, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p1, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$7;->val$sysUiState:Lcom/android/systemui/model/SysUiState;

    iget-wide v0, p0, Lcom/android/systemui/model/SysUiState;->mFlags:J

    const-wide/32 v2, 0x4000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->enterStageSplitFromRunningApp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "OverviewProxyService"

    const-string p1, "Unable to enter stage split from the current running app"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
