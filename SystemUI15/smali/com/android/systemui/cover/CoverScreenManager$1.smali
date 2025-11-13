.class Lcom/android/systemui/cover/CoverScreenManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/cover/CoverScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLockDisabledChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {v0}, Lcom/android/systemui/cover/CoverScreenManager;->isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    const-string v1, "CoverScreenManager"

    if-nez v0, :cond_0

    const-string p0, "onLockDisabledChanged() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    instance-of v0, v0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz v0, :cond_1

    const-string v0, "onLockDisabledChanged() "

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    check-cast p0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginDisplayCover;->onLockDisabledChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 2

    const-string v0, "onUserSwitchComplete() "

    const-string v1, ", mCoverState = "

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoverScreenManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->updatePluginListener()V

    :cond_1
    return-void
.end method

.method public final onUserUnlocked()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {v0}, Lcom/android/systemui/cover/CoverScreenManager;->isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    const-string v1, "CoverScreenManager"

    if-nez v0, :cond_0

    const-string p0, "onUserUnlocked() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    instance-of v0, v0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz v0, :cond_1

    const-string v0, "onUserUnlocked() "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    check-cast p0, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginDisplayCover;->onUserUnlocked()V

    :cond_1
    :goto_0
    return-void
.end method
