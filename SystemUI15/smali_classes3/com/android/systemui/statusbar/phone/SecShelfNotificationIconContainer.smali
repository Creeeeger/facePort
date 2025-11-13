.class public Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;
.super Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBgViews:Ljava/util/ArrayList;

.field public mMoreView:Landroid/widget/TextView;

.field public mMoreViewBackground:Landroid/graphics/drawable/Drawable;

.field public mMoreViewRange:I

.field public mPaddingBetweenIcons:I

.field public mPaddingForMoreView:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mBgViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final calculateIconXTranslations()V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mBgViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v7, v2

    move v8, v7

    move v5, v3

    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v6, v1, :cond_d

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v12, v11, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    goto/16 :goto_7

    :cond_0
    instance-of v12, v11, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v12, :cond_1

    move-object v12, v11

    check-cast v12, Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-boolean v10, v12, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlockDotAnim:Z

    :cond_1
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v13, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    const/4 v15, 0x4

    if-nez v13, :cond_8

    iget v13, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    cmpl-float v13, v13, v14

    if-nez v13, :cond_8

    if-ne v8, v2, :cond_7

    sub-int v5, v1, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    if-eq v5, v10, :cond_6

    if-eq v5, v9, :cond_5

    const/4 v4, 0x3

    if-eq v5, v4, :cond_4

    if-eq v5, v15, :cond_3

    mul-int/lit8 v5, v13, 0x4

    iget v15, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingBetweenIcons:I

    mul-int/2addr v15, v4

    add-int/2addr v15, v5

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v13

    :goto_1
    sub-int/2addr v4, v13

    add-int/2addr v4, v15

    sub-int/2addr v8, v4

    div-int/2addr v8, v9

    :goto_2
    int-to-float v4, v8

    move v5, v4

    goto :goto_3

    :cond_3
    mul-int/lit8 v13, v13, 0x4

    iget v5, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingBetweenIcons:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v13

    sub-int/2addr v8, v5

    div-int/2addr v8, v9

    goto :goto_2

    :cond_4
    mul-int/lit8 v13, v13, 0x3

    iget v4, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingBetweenIcons:I

    mul-int/2addr v4, v9

    add-int/2addr v4, v13

    sub-int/2addr v8, v4

    div-int/2addr v8, v9

    goto :goto_2

    :cond_5
    mul-int/lit8 v13, v13, 0x2

    iget v4, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingBetweenIcons:I

    add-int/2addr v13, v4

    sub-int/2addr v8, v13

    div-int/2addr v8, v9

    goto :goto_2

    :cond_6
    sub-int/2addr v8, v13

    div-int/2addr v8, v9

    goto :goto_2

    :goto_3
    move v8, v6

    :cond_7
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mBgViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    :cond_8
    iget-boolean v4, v12, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    :goto_4
    iput v9, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    iget v4, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v9, v4, v14

    if-nez v9, :cond_b

    iget v9, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    cmpl-float v9, v9, v14

    if-nez v9, :cond_b

    if-le v8, v2, :cond_a

    move v9, v8

    goto :goto_5

    :cond_a
    const/4 v9, 0x0

    :goto_5
    sub-int v9, v6, v9

    add-int/2addr v9, v10

    const/4 v13, 0x4

    if-le v9, v13, :cond_b

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    :goto_6
    if-ne v7, v2, :cond_c

    if-eqz v10, :cond_c

    add-int/lit8 v7, v6, -0x1

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v3, v3

    sub-float v3, v5, v3

    iget v9, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingForMoreView:I

    int-to-float v9, v9

    sub-float/2addr v3, v9

    :cond_c
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v4, v9

    iget v9, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    iget v10, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingBetweenIcons:I

    int-to-float v10, v10

    invoke-static {v9, v10, v4, v5}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v4

    move v5, v4

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    if-eq v7, v2, :cond_12

    move v2, v7

    :goto_8
    if-ge v2, v1, :cond_11

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    if-nez v6, :cond_f

    iget v6, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const v8, 0x3f4ccccd    # 0.8f

    cmpg-float v6, v6, v8

    if-gez v6, :cond_e

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    goto :goto_9

    :cond_e
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mBgViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput v9, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    sub-int v5, v1, v7

    sub-int/2addr v5, v10

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->updateMoreView(I)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    :goto_9
    invoke-virtual {v4, v10}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_b

    :cond_f
    instance-of v6, v4, Landroid/widget/TextView;

    if-eqz v6, :cond_10

    goto :goto_a

    :cond_10
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mBgViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_a
    iput v9, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v4, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_11
    const/4 v2, 0x0

    goto :goto_c

    :cond_12
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->updateMoreView(I)V

    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_15

    move v4, v2

    :goto_d
    if-ge v4, v1, :cond_15

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_e

    :cond_13
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-eqz v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    sub-float/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v5, v2

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    :cond_14
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_15
    return-void
.end method

.method public final initResources()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initResources()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c76

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingBetweenIcons:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c78

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingForMoreView:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07046e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIconSize(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    const v1, 0x7f140505

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08124a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreViewBackground:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShelfIconColor:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onClockColorChanged - current : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShelfIconColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " new : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " F : true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecShelfNotificationIconContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreViewBackground:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    const/16 v3, 0x80

    if-lt v1, v3, :cond_1

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShelfIconColor:I

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    instance-of v1, p5, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_1
    int-to-float v2, v0

    div-float/2addr v2, p2

    sub-float v2, p1, v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p5, p3, v2, v1, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07103b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final updateMoreView(I)V
    .locals 5

    if-lez p1, :cond_6

    const/16 v0, 0x64

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-lt p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0709ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreViewRange:I

    if-eq v1, v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreViewRange:I

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mBgViews:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mBgViews:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method
