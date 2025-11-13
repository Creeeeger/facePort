.class Lcom/android/internal/app/ChooserListAdapter$1;
.super Ljava/lang/Object;
.source "ChooserListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserListAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 176
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter$1;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onLayoutChange$0(Landroid/widget/TextView;)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 198
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 180
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 184
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 185
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_3

    .line 186
    const/4 v2, 0x0

    .line 187
    .local v2, "textWidth":I
    const/4 v3, 0x0

    .local v3, "line":I
    :goto_0
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 188
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v3    # "line":I
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    .line 192
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 193
    .local v3, "desiredWidth":I
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 194
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 195
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 196
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v5, Lcom/android/internal/app/ChooserListAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/internal/app/ChooserListAdapter$1$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 200
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 202
    .end local v2    # "textWidth":I
    .end local v3    # "desiredWidth":I
    :cond_3
    return-void
.end method
