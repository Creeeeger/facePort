.class Landroid/widget/AbsListView$CheckForLongPress;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# static fields
.field private static final greylist-max-o INVALID_COORD:I = -0x1


# instance fields
.field private greylist-max-o mX:F

.field private greylist-max-o mY:F

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetCoords(Landroid/widget/AbsListView$CheckForLongPress;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView$CheckForLongPress;->setCoords(FF)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable-IA;)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method

.method private greylist-max-o setCoords(FF)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    iput p2, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 14

    iget-object v0, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView$CheckForLongPress;->sameWindow()Z

    move-result v3

    const/4 v13, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3, v13}, Landroid/widget/AbsListView;->-$$Nest$fputmIsLongPressTriggeredByKey(Landroid/widget/AbsListView;Z)V

    iget v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v8, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    iget v9, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    move-object v4, v1

    move v5, v2

    move-wide v6, v10

    invoke-virtual/range {v3 .. v9}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result v12

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1, v2, v10, v11}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v12

    :cond_1
    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v12, :cond_2

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5, v4}, Landroid/widget/AbsListView;->-$$Nest$fputmHasPerformedLongPress(Landroid/widget/AbsListView;Z)V

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iput v3, v5, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v13}, Landroid/widget/AbsListView;->setPressed(Z)V

    invoke-virtual {v1, v13}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x2

    iput v6, v5, Landroid/widget/AbsListView;->mTouchMode:I

    :goto_1
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-$$Nest$fgetmLongPressMultiSelectionEnabled(Landroid/widget/AbsListView;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5, v13}, Landroid/widget/AbsListView;->-$$Nest$fputmHasPerformedLongPress(Landroid/widget/AbsListView;Z)V

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5, v4}, Landroid/widget/AbsListView;->-$$Nest$fputmIsLongPressMultiSelection(Landroid/widget/AbsListView;Z)V

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iput v3, v4, Landroid/widget/AbsListView;->mTouchMode:I

    :cond_3
    return-void
.end method
