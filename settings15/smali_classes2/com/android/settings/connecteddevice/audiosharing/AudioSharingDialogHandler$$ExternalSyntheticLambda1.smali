.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

.field public final synthetic f$1:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda1;->f$1:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda1;->f$1:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;->getMetricsCategory()I

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingStopDialogFragment;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingStopDialogFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x802

    goto :goto_0

    :cond_1
    instance-of v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x803

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    iget-object v1, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mContext:Landroid/content/Context;

    const/16 v2, 0x796

    iget-object v0, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method
