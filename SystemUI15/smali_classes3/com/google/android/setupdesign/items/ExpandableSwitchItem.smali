.class public final Lcom/google/android/setupdesign/items/ExpandableSwitchItem;
.super Lcom/google/android/setupdesign/items/SwitchItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final accessibilityDelegate:Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

.field public final collapsedSummary:Ljava/lang/CharSequence;

.field public final expandedSummary:Ljava/lang/CharSequence;

.field public isExpanded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/setupdesign/items/SwitchItem;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    new-instance v0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;-><init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->accessibilityDelegate:Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    const/16 v0, 0x30

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/SwitchItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    new-instance v1, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;-><init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->accessibilityDelegate:Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudExpandableSwitchItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->collapsedSummary:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->expandedSummary:Ljava/lang/CharSequence;

    const/4 p2, 0x7

    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final getDefaultLayoutResource()I
    .locals 0

    const p0, 0x7f0d04fe

    return p0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->expandedSummary:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->collapsedSummary:Ljava/lang/CharSequence;

    :goto_0
    return-object p0
.end method

.method public final onBindView(Landroid/view/View;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/SwitchItem;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0cac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v1, v0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/setupdesign/view/CheckableLinearLayout;

    iget-boolean v2, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    invoke-virtual {v1, v2}, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->setChecked(Z)V

    iget-boolean v2, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    iget-object p0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->accessibilityDelegate:Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    invoke-static {v1, p0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x1010036

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_4

    const p0, 0x7f0a0cb2

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    array-length v3, p0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, p0, v4

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {v0}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationLayoutPaddingStyle(Landroid/view/View;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setExpanded(Z)V

    return-void
.end method

.method public final setExpanded(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    iget-object p0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->observers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    const/4 v0, 0x0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
