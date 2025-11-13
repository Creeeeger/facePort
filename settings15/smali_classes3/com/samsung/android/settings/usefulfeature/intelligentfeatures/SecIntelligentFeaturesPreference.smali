.class public Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference;
.super Landroidx/preference/SecPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDependentPackageName:Ljava/lang/String;

.field public mListener:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference$OnClickListener;

.field public mPackageInfo:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;

.field public mPackageName:Ljava/lang/String;

.field public mStatus:I

.field public mStatusIcon:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference;->mStatus:I

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference;->mDependentPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference;->mListener:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference$OnClickListener;

    const p1, 0x7f0d08d4

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b00

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/preference/internal/PreferenceImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070afe

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a07a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0f02

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference;->mStatusIcon:Landroid/widget/ImageButton;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference$1;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference;->mStatus:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference;->updateStatusIcon(I)V

    return-void
.end method

.method public final updateStatusIcon(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference;->mStatusIcon:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference;->mStatusIcon:Landroid/widget/ImageButton;

    const p1, 0x7f0806bc

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/SecIntelligentFeaturesPreference;->mStatusIcon:Landroid/widget/ImageButton;

    const p1, 0x7f0806bf

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method
