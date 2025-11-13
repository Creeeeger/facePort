.class Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;
.super Ljava/lang/Object;
.source "SecVolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


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

    .line 367
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmMuted(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmZenMuted(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fputmMuted(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;Z)V

    .line 394
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fputmZenMuted(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;Z)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 377
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p3}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmStream(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)I

    move-result p3

    invoke-interface {p1, p3, p2}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$msetContentDescriptionForAutomationTest(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;I)V

    .line 386
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmStream(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/settings/as/logging/LoggingWrapper;->sendEventLogging(I)V

    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$mrequestAudioFocus(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/preference/SeekBarVolumizer;)V
    .locals 2

    .line 399
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmJankMonitor(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x35

    .line 400
    invoke-static {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    .line 401
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    .line 399
    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$4;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->-$$Nest$fgetmJankMonitor(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;)Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/16 p1, 0x35

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method
