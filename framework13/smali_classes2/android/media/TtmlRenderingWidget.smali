.class Landroid/media/TtmlRenderingWidget;
.super Landroid/widget/LinearLayout;
.source "TtmlRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TtmlRenderingWidget$CustomTextView;
    }
.end annotation


# static fields
.field private static final blacklist LINE_HEIGHT_RATIO:F = 0.0533f


# instance fields
.field private blacklist mCaptionManager:Landroid/view/accessibility/CaptioningManager;

.field private blacklist mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private greylist-max-o mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private blacklist mTextViewSet:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/TtmlRenderingWidget$CustomTextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 836
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 837
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 840
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 841
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 844
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 845
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 849
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 829
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    .line 851
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/TtmlRenderingWidget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 862
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroid/media/TtmlRenderingWidget;->mCaptionManager:Landroid/view/accessibility/CaptioningManager;

    .line 865
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/TtmlRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 868
    new-instance v0, Landroid/media/TtmlRenderingWidget$CustomTextView;

    invoke-direct {v0, p1}, Landroid/media/TtmlRenderingWidget$CustomTextView;-><init>(Landroid/content/Context;)V

    .line 869
    .local v0, "customTextView":Landroid/media/TtmlRenderingWidget$CustomTextView;
    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setGravity(I)V

    .line 871
    iget-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 873
    return-void
.end method


# virtual methods
.method public blacklist applyOpacity(II)I
    .locals 4
    .param p1, "color"    # I
    .param p2, "opacity"    # I

    .line 920
    mul-int/lit16 v0, p2, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public whitelist onAttachedToWindow()V
    .locals 0

    .line 900
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 901
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 0

    .line 905
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 906
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 916
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 917
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 911
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 912
    return-void
.end method

.method public greylist-max-o setActiveCues(Ljava/util/Vector;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 939
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p0}, Landroid/media/TtmlRenderingWidget;->removeAllViews()V

    .line 941
    iget-object v0, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 942
    .local v0, "viewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    .line 943
    iget-object v2, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 942
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 946
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 948
    .local v1, "count":I
    const-string v2, ""

    .line 950
    .local v2, "subtitleText":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 952
    invoke-virtual {p1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/TtmlCue;

    .line 954
    .local v4, "cue":Landroid/media/TtmlCue;
    const-string v5, "\n"

    if-lez v3, :cond_1

    .line 955
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 957
    :cond_1
    iget-object v6, v4, Landroid/media/TtmlCue;->mText:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/media/TtmlUtils;->applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 958
    .local v6, "text":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 961
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 962
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 963
    .local v5, "textSpan":Landroid/text/Spannable;
    iget-object v7, p0, Landroid/media/TtmlRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v7, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 964
    .local v7, "color":I
    iget-object v8, p0, Landroid/media/TtmlRenderingWidget;->mCaptionManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v8}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v8

    invoke-virtual {p0}, Landroid/media/TtmlRenderingWidget;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const v9, 0x3d5a511a    # 0.0533f

    mul-float/2addr v8, v9

    .line 965
    .local v8, "fontSize":F
    new-instance v9, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v9, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x21

    const/4 v12, 0x0

    invoke-interface {v5, v9, v12, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 967
    iget-object v9, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v9, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/TtmlRenderingWidget$CustomTextView;

    const/16 v10, 0x51

    invoke-virtual {v9, v10}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setGravity(I)V

    .line 968
    iget-object v9, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v9, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/TtmlRenderingWidget$CustomTextView;

    invoke-virtual {v9, v5}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    iget-object v9, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v9, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/TtmlRenderingWidget$CustomTextView;

    invoke-virtual {v9, v8}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setTextSize(F)V

    .line 970
    iget-object v9, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v9, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/TtmlRenderingWidget$CustomTextView;

    invoke-virtual {v9}, Landroid/media/TtmlRenderingWidget$CustomTextView;->getTextSize()F

    move-result v9

    .line 971
    .local v9, "tmpTextSize":F
    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/TtmlRenderingWidget$CustomTextView;

    mul-float v11, v8, v8

    div-float/2addr v11, v9

    invoke-virtual {v10, v11}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setTextSize(F)V

    .line 972
    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/TtmlRenderingWidget$CustomTextView;

    iget-object v11, p0, Landroid/media/TtmlRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v11, v11, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-virtual {v10, v11}, Landroid/media/TtmlRenderingWidget$CustomTextView;->setTextColor(I)V

    .line 973
    iget-object v10, p0, Landroid/media/TtmlRenderingWidget;->mTextViewSet:Ljava/util/LinkedList;

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/4 v11, -0x1

    invoke-virtual {p0, v10, v11, v11}, Landroid/media/TtmlRenderingWidget;->addView(Landroid/view/View;II)V

    .line 950
    .end local v4    # "cue":Landroid/media/TtmlCue;
    .end local v5    # "textSpan":Landroid/text/Spannable;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "color":I
    .end local v8    # "fontSize":F
    .end local v9    # "tmpTextSize":F
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 976
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0}, Landroid/media/TtmlRenderingWidget;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/media/TtmlRenderingWidget;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/media/TtmlRenderingWidget;->setSize(II)V

    .line 978
    iget-object v3, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v3, :cond_3

    .line 979
    invoke-interface {v3, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 981
    :cond_3
    return-void
.end method

.method public greylist-max-o setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 877
    iput-object p1, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 878
    return-void
.end method

.method public greylist-max-o setSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 882
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 883
    .local v1, "widthSpec":I
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 885
    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/media/TtmlRenderingWidget;->measure(II)V

    .line 886
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/TtmlRenderingWidget;->layout(IIII)V

    .line 887
    return-void
.end method

.method public greylist-max-o setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 891
    if-eqz p1, :cond_0

    .line 892
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/TtmlRenderingWidget;->setVisibility(I)V

    goto :goto_0

    .line 894
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/media/TtmlRenderingWidget;->setVisibility(I)V

    .line 896
    :goto_0
    return-void
.end method
