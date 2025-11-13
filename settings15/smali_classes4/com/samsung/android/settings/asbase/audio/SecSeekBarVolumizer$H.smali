.class public final Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$H;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$H;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mLastProgress:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-boolean v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mMuted:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mMuted:Z

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mCallback:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$3;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->isZenMuted()Z

    move-result v1

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    iget-boolean v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mMuted:Z

    if-ne v2, p1, :cond_0

    iget-boolean v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mZenMuted:Z

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mMuted:Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mZenMuted:Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->updateSeekBar()V

    :cond_2
    return-void
.end method
