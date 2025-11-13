.class public final Lcom/android/settings/notification/VolumeSeekBarPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onMuted(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-boolean v1, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuted:Z

    if-ne v1, p1, :cond_0

    iget-boolean v1, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mZenMuted:Z

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    iput-boolean p1, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuted:Z

    iput-boolean p2, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mZenMuted:Z

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mListener:Lcom/android/settings/notification/VolumeSeekBarPreference$Listener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference$Listener;->onUpdateMuteState()V

    :cond_1
    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object p1, p1, Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged()V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->formatStateDescription(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mOverrideSeekBarStateDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public final onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onSampleStarting()V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/preference/SeekBarVolumizer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onStartTrackingTouch(Landroid/preference/SeekBarVolumizer;)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p1, Lcom/android/settings/notification/VolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v1, 0x35

    iget-object p1, p1, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v1, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 p1, 0x35

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method
