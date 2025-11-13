.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onSdpUnlocked$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $isBiometricAuthenticated:Z

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onSdpUnlocked$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onSdpUnlocked$1;->$isBiometricAuthenticated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onSdpUnlocked$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onSdpUnlocked$1;->$isBiometricAuthenticated:Z

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    const-string v2, "KnoxStateMonitorImpl"

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "unlockSdp :: Device Owner has been authenticated with biometrics"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->onBiometricsAuthenticated(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "unlockSdp :: Maybe keyguard hidden as user "

    invoke-static {v0, p0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
