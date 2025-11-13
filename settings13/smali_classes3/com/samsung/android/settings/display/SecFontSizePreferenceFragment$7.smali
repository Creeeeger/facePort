.class Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$7;
.super Ljava/lang/Object;
.source "SecFontSizePreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 656
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$7;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 659
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$7;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmFontSizeSeekBar(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 660
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$7;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmFontSizeSeekBar(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$7;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmFontSizeSeekBar(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 662
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$7;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fgetmIsFromStore(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$7;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$fputmPreviewFontSize(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V

    .line 664
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$7;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$mchangeFontSizeFromSeekBar(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V

    goto :goto_0

    .line 666
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$7;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$mapplyFontSize(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
