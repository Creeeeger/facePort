.class Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;
.super Ljava/lang/Object;
.source "SecFontSizePreferenceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizeSeekBarLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmFontSizeSeekBar(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmIsFromStore(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 626
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fputmPreviewFontSize(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$mchangeFontSizeFromSeekBar(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V

    if-eqz p3, :cond_2

    const/16 p2, 0x29

    .line 630
    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    .line 632
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fputmIsChangedFontSizeSeekBar(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;Z)V

    .line 633
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 634
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-virtual {p2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->getMetricsCategory()I

    move-result p2

    const/16 v0, 0x106c

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/2addr p1, p3

    int-to-long v1, p1

    invoke-static {p2, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 635
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$mapplyFontSize(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    :cond_4
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 608
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmIsFromStore(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x106c

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 610
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$mapplyFontSize(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    :cond_0
    return-void
.end method
