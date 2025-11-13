.class public Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public defaultKey:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;

.field public final itemLayoutResId:I

.field public list:Ljava/util/List;

.field public parent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->itemLayoutResId:I

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->list:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->onBindViewHolder(Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;I)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f080cfa

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;

    iget v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->itemLayoutResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->defaultKey:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;

    invoke-interface {v0}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->defaultItem:Z

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->parent:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, p2}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;ZLcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;->guideImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    if-eqz p0, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object v4, p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;->guideImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v4, p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;->guideImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    iget-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;->guideImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_3
    iget-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;->titleView:Landroid/widget/TextView;

    if-eqz p0, :cond_8

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->label:Ljava/lang/CharSequence;

    if-eqz p2, :cond_7

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;->titleView:Landroid/widget/TextView;

    const-string/jumbo p2, "sec"

    invoke-static {p2, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz v0, :cond_6

    const/16 v3, 0x258

    goto :goto_4

    :cond_6
    const/16 v3, 0x190

    :goto_4
    invoke-static {p2, v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    :goto_5
    iget-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;->button:Landroid/widget/CompoundButton;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;->button:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_9
    return-void

    :cond_a
    :goto_6
    sget p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;->$r8$clinit:I

    const-string p0, "SingleChoicePreference"

    const-string/jumbo p1, "onBindViewHolder - wrong Item"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->itemLayoutResId:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;

    const/4 p2, 0x0

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;->$r8$clinit:I

    const-string p0, "SingleChoicePreference"

    const-string/jumbo p2, "onCreateViewHolder - ViewHolder cannot be created"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;

    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;-><init>(Landroid/view/View;)V

    :goto_1
    return-object p0
.end method
