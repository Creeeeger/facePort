.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;Landroid/content/Context;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState$$ExternalSyntheticLambda2;->f$2:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/WaitForSyncState$$ExternalSyntheticLambda2;->f$2:Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const v2, 0x7f1404d2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const-class v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeScanFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)V

    const/16 p0, 0x831

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
