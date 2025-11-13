.class public final Lcom/android/keyguard/KeyguardSecPatternViewController$4;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisableDeviceWhenReachMaxFailed()V
    .locals 3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->disableDevicePermanently$1()V

    return-void
.end method

.method public final onDisableProfileWhenReachMaxFailed()V
    .locals 4

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardSecPatternViewController"

    const-string v1, "disableProfilePermanently"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContainerIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isPersona(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isSecureFolder(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "knox.container.proxy.POLICY_ADMIN_LOCK"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
