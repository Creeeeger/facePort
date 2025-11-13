.class Landroid/widget/MultiSelectPopupWindow$SelectionController;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/widget/MultiSelectPopupWindow$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionController"
.end annotation


# instance fields
.field private blacklist mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

.field private blacklist mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

.field final synthetic blacklist this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmStartHandle(Landroid/widget/MultiSelectPopupWindow$SelectionController;)Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;
    .locals 0

    iget-object p0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitDrawables(Landroid/widget/MultiSelectPopupWindow$SelectionController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->initDrawables()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitHandles(Landroid/widget/MultiSelectPopupWindow$SelectionController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->initHandles()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$SelectionController-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow$SelectionController;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    return-void
.end method

.method private blacklist initDrawables()V
    .locals 3

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectHandleLeft(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fputmSelectHandleLeft(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectHandleRight(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fputmSelectHandleRight(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private blacklist initHandles()V
    .locals 4

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v2}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectHandleLeft(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectHandleRight(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v2}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectHandleRight(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectHandleLeft(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    :cond_1
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->show()V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->show()V

    return-void
.end method


# virtual methods
.method public blacklist hide()V
    .locals 1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->hide()V

    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->hide()V

    :cond_1
    return-void
.end method

.method public blacklist initPreviousOffset()V
    .locals 1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->initPreviousOffset()V

    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->initPreviousOffset()V

    :cond_1
    return-void
.end method

.method public blacklist isSelectionEndDragged()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSelectionStartDragged()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist onDetached()V
    .locals 2

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->onDetached()V

    :cond_0
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->onDetached()V

    :cond_1
    return-void
.end method

.method public whitelist onTouchModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->hide()V

    :cond_0
    return-void
.end method

.method public blacklist show()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->initDrawables()V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->initHandles()V

    return-void
.end method
