.class Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$3;
.super Ljava/lang/Object;
.source "SecVolumeSeekBarPreference.java"

# interfaces
.implements Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->setupCustomInit()V
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

    .line 331
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    const-string p1, "SecVolumeSeekBarPreference"

    const-string p3, "onProgressChanged changed"

    .line 346
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmStream(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    :cond_0
    return-void
.end method

.method public onSampleStarting(Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$mrequestAudioFocus(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Z

    move-result p0

    const-string p1, "SecVolumeSeekBarPreference"

    if-eqz p0, :cond_0

    const-string p0, "SecSeekBarVolumizerDTMF requestAudioFocus() return true : request focus."

    .line 335
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "SecSeekBarVolumizerDTMF : can\'t request focus."

    .line 339
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;)V
    .locals 2

    .line 353
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmJankMonitor(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x35

    .line 354
    invoke-static {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    .line 355
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    .line 353
    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    return-void
.end method

.method public onStopTrackingTouch(Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;)V
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmJankMonitor(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/16 p1, 0x35

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method
