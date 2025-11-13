.class public final Landroidx/appcompat/widget/TooltipPopup;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContentView:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mMessageView:Landroid/widget/TextView;

.field public mNavigationBarHeight:I

.field public final mTmpAnchorPos:[I

.field public final mTmpAppPos:[I

.field public final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mNavigationBarHeight:I

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10104a9

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v2, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v1, p1, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d0423

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0701

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    new-instance v1, Landroidx/appcompat/widget/TooltipPopup$1;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/TooltipPopup$1;-><init>(Landroidx/appcompat/widget/TooltipPopup;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string p1, "TooltipPopup"

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 p0, 0x3ea

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p0, -0x2

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p0, -0x3

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const p0, 0x7f140009

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const p0, 0x40008

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method


# virtual methods
.method public final adjustTooltipPosition(III)I
    .locals 9

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const v2, 0x7f071291

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x3

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int v8, v7, v2

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-lt v8, v5, :cond_0

    sub-int/2addr v5, v7

    iput v5, p0, Landroidx/appcompat/widget/TooltipPopup;->mNavigationBarHeight:I

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_3

    iget v1, v4, Landroid/graphics/Rect;->left:I

    if-gt v1, v2, :cond_3

    iput v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mNavigationBarHeight:I

    :goto_0
    if-ne v0, v6, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, p2

    iget p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mNavigationBarHeight:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p3

    if-le p1, v0, :cond_6

    sub-int p1, v0, p3

    goto :goto_3

    :cond_1
    if-ne v0, v3, :cond_6

    if-gtz p1, :cond_2

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p2, p0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p3

    if-gt p1, p2, :cond_6

    :goto_1
    add-int p1, p2, p3

    goto :goto_3

    :cond_2
    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p3

    if-le p1, p0, :cond_6

    goto :goto_2

    :cond_3
    if-eq v0, v6, :cond_4

    if-ne v0, v3, :cond_6

    :cond_4
    if-gtz p1, :cond_5

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p2, p0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p3

    if-ge p1, p2, :cond_6

    goto :goto_1

    :cond_5
    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p3

    if-le p1, p0, :cond_6

    :goto_2
    sub-int p1, p0, p3

    :cond_6
    :goto_3
    return p1
.end method

.method public final computePosition(Landroid/view/View;ZLandroid/view/WindowManager$LayoutParams;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    const/16 v4, 0x31

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_0

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    :goto_0
    instance-of v6, v5, Landroid/content/ContextWrapper;

    if-eqz v6, :cond_2

    instance-of v6, v5, Landroid/app/Activity;

    if-eqz v6, :cond_1

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    goto :goto_1

    :cond_1
    check-cast v5, Landroid/content/ContextWrapper;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_0

    :cond_2
    :goto_1
    const-string v5, "SESL_TooltipPopup"

    if-nez v4, :cond_3

    const-string v0, "Cannot find app view"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v6, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v6, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    if-gez v7, :cond_5

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-gez v6, :cond_5

    iget-object v6, v0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "android"

    const-string/jumbo v9, "status_bar_height"

    const-string v10, "dimen"

    invoke-virtual {v6, v9, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_2

    :cond_4
    move v7, v8

    :goto_2
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget-object v9, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v10, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9, v8, v7, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_5
    new-array v6, v3, [I

    invoke-virtual {v4, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v7, Landroid/graphics/Rect;

    aget v9, v6, v8

    const/4 v10, 0x1

    aget v11, v6, v10

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v9

    aget v6, v6, v10

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v13, v6

    invoke-direct {v7, v9, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    iput v9, v6, Landroid/graphics/Rect;->left:I

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v4, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v4, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v7, p1

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - displayFrame left : "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - displayFrame right : "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - displayFrame top : "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - displayFrame bottom : "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - anchorView locationOnScreen x: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v11, v4, v8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - anchorView locationOnScreen y : "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v11, v4, v10

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - appView locationOnScreen x : "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v11, v6, v8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - appView locationOnScreen y : "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v11, v6, v10

    invoke-static {v11, v5, v9}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    aget v5, v4, v8

    aget v9, v6, v8

    sub-int/2addr v5, v9

    aput v5, v4, v8

    aget v9, v4, v10

    aget v6, v6, v10

    sub-int/2addr v9, v6

    aput v9, v4, v10

    add-int/2addr v5, v2

    iget-object v6, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v6, v3

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, v0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v6, v5, v5}, Landroid/view/View;->measure(II)V

    iget-object v5, v0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v9, v0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f071257

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iget-object v11, v0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f071254

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    aget v12, v4, v10

    sub-int v13, v12, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v14, v12

    if-eqz p2, :cond_9

    sget-object v12, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v12

    if-nez v12, :cond_7

    aget v12, v4, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v15, v12

    iget-object v12, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/2addr v12, v3

    sub-int/2addr v15, v12

    div-int/lit8 v12, v6, 0x2

    sub-int/2addr v15, v12

    sub-int/2addr v15, v9

    iput v15, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v10, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    neg-int v10, v10

    div-int/2addr v10, v3

    add-int/2addr v10, v12

    if-ge v15, v10, :cond_6

    iget-object v10, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    neg-int v10, v10

    div-int/2addr v10, v3

    add-int/2addr v10, v12

    add-int/2addr v10, v9

    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_6
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v10, v6, v9}, Landroidx/appcompat/widget/TooltipPopup;->adjustTooltipPosition(III)I

    move-result v10

    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_3

    :cond_7
    aget v10, v4, v8

    add-int/2addr v10, v2

    iget-object v12, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/2addr v12, v3

    sub-int/2addr v10, v12

    div-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v10

    add-int/2addr v12, v9

    iput v12, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v12, v6, v9}, Landroidx/appcompat/widget/TooltipPopup;->adjustTooltipPosition(III)I

    move-result v10

    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_3
    add-int v10, v14, v5

    iget-object v12, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-le v10, v12, :cond_8

    iput v13, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5

    :cond_8
    iput v14, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5

    :cond_9
    aget v10, v4, v8

    add-int/2addr v10, v2

    iget-object v12, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/2addr v12, v3

    sub-int/2addr v10, v12

    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v12, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    neg-int v12, v12

    div-int/2addr v12, v3

    div-int/lit8 v15, v6, 0x2

    add-int/2addr v12, v15

    if-ge v10, v12, :cond_a

    iget-object v10, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    neg-int v10, v10

    div-int/2addr v10, v3

    add-int/2addr v10, v15

    add-int/2addr v10, v11

    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_a
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v10, v6, v9}, Landroidx/appcompat/widget/TooltipPopup;->adjustTooltipPosition(III)I

    move-result v10

    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ltz v13, :cond_b

    move v10, v13

    goto :goto_4

    :cond_b
    move v10, v14

    :goto_4
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_5
    if-eqz p4, :cond_c

    const/4 v10, 0x1

    aget v10, v4, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v12, v10

    iput v12, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_c
    if-eqz p5, :cond_10

    sget-object v10, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v10

    if-nez v10, :cond_e

    aget v2, v4, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v2, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v3

    sub-int/2addr v4, v2

    div-int/lit8 v2, v6, 0x2

    sub-int/2addr v4, v2

    sub-int/2addr v4, v9

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    neg-int v7, v7

    div-int/2addr v7, v3

    add-int/2addr v7, v2

    if-ge v4, v7, :cond_d

    iget-object v4, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    neg-int v4, v4

    div-int/2addr v4, v3

    add-int/2addr v4, v2

    add-int/2addr v4, v11

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_d
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v2, v6, v9}, Landroidx/appcompat/widget/TooltipPopup;->adjustTooltipPosition(III)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_6

    :cond_e
    aget v4, v4, v8

    add-int/2addr v4, v2

    iget-object v2, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v3

    sub-int/2addr v4, v2

    div-int/lit8 v2, v6, 0x2

    add-int/2addr v2, v4

    sub-int/2addr v2, v9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v2, v6, v9}, Landroidx/appcompat/widget/TooltipPopup;->adjustTooltipPosition(III)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_6
    add-int/2addr v5, v14

    iget-object v0, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le v5, v0, :cond_f

    goto :goto_7

    :cond_f
    move v13, v14

    :goto_7
    iput v13, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_10
    return-void
.end method

.method public final hide()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final isShowing()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
