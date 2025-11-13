.class public Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCustomBgColor:I

.field public final mCustomBottomPadding:I

.field public final mCustomTopPadding:I

.field public mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBgColor:I

    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomTopPadding:I

    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBottomPadding:I

    const p1, 0x7f0d09f3

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0412

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBgColor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomTopPadding:I

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    :cond_1
    iget v3, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBottomPadding:I

    if-ne v3, v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f0a1041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/text/SpannableString;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;-><init>(Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;)V

    const/4 p0, 0x0

    const/16 v2, 0x21

    invoke-virtual {v0, v1, p0, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v3, -0xffff01

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1, p0, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
