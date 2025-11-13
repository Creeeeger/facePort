.class Landroid/media/WebVttRenderingWidget$CueLayout;
.super Landroid/widget/LinearLayout;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueLayout"
.end annotation


# instance fields
.field private greylist-max-o mActive:Z

.field private greylist-max-o mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public final greylist-max-o mCue:Landroid/media/TextTrackCue;

.field private greylist-max-o mFontSize:F

.field private greylist-max-o mOrder:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOrder(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .locals 0

    iget p0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cue"    # Landroid/media/TextTrackCue;
    .param p3, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p4, "fontSize"    # F

    .line 1682
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1684
    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    .line 1685
    iput-object p3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1686
    iput p4, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1689
    iget v0, p2, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1691
    .local v0, "horizontal":Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrientation(I)V

    .line 1693
    iget v1, p2, Landroid/media/TextTrackCue;->mAlignment:I

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 1705
    :pswitch_0
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    .line 1706
    goto :goto_2

    .line 1698
    :pswitch_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    .line 1699
    goto :goto_2

    .line 1695
    :pswitch_2
    const v1, 0x800005

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    .line 1696
    goto :goto_2

    .line 1708
    :pswitch_3
    const v1, 0x800003

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_2

    .line 1701
    :pswitch_4
    if-eqz v0, :cond_2

    .line 1702
    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    .line 1701
    :goto_1
    invoke-virtual {p0, v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    .line 1703
    nop

    .line 1716
    :goto_2
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    .line 1717
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o getCue()Landroid/media/TextTrackCue;
    .locals 1

    .line 1833
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    return-object v0
.end method

.method public greylist-max-o isActive()Z
    .locals 1

    .line 1826
    iget-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    return v0
.end method

.method public greylist-max-o measureForParent(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1778
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    .line 1779
    .local v0, "cue":Landroid/media/TextTrackCue;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1780
    .local v1, "specWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1781
    .local v2, "specHeight":I
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getLayoutDirection()I

    move-result v3

    .line 1782
    .local v3, "direction":I
    iget v4, v0, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v3, v4}, Landroid/media/WebVttRenderingWidget;->-$$Nest$smresolveCueAlignment(II)I

    move-result v4

    .line 1787
    .local v4, "absAlignment":I
    packed-switch v4, :pswitch_data_0

    .line 1802
    :pswitch_0
    const/4 v5, 0x0

    .local v5, "maximumSize":I
    goto :goto_0

    .line 1792
    .end local v5    # "maximumSize":I
    :pswitch_1
    iget v5, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 1793
    .restart local v5    # "maximumSize":I
    goto :goto_0

    .line 1789
    .end local v5    # "maximumSize":I
    :pswitch_2
    iget v5, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    rsub-int/lit8 v5, v5, 0x64

    .line 1790
    .restart local v5    # "maximumSize":I
    goto :goto_0

    .line 1795
    .end local v5    # "maximumSize":I
    :pswitch_3
    iget v5, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    const/16 v6, 0x32

    if-gt v5, v6, :cond_0

    .line 1796
    iget v5, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    mul-int/lit8 v5, v5, 0x2

    .restart local v5    # "maximumSize":I
    goto :goto_0

    .line 1798
    .end local v5    # "maximumSize":I
    :cond_0
    iget v5, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    rsub-int/lit8 v5, v5, 0x64

    mul-int/lit8 v5, v5, 0x2

    .line 1800
    .restart local v5    # "maximumSize":I
    nop

    .line 1807
    :goto_0
    iget v6, v0, Landroid/media/TextTrackCue;->mSize:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x64

    .line 1808
    .local v6, "size":I
    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1809
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1810
    invoke-virtual {p0, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->measure(II)V

    .line 1811
    return-void

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected whitelist onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1770
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1771
    return-void
.end method

.method public greylist-max-o prepForPrune()V
    .locals 1

    .line 1733
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    .line 1734
    return-void
.end method

.method public greylist-max-o setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 4
    .param p1, "style"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    .line 1720
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1721
    iput p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1723
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getChildCount()I

    move-result v0

    .line 1724
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1725
    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1726
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/media/WebVttRenderingWidget$SpanLayout;

    if-eqz v3, :cond_0

    .line 1727
    move-object v3, v2

    check-cast v3, Landroid/media/WebVttRenderingWidget$SpanLayout;

    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1724
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1730
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public greylist-max-o setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .line 1819
    iput p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    .line 1820
    return-void
.end method

.method public greylist-max-o update()V
    .locals 10

    .line 1737
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    .line 1739
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->removeAllViews()V

    .line 1741
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getLayoutDirection()I

    move-result v0

    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iget v1, v1, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v0, v1}, Landroid/media/WebVttRenderingWidget;->-$$Nest$smresolveCueAlignment(II)I

    move-result v0

    .line 1743
    .local v0, "cueAlignment":I
    packed-switch v0, :pswitch_data_0

    .line 1752
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .local v1, "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 1748
    .end local v1    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1749
    .restart local v1    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 1745
    .end local v1    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 1746
    .restart local v1    # "alignment":Landroid/text/Layout$Alignment;
    nop

    .line 1755
    :goto_0
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1756
    .local v2, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget v3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1757
    .local v3, "fontSize":F
    iget-object v4, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iget-object v4, v4, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 1758
    .local v4, "lines":[[Landroid/media/TextTrackCueSpan;
    array-length v5, v4

    .line 1759
    .local v5, "lineCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_0

    .line 1760
    new-instance v7, Landroid/media/WebVttRenderingWidget$SpanLayout;

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    aget-object v9, v4, v6

    invoke-direct {v7, v8, v9}, Landroid/media/WebVttRenderingWidget$SpanLayout;-><init>(Landroid/content/Context;[Landroid/media/TextTrackCueSpan;)V

    .line 1761
    .local v7, "lineBox":Landroid/media/WebVttRenderingWidget$SpanLayout;
    invoke-virtual {v7, v1}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1762
    invoke-virtual {v7, v2, v3}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1764
    const/4 v8, -0x2

    invoke-virtual {p0, v7, v8, v8}, Landroid/media/WebVttRenderingWidget$CueLayout;->addView(Landroid/view/View;II)V

    .line 1759
    .end local v7    # "lineBox":Landroid/media/WebVttRenderingWidget$SpanLayout;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1766
    .end local v6    # "i":I
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
