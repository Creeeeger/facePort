.class public Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;
.super Ljava/lang/Object;
.source "SemTipPopupWrapper.java"


# instance fields
.field private final blacklist BIXBY_TOOLTIP_DISPLAY_LIMIT_COUNT:I

.field private blacklist mContent:Landroid/text/SpannableString;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mKey:Ljava/lang/String;

.field private blacklist mPopup:Lcom/samsung/android/widget/SemTipPopup;

.field private blacklist mPrefrerences:Landroid/content/SharedPreferences;

.field private blacklist mTitle:Landroid/text/SpannableString;


# direct methods
.method public static synthetic blacklist $r8$lambda$8poRK6e3nB0AwByx7m0yrd1OIHY(Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->lambda$show$0(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->BIXBY_TOOLTIP_DISPLAY_LIMIT_COUNT:I

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mTitle:Landroid/text/SpannableString;

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContent:Landroid/text/SpannableString;

    return-void
.end method

.method private blacklist addCount(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPrefrerences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    const-string v2, "count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic blacklist lambda$show$0(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->hideTipPermanently()V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method public blacklist hideTipPermanently()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPrefrerences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "count"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public blacklist init(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {v0, p1}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPrefrerences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/16 v1, 0x8c

    const/16 v3, 0xff

    invoke-static {v2, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    return-void
.end method

.method public blacklist setContent(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContent:Landroid/text/SpannableString;

    return-void
.end method

.method public blacklist setTitle(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mTitle:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mTitle:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mTitle:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public blacklist show(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mTitle:Landroid/text/SpannableString;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mTitle:Landroid/text/SpannableString;

    aput-object v4, v3, v1

    const-string v4, "\n\n"

    aput-object v4, v3, v2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContent:Landroid/text/SpannableString;

    aput-object v5, v3, v4

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v3, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContent:Landroid/text/SpannableString;

    invoke-virtual {v0, v3}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPrefrerences:Landroid/content/SharedPreferences;

    const-string v3, "count"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_2

    return-void

    :cond_2
    if-ne v0, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    new-instance v2, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->addCount(I)V

    return-void
.end method

.method public blacklist update()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->update()V

    return-void
.end method
