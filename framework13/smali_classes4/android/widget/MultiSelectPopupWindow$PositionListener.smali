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

    .line 442
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    const/4 p1, 0x2

    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->MAXIMUM_NUMBER_OF_LISTENERS:I

    .line 444
    new-array v0, p1, [Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionHasChanged:Z

    .line 451
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mRect:[I

    .line 452
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    .line 453
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
    .locals 8

    .line 529
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 530
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 531
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 533
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempCoords:[I

    aget v1, v0, v2

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionX:I

    if-ne v1, v4, :cond_1

    aget v4, v0, v3

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionY:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mRect:[I

    aget v5, v4, v2

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    aget v7, v6, v2

    if-ne v5, v7, :cond_1

    aget v4, v4, v3

    aget v5, v6, v3

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    iput-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionHasChanged:Z

    .line 534
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionX:I

    .line 535
    aget v0, v0, v3

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionY:I

    .line 536
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mRect:[I

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    aget v4, v1, v2

    aput v4, v0, v2

    .line 537
    aget v1, v1, v3

    aput v1, v0, v3

    .line 538
    return-void
.end method


# virtual methods
.method public blacklist addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V
    .locals 3
    .param p1, "positionListener"    # Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    .line 456
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->updatePosition()V

    .line 458
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 459
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 462
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, -0x1

    .line 463
    .local v0, "emptySlotIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 464
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aget-object v2, v2, v1

    .line 465
    .local v2, "listener":Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    if-ne v2, p1, :cond_1

    .line 466
    return-void

    .line 467
    :cond_1
    if-gez v0, :cond_2

    if-nez v2, :cond_2

    .line 468
    move v0, v1

    .line 463
    .end local v2    # "listener":Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aput-object p1, v1, v0

    .line 473
    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    .line 474
    return-void
.end method

.method public blacklist getPositionX()I
    .locals 1

    .line 492
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionX:I

    return v0
.end method

.method public blacklist getPositionY()I
    .locals 1

    .line 496
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionY:I

    return v0
.end method

.method public whitelist onPreDraw()Z
    .locals 9

    .line 501
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 502
    const/4 v0, 0x0

    .local v0, "i":I
    if-ge v0, v2, :cond_0

    .line 503
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 506
    .end local v0    # "i":I
    :cond_0
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    .line 507
    return v3

    .line 510
    :cond_1
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->updatePosition()V

    .line 512
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->checkValidMultiSelectionForPreDraw()Z

    move-result v0

    if-nez v0, :cond_2

    .line 513
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearMultiSelection()Z

    .line 514
    return v3

    .line 517
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 518
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aget-object v4, v4, v0

    .line 519
    .local v4, "positionListener":Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    if-eqz v4, :cond_3

    .line 520
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionX:I

    iget v6, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionY:I

    iget-boolean v7, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionHasChanged:Z

    iget-boolean v8, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mScrollHasChanged:Z

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 517
    .end local v4    # "positionListener":Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    .end local v0    # "i":I
    :cond_4
    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mScrollHasChanged:Z

    .line 525
    return v3
.end method

.method public blacklist onScrollChanged()V
    .locals 1

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mScrollHasChanged:Z

    .line 542
    return-void
.end method

.method public blacklist removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V
    .locals 3
    .param p1, "positionListener"    # Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    .line 477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 478
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 479
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 480
    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    .line 481
    goto :goto_1

    .line 477
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    .end local v0    # "i":I
    :cond_1
    :goto_1
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    if-nez v0, :cond_2

    .line 486
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 487
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 489
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_2
    return-void
.end method
