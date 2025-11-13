.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo p1, "seq"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "SafeUIKeyguardViewMediator"

    const-string v0, "received DELAYED_KEYGUARD_ACTION with seq = "

    const-string v1, ", mDelayedShowingSequence = "

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget v1, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-static {v1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedShowingSequence:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-string p1, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "seq"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDelayedProfileShowingSequence:I

    if-ne v1, p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    :goto_0
    return-void
.end method
