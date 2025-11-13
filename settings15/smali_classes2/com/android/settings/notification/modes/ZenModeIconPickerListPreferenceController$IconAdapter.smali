.class public final Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIconResources:Lcom/google/common/collect/ImmutableList;

.field public final synthetic this$0:Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;Lcom/android/settings/notification/modes/IconOptionsProviderImpl;)V
    .locals 7

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconAdapter;->this$0:Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "Size mismatch between zen_mode_icon_options ("

    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    const/4 v0, 0x4

    const-string v1, "initialCapacity"

    invoke-static {v0, v1}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p2, Lcom/android/settings/notification/modes/IconOptionsProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030213

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    iget-object p2, p2, Lcom/android/settings/notification/modes/IconOptionsProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f030214

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    array-length v3, p2

    if-eq v2, v3, :cond_0

    const-string v2, "IconOptionsProviderImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") and zen_mode_icon_options_descriptions ("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p1, 0x0

    move v2, p1

    move v3, v2

    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    array-length v5, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {v1, v2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_2

    new-instance v5, Lcom/android/settings/notification/modes/IconOptionsProvider$IconInfo;

    aget-object v6, p2, v2

    invoke-direct {v5, v4, v6}, Lcom/android/settings/notification/modes/IconOptionsProvider$IconInfo;-><init>(ILjava/lang/String;)V

    add-int/lit8 v4, v3, 0x1

    array-length v6, v0

    if-ge v6, v4, :cond_1

    array-length v6, v0

    invoke-static {v6, v4}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :cond_1
    aput-object v5, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    invoke-static {v3, v0}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconAdapter;->mIconResources:Lcom/google/common/collect/ImmutableList;

    return-void

    :goto_2
    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconAdapter;->mIconResources:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    check-cast p1, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconAdapter;->mIconResources:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/notification/modes/IconOptionsProvider$IconInfo;

    iget-object p2, p1, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/modes/IconOptionsProvider$IconInfo;->resId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, 0x11200c5

    invoke-static {v0, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x11200b3

    invoke-static {v0, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v1, v5, v2

    invoke-direct {v3, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0714b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0714b9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int v0, v1, v0

    div-int/lit8 v9, v0, 0x2

    invoke-virtual {v3, v6, v6, v1, v1}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    const/4 v5, 0x1

    move-object v4, v3

    move v6, v9

    move v7, v9

    move v8, v9

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/notification/modes/IconOptionsProvider$IconInfo;->description:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder;Lcom/android/settings/notification/modes/IconOptionsProvider$IconInfo;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0d0486

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconAdapter;->this$0:Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder;-><init>(Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;Landroid/view/View;)V

    return-object p2
.end method
