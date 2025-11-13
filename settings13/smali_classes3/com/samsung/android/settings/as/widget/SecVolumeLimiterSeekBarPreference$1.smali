.class Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;
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

    .line 127
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_2

    .line 132
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 134
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "volumelimit_set_password"

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmCheckedPW(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 136
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmOldLimiterValue(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)I

    move-result p2

    if-le p1, p2, :cond_1

    .line 137
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmOldLimiterValue(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 138
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$Callback;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$Callback;->showCheckPasswordDialog(Landroid/view/View;)V

    return-void

    .line 141
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$mupdateVolumeLimiter(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;I)V

    const/16 p0, 0x1014

    const/16 p2, 0x1016

    int-to-long v0, p1

    .line 144
    invoke-static {p0, p2, v0, v1}, Lcom/samsung/android/settings/as/logging/LoggingWrapper;->insertEventLogging(IIJ)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 155
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 157
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$mupdateVolumeLimiter(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;I)V

    return-void
.end method
