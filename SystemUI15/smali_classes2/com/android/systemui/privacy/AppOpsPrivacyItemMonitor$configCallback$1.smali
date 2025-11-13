.class public final Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyConfig$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;->this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFlagChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;->this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    iget-object v1, v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    iget-boolean v3, v2, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    iput-boolean v3, v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->micCameraAvailable:Z

    iget-boolean v2, v2, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    iput-boolean v2, v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->locationAvailable:Z

    invoke-virtual {v0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->setListeningStateLocked()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;->this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->dispatchOnPrivacyItemsChanged()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final onFlagLocationChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;->onFlagChanged()V

    return-void
.end method

.method public final onFlagMicCameraChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;->onFlagChanged()V

    return-void
.end method
