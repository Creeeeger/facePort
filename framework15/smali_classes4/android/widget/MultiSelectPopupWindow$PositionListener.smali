.class Landroid/widget/MultiSelectPopupWindow$PositionListener;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field private final blacklist MAXIMUM_NUMBER_OF_LISTENERS:I

.field private blacklist mNewRect:[I

.field private blacklist mNumberOfListeners:I

.field private blacklist mPositionHasChanged:Z

.field private blacklist mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

.field private blacklist mPositionX:I

.field private blacklist mPositionY:I

.field private blacklist mRect:[I

.field private blacklist mScrollHasChanged:Z

.field final blacklist mTempCoords:[I

.field final synthetic blacklist this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->MAXIMUM_NUMBER_OF_LISTENERS:I

    new-array v0, p1, [Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionHasChanged:Z

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mRect:[I

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempCoords:[I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$PositionListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow$PositionListener;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    return-void
.end method

.method private blacklist updatePosition()V
    .locals 4

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionX:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempCoords:[I

    aget v0, v0, v3

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionY:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mRect:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    aget v1, v1, v2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mRect:[I

    aget v0, v0, v3

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    aget v1, v1, v3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionHasChanged:Z

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionX:I

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempCoords:[I

    aget v0, v0, v3

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionY:I

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mRect:[I

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mRect:[I

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    aget v1, v1, v3

    aput v1, v0, v3

    return-void
.end method


# virtual methods
.method public blacklist addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V
    .locals 3

    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->updatePosition()V

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    return-void

    :cond_1
    if-gez v0, :cond_2

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aput-object p1, v1, v0

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    return-void
.end method

.method public blacklist getPositionX()I
    .locals 1

    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionX:I

    return v0
.end method

.method public blacklist getPositionY()I
    .locals 1

    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionY:I

    return v0
.end method

.method public whitelist onPreDraw()Z
    .locals 9

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    :cond_0
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    return v3

    :cond_1
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->updatePosition()V

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->checkValidMultiSelectionForPreDraw()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearMultiSelection()Z

    return v3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionX:I

    iget v6, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionY:I

    iget-boolean v7, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionHasChanged:Z

    iget-boolean v8, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mScrollHasChanged:Z

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;->updatePosition(IIZZ)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mScrollHasChanged:Z

    return v3
.end method

.method public blacklist onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mScrollHasChanged:Z

    return-void
.end method

.method public blacklist removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    if-nez v0, :cond_2

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return-void
.end method
