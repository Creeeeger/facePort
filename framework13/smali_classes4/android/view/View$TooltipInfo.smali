.class Landroid/view/View$TooltipInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TooltipInfo"
.end annotation


# instance fields
.field greylist-max-o mAnchorX:I

.field greylist-max-o mAnchorY:I

.field greylist-max-o mHideTooltipRunnable:Ljava/lang/Runnable;

.field greylist-max-o mHoverSlop:I

.field blacklist mSemIsTooltipNull:Z

.field blacklist mSemSetTooltipPosition:Z

.field blacklist mSemX:I

.field blacklist mSemY:I

.field greylist-max-o mShowTooltipRunnable:Ljava/lang/Runnable;

.field greylist-max-o mTooltipFromLongClick:Z

.field greylist-max-o mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

.field greylist-max-o mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mclearAnchorPos(Landroid/view/View$TooltipInfo;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$TooltipInfo;->clearAnchorPos()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAnchorPos(Landroid/view/View$TooltipInfo;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$TooltipInfo;->updateAnchorPos(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private constructor greylist-max-o <init>()V
    .locals 1

    .line 4882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4927
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View$TooltipInfo;->mSemIsTooltipNull:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View$TooltipInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$TooltipInfo;-><init>()V

    return-void
.end method

.method private greylist-max-o clearAnchorPos()V
    .locals 1

    .line 4958
    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    .line 4959
    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    .line 4960
    return-void
.end method

.method private greylist-max-o updateAnchorPos(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4943
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 4944
    .local v0, "newAnchorX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 4945
    .local v1, "newAnchorY":I
    iget v2, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/view/View$TooltipInfo;->mHoverSlop:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    sub-int v2, v1, v2

    .line 4946
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/view/View$TooltipInfo;->mHoverSlop:I

    if-gt v2, v3, :cond_0

    .line 4947
    const/4 v2, 0x0

    return v2

    .line 4949
    :cond_0
    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    .line 4950
    iput v1, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    .line 4951
    const/4 v2, 0x1

    return v2
.end method
