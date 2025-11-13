.class Landroid/media/WebVttRenderingWidget$RegionLayout;
.super Landroid/widget/LinearLayout;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegionLayout"
.end annotation


# instance fields
.field private greylist-max-o mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private greylist-max-o mFontSize:F

.field private final greylist-max-o mRegion:Landroid/media/TextTrackRegion;

.field private final greylist-max-o mRegionCueBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/WebVttRenderingWidget$CueLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/media/TextTrackRegion;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "region"    # Landroid/media/TextTrackRegion;
    .param p3, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p4, "fontSize"    # F

    .line 1549
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    .line 1551
    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegion:Landroid/media/TextTrackRegion;

    .line 1552
    iput-object p3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1553
    iput p4, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mFontSize:F

    .line 1556
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$RegionLayout;->setOrientation(I)V

    .line 1561
    iget v0, p3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$RegionLayout;->setBackgroundColor(I)V

    .line 1563
    return-void
.end method


# virtual methods
.method public greylist-max-o getRegion()Landroid/media/TextTrackRegion;
    .locals 1

    .line 1659
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegion:Landroid/media/TextTrackRegion;

    return-object v0
.end method

.method public greylist-max-o measureForParent(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1583
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegion:Landroid/media/TextTrackRegion;

    .line 1584
    .local v0, "region":Landroid/media/TextTrackRegion;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1585
    .local v1, "specWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1586
    .local v2, "specHeight":I
    iget v3, v0, Landroid/media/TextTrackRegion;->mWidth:F

    float-to-int v3, v3

    .line 1589
    .local v3, "width":I
    mul-int v4, v3, v1

    div-int/lit8 v4, v4, 0x64

    .line 1591
    .local v4, "size":I
    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1592
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1593
    invoke-virtual {p0, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->measure(II)V

    .line 1594
    return-void
.end method

.method public greylist-max-o prepForPrune()V
    .locals 3

    .line 1603
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1604
    .local v0, "cueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1605
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1606
    .local v2, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->prepForPrune()V

    .line 1604
    .end local v2    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1608
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o prune()Z
    .locals 4

    .line 1641
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1642
    .local v0, "cueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1643
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1644
    .local v2, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1645
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1646
    invoke-virtual {p0, v2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->removeView(Landroid/view/View;)V

    .line 1647
    add-int/lit8 v0, v0, -0x1

    .line 1648
    add-int/lit8 v1, v1, -0x1

    .line 1642
    .end local v2    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1652
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    return v1
.end method

.method public greylist-max-o put(Landroid/media/TextTrackCue;)V
    .locals 5
    .param p1, "cue"    # Landroid/media/TextTrackCue;

    .line 1617
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1618
    .local v0, "cueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1619
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1620
    .local v2, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1621
    invoke-virtual {v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    .line 1622
    return-void

    .line 1618
    .end local v2    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1626
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Landroid/media/WebVttRenderingWidget$CueLayout;

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v4, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mFontSize:F

    invoke-direct {v1, v2, p1, v3, v4}, Landroid/media/WebVttRenderingWidget$CueLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1627
    .local v1, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    const/4 v2, -0x2

    invoke-virtual {p0, v1, v2, v2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->addView(Landroid/view/View;II)V

    .line 1630
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getChildCount()I

    move-result v2

    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegion:Landroid/media/TextTrackRegion;

    iget v3, v3, Landroid/media/TextTrackRegion;->mLines:I

    if-le v2, v3, :cond_2

    .line 1631
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->removeViewAt(I)V

    .line 1633
    :cond_2
    return-void
.end method

.method public greylist-max-o setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 3
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    .line 1566
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1567
    iput p2, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mFontSize:F

    .line 1569
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1570
    .local v0, "cueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1571
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1572
    .local v2, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v2, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1570
    .end local v2    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1575
    .end local v1    # "i":I
    :cond_0
    iget v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$RegionLayout;->setBackgroundColor(I)V

    .line 1576
    return-void
.end method
