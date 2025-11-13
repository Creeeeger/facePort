.class Landroid/media/TtmlRenderingWidget$CustomTextView;
.super Landroid/widget/TextView;
.source "TtmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TtmlRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomTextView"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 990
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 991
    return-void
.end method


# virtual methods
.method public blacklist setSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1008
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1009
    .local v1, "widthSpec":I
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1011
    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/media/TtmlRenderingWidget$CustomTextView;->measure(II)V

    .line 1012
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/TtmlRenderingWidget$CustomTextView;->layout(IIII)V

    .line 1013
    return-void
.end method
