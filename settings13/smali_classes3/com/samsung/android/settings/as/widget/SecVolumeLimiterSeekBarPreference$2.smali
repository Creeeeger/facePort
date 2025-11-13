.class Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$2;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmDisabledSeekBar(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
