.class public final Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActionButtonClickListener:Landroid/view/View$OnClickListener;

.field public mActionButtonContainer:Landroid/widget/LinearLayout;

.field public mActionButtonText:Ljava/lang/String;

.field public mActionButtonTextView:Landroid/widget/TextView;

.field public final mContext:Landroid/content/Context;

.field public mExitButtonClickListener:Landroid/view/View$OnClickListener;

.field public mExitView:Landroid/widget/ImageView;

.field public mIcon:Landroid/graphics/drawable/Icon;

.field public mIconView:Landroid/widget/ImageView;

.field public mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mShortcutId:Ljava/lang/String;

.field public mSummary:Landroid/widget/TextView;

.field public mSummaryText:Ljava/lang/CharSequence;

.field public mTitle:Landroid/widget/TextView;

.field public mTitleText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroidx/preference/Preference;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mExitButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mContext:Landroid/content/Context;

    const p0, 0x7f0d0906

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public final setActionButtonText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
