.class public Lcom/android/settingslib/widget/FooterPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field mIconVisibility:I

.field mLearnMoreListener:Landroid/view/View$OnClickListener;

.field public mLearnMoreSpan:Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;

.field public mLearnMoreText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0402a5

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settingslib/widget/FooterPreference;->mIconVisibility:I

    const p2, 0x7f0d02c4

    iput p2, p0, Landroidx/preference/Preference;->mLayoutResId:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v0, 0x7f081226

    invoke-static {v0, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iput v0, p0, Landroidx/preference/Preference;->mIconResId:I

    :cond_0
    iget p2, p0, Landroidx/preference/Preference;->mOrder:I

    const v0, 0x7ffffffe

    if-eq v0, p2, :cond_1

    iput v0, p0, Landroidx/preference/Preference;->mOrder:I

    iget-object p2, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    if-eqz p2, :cond_1

    iget-object v0, p2, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object p2, p2, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/preference/PreferenceGroupAdapter$1;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "footer_preference"

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 11

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    instance-of v3, v2, Landroid/text/Spanned;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move-object v3, v2

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-interface {v3, v1, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    array-length v4, v3

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    array-length v2, v3

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_6

    aget-object v6, v3, v5

    instance-of v7, v6, Landroid/text/style/URLSpan;

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    check-cast v6, Landroid/text/style/URLSpan;

    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v8, "intent:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v6}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v4, v6}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v4, v6}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    const/4 v6, 0x1

    :try_start_0
    invoke-static {v7, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    new-instance v10, Lcom/android/settingslib/widget/FooterPreference$1;

    invoke-direct {v10, p0, v6}, Lcom/android/settingslib/widget/FooterPreference$1;-><init>(Lcom/android/settingslib/widget/FooterPreference;Landroid/content/Intent;)V

    const/16 v6, 0x21

    invoke-virtual {v4, v10, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v8, "Invalid URI "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "FooterPreference"

    invoke-static {v8, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_7
    :goto_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0b3b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreText:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreText:Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreSpan:Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;

    if-eqz v3, :cond_9

    invoke-virtual {v2, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    :cond_9
    new-instance v3, Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;

    iget-object v4, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreListener:Landroid/view/View$OnClickListener;

    invoke-direct {v3, v4}, Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreSpan:Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_a
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    :goto_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a050f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c

    iget p0, p0, Lcom/android/settingslib/widget/FooterPreference;->mIconVisibility:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public final setSummary(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method public final setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
