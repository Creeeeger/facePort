.class public Lcom/samsung/android/settings/widget/SecClickableTextPreference;
.super Landroidx/preference/Preference;
.source "SecClickableTextPreference.java"


# instance fields
.field private mBeginIndex:I

.field private mClickableSpan:Landroid/text/style/ClickableSpan;

.field private mEndIndex:I

.field private mForegroundColor:I

.field private mTextStyle:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecClickableTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecClickableTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mTextStyle:I

    const p1, -0xffff01

    .line 26
    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mForegroundColor:I

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->init()V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .line 44
    sget v0, Lcom/android/settings/R$layout;->sec_widget_preference_clickable_text_layout:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 49
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 50
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 52
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mTextView:Landroid/widget/TextView;

    .line 53
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 55
    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mClickableSpan:Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mEndIndex:I

    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mBeginIndex:I

    if-le v0, v1, :cond_0

    .line 57
    new-instance v0, Landroid/text/style/StyleSpan;

    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mTextStyle:I

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mBeginIndex:I

    iget v2, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mEndIndex:I

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mClickableSpan:Landroid/text/style/ClickableSpan;

    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mBeginIndex:I

    iget v2, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mEndIndex:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 59
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mForegroundColor:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mBeginIndex:I

    iget v2, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mEndIndex:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBeginIndex(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mBeginIndex:I

    return-void
.end method

.method public setClickableSpan(Landroid/text/style/ClickableSpan;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mClickableSpan:Landroid/text/style/ClickableSpan;

    return-void
.end method

.method public setEndIndex(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mEndIndex:I

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mForegroundColor:I

    return-void
.end method

.method public setTextStyle(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mTextStyle:I

    return-void
.end method
