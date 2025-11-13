.class public Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIconEnd:Landroid/widget/ImageView;

.field public final mIconEndFrame:Landroid/view/ViewGroup;

.field public final mIconStart:Landroid/widget/ImageView;

.field public final mIconStartFrame:Landroid/view/ViewGroup;

.field public final mSeekBarChangeMagnitude:I

.field public final mSeekBarListener:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;

.field public final mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

.field public mSetProgressFromButtonFlag:Z


# direct methods
.method public static $r8$lambda$NXdfyFJWWSMlxhe0liHePata5KI(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekBarChangeMagnitude:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSetProgressFromButtonFlag:Z

    iget-object v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->updateIconViewIfNeeded(I)V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string v0, "A11Y3198"

    invoke-static {p0, v0}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static $r8$lambda$Ryx6DOIbVKj-7tZSU8RwyATh5A0(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekBarChangeMagnitude:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSetProgressFromButtonFlag:Z

    iget-object v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->updateIconViewIfNeeded(I)V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string v0, "A11Y3196"

    invoke-static {p0, v0}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekBarChangeMagnitude:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSetProgressFromButtonFlag:Z

    new-instance v2, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V

    iput-object v2, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekBarListener:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d03c4

    invoke-virtual {v3, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v3, 0x7f0a0517

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconStartFrame:Landroid/view/ViewGroup;

    const v4, 0x7f0a050e

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconEndFrame:Landroid/view/ViewGroup;

    const v5, 0x7f0a0516

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconStart:Landroid/widget/ImageView;

    const v5, 0x7f0a050d

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconEnd:Landroid/widget/ImageView;

    const v5, 0x7f0a0ae0

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v5, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v6, 0x7

    if-eqz p2, :cond_3

    sget-object v7, Lcom/android/systemui/res/R$styleable;->SeekBarWithIconButtonsView_Layout:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 p4, 0x3

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {v5, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    invoke-virtual {p0, p4}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setProgress(I)V

    const/16 p3, 0x8

    invoke-virtual {v5, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p1, 0x5

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 p1, 0x4

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekBarChangeMagnitude:I

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setProgress(I)V

    :goto_0
    iput-object v2, v5, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    new-instance p1, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V

    invoke-virtual {v5, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance p1, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance p1, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p2, 0x7f1300e4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p1, 0x7f1300e3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getOnSeekBarWithIconButtonsChangeListener()Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekBarListener:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

    return-object p0
.end method

.method public getProgress()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method public getSeekbar()Landroidx/appcompat/widget/SeslSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    return-object p0
.end method

.method public final setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->updateIconViewIfNeeded(I)V

    return-void
.end method

.method public final setSeekbarStateDescription(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f1306eb

    invoke-virtual {p0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateIconViewIfNeeded(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconStart:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconEnd:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result p0

    if-ge p1, p0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void
.end method
