.class public final Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;

    invoke-virtual {p3, p2}, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->updateVolumeLimiter(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->updateSeekBarDrawable(Z)V

    const/16 p0, 0x29

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    int-to-long p0, p2

    const/16 p2, 0x1014

    const/16 p3, 0x1016

    invoke-static {p2, p3, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
