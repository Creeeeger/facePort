.class Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$2;
.super Ljava/lang/Object;
.source "SecVolumeSeekBarPreference.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmVolumizer(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Landroid/preference/SeekBarVolumizer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 317
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmVolumizer(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Landroid/preference/SeekBarVolumizer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_1
    :goto_0
    return-void
.end method
