.class public final Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f130075

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0035

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f130076

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0036

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-boolean v0, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mEditSizeEnable:Z

    if-nez v0, :cond_0

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f130073

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0031

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f130070

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a002e

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f130071

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a002f

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v0, 0x7f130072

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f0a0030

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget-object p1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-ge v1, p1, :cond_1

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f13006e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a002d

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget-object p1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ge v1, p1, :cond_2

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f13006d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a002c

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget p1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMinWindowSize:I

    if-le v1, p1, :cond_3

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f13006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a002b

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget p1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMinWindowSize:I

    if-le v1, p1, :cond_4

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    const v0, 0x7f130069

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f0a002a

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090016

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-boolean p2, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mEditSizeEnable:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1, v3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setEditMagnifierSizeMode(Z)V

    goto/16 :goto_0

    :cond_0
    iget-object p2, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->handleSingleTap(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_1
    const v1, 0x7f0a0035

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne p2, v1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    add-float/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->performScale(F)V

    goto/16 :goto_0

    :cond_2
    const v1, 0x7f0a0036

    if-ne p2, v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    sub-float/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->performScale(F)V

    goto/16 :goto_0

    :cond_3
    const v1, 0x7f0a0031

    if-ne p2, v1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p2, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p1, v3, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->move(II)V

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f0a002e

    if-ne p2, v1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p2, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1, v3, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->move(II)V

    goto/16 :goto_0

    :cond_5
    const v1, 0x7f0a002f

    if-ne p2, v1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p2, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p1, p2, v3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->move(II)V

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f0a0030

    if-ne p2, v1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p2, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1, p2, v3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->move(II)V

    goto/16 :goto_0

    :cond_7
    const v1, 0x7f0a002d

    if-ne p2, v1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, v4

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p3, p2, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {p2, p1, p3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->-$$Nest$msetMagnificationFrameSize(Lcom/android/systemui/accessibility/WindowMagnificationController;II)V

    goto :goto_0

    :cond_8
    const v1, 0x7f0a002c

    if-ne p2, v1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, v4

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p3, p2, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-static {p2, p3, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->-$$Nest$msetMagnificationFrameSize(Lcom/android/systemui/accessibility/WindowMagnificationController;II)V

    goto :goto_0

    :cond_9
    const v1, 0x7f0a002b

    if-ne p2, v1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v4, v0

    mul-float/2addr v4, p1

    float-to-int p1, v4

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p3, p2, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {p2, p1, p3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->-$$Nest$msetMagnificationFrameSize(Lcom/android/systemui/accessibility/WindowMagnificationController;II)V

    goto :goto_0

    :cond_a
    const v1, 0x7f0a002a

    if-ne p2, v1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v4, v0

    mul-float/2addr v4, p1

    float-to-int p1, v4

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p3, p2, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-static {p2, p3, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->-$$Nest$msetMagnificationFrameSize(Lcom/android/systemui/accessibility/WindowMagnificationController;II)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    check-cast p1, Lcom/android/systemui/accessibility/Magnification$3;

    iget-object p1, p1, Lcom/android/systemui/accessibility/Magnification$3;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object p1, p1, Lcom/android/systemui/accessibility/Magnification;->mMagnificationConnectionImpl:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IMagnificationConnectionCallback;

    if-eqz p1, :cond_b

    :try_start_0
    invoke-interface {p1, p0}, Landroid/view/accessibility/IMagnificationConnectionCallback;->onAccessibilityActionPerformed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "WindowMagnificationConnectionImpl"

    const-string p2, "Failed to inform an accessibility action is already performed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_1
    return v2

    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final performScale(F)V
    .locals 2

    sget-object v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->A11Y_ACTION_SCALE_RANGE:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    check-cast v0, Lcom/android/systemui/accessibility/Magnification$3;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification$3;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationConnectionImpl:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IMagnificationConnectionCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, p0, p1, v1}, Landroid/view/accessibility/IMagnificationConnectionCallback;->onPerformScaleAction(IFZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WindowMagnificationConnectionImpl"

    const-string v0, "Failed to inform performing scale action"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
