.class public final Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizer:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->postStopSample()V

    :cond_1
    :goto_0
    return-void
.end method
