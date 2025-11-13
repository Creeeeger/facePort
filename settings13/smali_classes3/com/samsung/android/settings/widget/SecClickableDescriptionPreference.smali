.class public Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;
.super Landroidx/preference/Preference;
.source "SecClickableDescriptionPreference.java"


# instance fields
.field private mBeginIndex:I

.field private mCustomBgColor:I

.field private mCustomBottomPadding:I

.field private mCustomTopPadding:I

.field private mDescription:Ljava/lang/String;

.field private mEndIndex:I

.field private mMessage:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBgColor:I

    .line 24
    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomTopPadding:I

    .line 25
    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBottomPadding:I

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->init()V

    return-void
.end method

.method private setCustomAttr(Landroid/view/View;)V
    .locals 3

    .line 108
    iget v0, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBgColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomTopPadding:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 112
    :cond_1
    iget p0, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBottomPadding:I

    if-ne p0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    .line 113
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private showDialogByClickOnSpannableText(Landroid/widget/TextView;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 64
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    new-instance p2, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;

    invoke-direct {p2, p0, p5}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;-><init>(Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;Ljava/lang/String;)V

    const/16 p0, 0x21

    .line 86
    invoke-virtual {v0, p2, p3, p4, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 87
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    const p5, -0xffff01

    invoke-direct {p2, p5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, p2, p3, p4, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .line 47
    sget v0, Lcom/android/settings/R$layout;->sec_widget_preference_clickable_description_layout:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 52
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 53
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 55
    sget v0, Lcom/android/settings/R$id;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->setCustomAttr(Landroid/view/View;)V

    .line 58
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mTextView:Landroid/widget/TextView;

    .line 59
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 60
    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mDescription:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mBeginIndex:I

    iget v5, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mEndIndex:I

    iget-object v6, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mMessage:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->showDialogByClickOnSpannableText(Landroid/widget/TextView;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method
