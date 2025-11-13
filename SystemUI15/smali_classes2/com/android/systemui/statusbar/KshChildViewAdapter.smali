.class public final Lcom/android/systemui/statusbar/KshChildViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mData:Ljava/util/List;

.field public final mDefaultFont:Landroid/graphics/Typeface;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mKshData:Lcom/android/systemui/statusbar/model/KshData;

.field public final mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance p2, Lcom/android/systemui/statusbar/model/KshDataUtils;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/model/KshDataUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;

    :try_start_0
    const-string p1, "/system/fonts/OneUISans-VF.ttf"

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mDefaultFont:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "KshChildViewAdapter"

    const-string p1, "/system/fonts/OneUISans-VF.ttf is not enabled"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    check-cast p1, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/KeyboardShortcutInfo;

    iget-object v0, p1, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    iget-object v3, v3, Lcom/android/systemui/statusbar/model/KshData;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080bc1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->keywordView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->shortcutKeysContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getModifiers()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    iget-object v7, v0, Lcom/android/systemui/statusbar/model/KshData;->mModifierDrawables:Landroid/util/SparseArray;

    move v8, v2

    :goto_0
    iget-object v9, v1, Lcom/android/systemui/statusbar/model/KshDataUtils;->mModifierList:[I

    array-length v10, v9

    if-ge v8, v10, :cond_4

    aget v9, v9, v8

    and-int v10, v4, v9

    if-eqz v10, :cond_3

    new-instance v10, Lcom/android/systemui/statusbar/model/StringDrawableContainer;

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/Drawable;

    invoke-direct {v10, v11, v12, v5}, Lcom/android/systemui/statusbar/model/StringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    not-int v9, v9

    and-int/2addr v4, v9

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    move-object v3, v5

    :cond_5
    :goto_1
    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v1

    iget-object v4, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawableDescriptions:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    move-result v7

    if-lez v7, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_7
    iget-object p2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_2
    if-nez p2, :cond_b

    if-nez v1, :cond_8

    :goto_3
    move-object v5, v3

    goto :goto_5

    :cond_8
    iget-object p2, v0, Lcom/android/systemui/statusbar/model/KshData;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p2, v1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_9
    iget-object p2, v0, Lcom/android/systemui/statusbar/model/KshData;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p2, v1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_a
    move-object p2, v5

    :goto_4
    if-nez p2, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Lcom/android/systemui/statusbar/model/StringDrawableContainer;

    invoke-direct {v0, p2, v4, v6}, Lcom/android/systemui/statusbar/model/StringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :goto_5
    if-eqz v5, :cond_f

    move p2, v2

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_10

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/model/StringDrawableContainer;

    iget-object v1, v0, Lcom/android/systemui/statusbar/model/StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0330

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/model/StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/model/StringDrawableContainer;->mDrawableDescription:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_c
    iget-object v0, v0, Lcom/android/systemui/statusbar/model/StringDrawableContainer;->mString:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0331

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mDefaultFont:Landroid/graphics/Typeface;

    if-eqz v3, :cond_d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_e
    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_f
    const-string p0, "KshChildViewAdapter"

    const-string p1, "Keyboard Shortcut contains unsupported keys, skipping."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d032e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;-><init>(Lcom/android/systemui/statusbar/KshChildViewAdapter;Landroid/view/View;)V

    return-object p2
.end method
