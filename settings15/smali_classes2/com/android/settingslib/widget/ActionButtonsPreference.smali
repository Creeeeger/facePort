.class public Lcom/android/settingslib/widget/ActionButtonsPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBtnBackgroundStyle1:Ljava/util/List;

.field public final mBtnBackgroundStyle2:Ljava/util/List;

.field public final mBtnBackgroundStyle3:Ljava/util/List;

.field public final mBtnBackgroundStyle4:Ljava/util/List;

.field public final mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

.field public final mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

.field public final mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

.field public final mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

.field public mDivider1:Landroid/view/View;

.field public mDivider2:Landroid/view/View;

.field public mDivider3:Landroid/view/View;

.field public final mVisibleButtonInfos:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->init$13()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->init$13()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->init$13()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->init$13()V

    return-void
.end method

.method public static setupBackgrounds(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-object v1, v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-object v1, v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final init$13()V
    .locals 3

    const v0, 0x7f0d0b24

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    const v2, 0x7f030032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    const v2, 0x7f030033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    const v2, 0x7f030034

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    const v2, 0x7f030035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->fetchDrawableArray(Ljava/util/List;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public final notifyChanged()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->updateLayout$2()V

    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    iput-boolean v0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    const v1, 0x7f0a028b

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    const v1, 0x7f0a028e

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    const v1, 0x7f0a0292

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    const v1, 0x7f0a0293

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    const v0, 0x7f0a0546

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider1:Landroid/view/View;

    const v0, 0x7f0a0547

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider2:Landroid/view/View;

    const v0, 0x7f0a0548

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider3:Landroid/view/View;

    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->setUpButton()V

    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->setUpButton()V

    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->setUpButton()V

    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->setUpButton()V

    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->updateLayout$2()V

    return-void
.end method

.method public final setButton1Enabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-boolean v1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    if-eq p1, v1, :cond_0

    iput-boolean p1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final setButton1Icon(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iput-object v0, v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Resource does not exist: "

    const-string v0, "ActionButtonPreference"

    invoke-static {p1, p0, v0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setButton1OnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-object v1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    if-eq p1, v1, :cond_0

    iput-object p1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final setButton1Text(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-object v0, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iput-object p1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final setButton2Icon(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iput-object v0, v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Resource does not exist: "

    const-string v0, "ActionButtonPreference"

    invoke-static {p1, p0, v0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setButton2OnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-object v1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    if-eq p1, v1, :cond_0

    iput-object p1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final setButton2Text(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-object v0, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iput-object p1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final setButton3Icon(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iput-object v0, v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Resource does not exist: "

    const-string v0, "ActionButtonPreference"

    invoke-static {p1, p0, v0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setButton3Text(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-object v0, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iput-object p1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final updateLayout$2()V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v2, :cond_b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    const-string v0, "ActionButtonPreference"

    const-string v3, "No visible buttons info, skip background settings."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle4:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupBackgrounds(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle3:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupBackgrounds(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_9
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle2:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupBackgrounds(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_b
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupRtlBackgrounds(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mBtnBackgroundStyle1:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setupBackgrounds(Ljava/util/List;Ljava/util/List;)V

    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider1:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider2:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton2Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider3:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mVisibleButtonInfos:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_10

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton4Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mDivider3:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method
