.class Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;
.super Ljava/lang/Object;
.source "SecFontSizePreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 567
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 570
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "---> onKey: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", action: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecFontSizePreferenceFragment"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_6

    .line 573
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmFontSizeSeekBar(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    const/16 v0, 0x15

    if-eq p2, v0, :cond_3

    const/16 v0, 0x16

    if-eq p2, v0, :cond_0

    const/16 v0, 0x45

    if-eq p2, v0, :cond_3

    const/16 v0, 0x51

    if-eq p2, v0, :cond_0

    goto :goto_2

    .line 588
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmFontSizeSeekBar(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    if-gt p1, p2, :cond_2

    .line 589
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmIsFromStore(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 590
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fputmPreviewFontSize(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V

    .line 591
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$mchangeFontSizeFromSeekBar(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V

    goto :goto_0

    .line 593
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$mapplyFontSize(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    :cond_2
    :goto_0
    return p3

    :cond_3
    if-ltz p1, :cond_5

    .line 578
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmIsFromStore(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 579
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fputmPreviewFontSize(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V

    .line 580
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$mchangeFontSizeFromSeekBar(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V

    goto :goto_1

    .line 582
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$mapplyFontSize(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    :cond_5
    :goto_1
    return p3

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return p0
.end method
