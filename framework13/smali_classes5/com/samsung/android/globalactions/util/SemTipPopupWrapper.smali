.class public Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;
.super Ljava/lang/Object;
.source "SemTipPopupWrapper.java"


# static fields
.field private static final blacklist BIXBY_TOOLTIP_DISPLAY_LIMIT_COUNT:I = 0x5


# instance fields
.field private blacklist mContent:Landroid/text/SpannableString;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mKey:Ljava/lang/String;

.field private blacklist mPopup:Lcom/samsung/android/widget/SemTipPopup;

.field private blacklist mPrefrerences:Landroid/content/SharedPreferences;

.field private blacklist mTitle:Landroid/text/SpannableString;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContext:Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mTitle:Landroid/text/SpannableString;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContent:Landroid/text/SpannableString;

    .line 28
    return-void
.end method

.method private blacklist addCount(I)V
    .locals 3
    .param p1, "count"    # I

    .line 75
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPrefrerences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    add-int/lit8 v1, p1, 0x1

    const-string v2, "count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method public blacklist hideTipPermanently()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPrefrerences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "count"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    return-void
.end method

.method public blacklist init(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {v0, p1}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mKey:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPrefrerences:Landroid/content/SharedPreferences;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/16 v2, 0x8c

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->setBackgroundColor(I)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    .line 37
    return-void
.end method

.method synthetic blacklist lambda$show$0$com-samsung-android-globalactions-util-SemTipPopupWrapper(I)V
    .locals 1
    .param p1, "v"    # I

    .line 67
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->hideTipPermanently()V

    .line 70
    :cond_0
    return-void
.end method

.method public blacklist setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContent:Landroid/text/SpannableString;

    .line 47
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mTitle:Landroid/text/SpannableString;

    .line 41
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mTitle:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 43
    return-void
.end method

.method public blacklist show(I)V
    .locals 6
    .param p1, "direction"    # I

    .line 50
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mTitle:Landroid/text/SpannableString;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 52
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v1, v4, v2

    const-string v1, "\n\n"

    aput-object v1, v4, v3

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContent:Landroid/text/SpannableString;

    aput-object v5, v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContent:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPrefrerences:Landroid/content/SharedPreferences;

    const-string v1, "count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, "count":I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 59
    return-void

    .line 60
    :cond_2
    if-ne v0, v3, :cond_3

    .line 61
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    goto :goto_1

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 65
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    .line 66
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    new-instance v2, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    .line 71
    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->addCount(I)V

    .line 72
    return-void
.end method

.method public blacklist update()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->update()V

    .line 88
    return-void
.end method
