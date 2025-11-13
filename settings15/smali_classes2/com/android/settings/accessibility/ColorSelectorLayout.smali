.class public Lcom/android/settings/accessibility/ColorSelectorLayout;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCheckedId:I

.field public final mChildOnCheckedChangeListener:Lcom/android/settings/accessibility/ColorSelectorLayout$CheckedStateTracker;

.field public final mColorList:Ljava/util/List;

.field public mOnCheckedChangeListener:Lcom/android/settings/accessibility/ColorSelectorLayout$OnCheckedChangeListener;

.field public final mRadioButtonResourceIds:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$msetCheckedId(Lcom/android/settings/accessibility/ColorSelectorLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ColorSelectorLayout;->setCheckedId(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mCheckedId:I

    const p1, 0x7f0a03bc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const p1, 0x7f0a03bd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const p1, 0x7f0a03be

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const p1, 0x7f0a03bf

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const p1, 0x7f0a03c0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const p1, 0x7f0a03c1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const p1, 0x7f0a03c2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const p1, 0x7f0a03c3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const p1, 0x7f0a03c4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const p1, 0x7f0a03c5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const p1, 0x7f0a03c6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const p1, 0x7f0a03c7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mRadioButtonResourceIds:Ljava/util/List;

    new-instance p1, Lcom/android/settings/accessibility/ColorSelectorLayout$CheckedStateTracker;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/ColorSelectorLayout$CheckedStateTracker;-><init>(Lcom/android/settings/accessibility/ColorSelectorLayout;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mChildOnCheckedChangeListener:Lcom/android/settings/accessibility/ColorSelectorLayout$CheckedStateTracker;

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f0d08eb

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorSelectorLayout;->init()V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03015f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mColorList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mCheckedId:I

    const p1, 0x7f0a03bc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const p1, 0x7f0a03bd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const p1, 0x7f0a03be

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const p1, 0x7f0a03bf

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const p1, 0x7f0a03c0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const p1, 0x7f0a03c1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const p1, 0x7f0a03c2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const p1, 0x7f0a03c3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const p1, 0x7f0a03c4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const p1, 0x7f0a03c5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const p1, 0x7f0a03c6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const p1, 0x7f0a03c7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mRadioButtonResourceIds:Ljava/util/List;

    new-instance p1, Lcom/android/settings/accessibility/ColorSelectorLayout$CheckedStateTracker;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/ColorSelectorLayout$CheckedStateTracker;-><init>(Lcom/android/settings/accessibility/ColorSelectorLayout;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mChildOnCheckedChangeListener:Lcom/android/settings/accessibility/ColorSelectorLayout$CheckedStateTracker;

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p2, 0x7f0d08eb

    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorSelectorLayout;->init()V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03015f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mColorList:Ljava/util/List;

    return-void
.end method

.method private setCheckedId(I)V
    .locals 1

    iput p1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mCheckedId:I

    iget-object p1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mOnCheckedChangeListener:Lcom/android/settings/accessibility/ColorSelectorLayout$OnCheckedChangeListener;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/settings/accessibility/FlashNotificationsUtil;->DEFAULT_SCREEN_FLASH_COLOR:I

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ColorSelectorLayout;->getCheckedColor(I)I

    move-result p0

    iput p0, p1, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mCurrentColor:I

    iget-object p0, p1, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mIsPreview:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->showColor()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCheckedColor(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mRadioButtonResourceIds:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mCheckedId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mColorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mColorList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public final init()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mRadioButtonResourceIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mChildOnCheckedChangeListener:Lcom/android/settings/accessibility/ColorSelectorLayout$CheckedStateTracker;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCheckedColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mColorList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mRadioButtonResourceIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mRadioButtonResourceIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    if-eq p1, v0, :cond_2

    iget v1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mCheckedId:I

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mCheckedId:I

    if-eq v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/RadioButton;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    if-eq p1, v0, :cond_4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ColorSelectorLayout;->setCheckedId(I)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/android/settings/accessibility/ColorSelectorLayout$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ColorSelectorLayout;->mOnCheckedChangeListener:Lcom/android/settings/accessibility/ColorSelectorLayout$OnCheckedChangeListener;

    return-void
.end method
