.class Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference$1;
.super Ljava/lang/Object;
.source "SecVibrationSeekBarPreference.java"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 98
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->-$$Nest$msetVibrationIntensity(Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;I)V

    const/16 p1, 0xfa2

    .line 100
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->-$$Nest$fgetmSALogID(Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;)I

    move-result p0

    int-to-long p2, p2

    invoke-static {p1, p0, p2, p3}, Lcom/samsung/android/settings/as/logging/LoggingWrapper;->insertEventLogging(IIJ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method
