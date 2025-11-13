.class public Lcom/samsung/android/settings/widget/SecClickableTextPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBeginIndex:I

.field public mClickableSpan:Landroid/text/style/ClickableSpan;

.field public mEndIndex:I

.field public mForegroundColor:I

.field public mTextStyle:I

.field public mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecClickableTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecClickableTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mTextStyle:I

    const p1, -0xffff01

    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mForegroundColor:I

    const p1, 0x7f0d09f4

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a1041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mClickableSpan:Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mEndIndex:I

    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mBeginIndex:I

    if-le v0, v1, :cond_0

    new-instance v0, Landroid/text/style/StyleSpan;

    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mTextStyle:I

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mBeginIndex:I

    iget v2, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mEndIndex:I

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mClickableSpan:Landroid/text/style/ClickableSpan;

    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mBeginIndex:I

    iget v2, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mEndIndex:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mForegroundColor:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mBeginIndex:I

    iget v2, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mEndIndex:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
