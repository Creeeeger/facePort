.class public final Lcom/android/settings/datausage/DataUsageSummaryPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

.field public final synthetic val$animator:Landroid/animation/ValueAnimator;

.field public final synthetic val$usedResult:Landroid/text/format/Formatter$BytesResult;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;Landroid/animation/ValueAnimator;Landroid/text/format/Formatter$BytesResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->val$animator:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->val$usedResult:Landroid/text/format/Formatter$BytesResult;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iget v2, v1, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageTemplate:I

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->val$animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->val$usedResult:Landroid/text/format/Formatter$BytesResult;

    iget-object v5, v5, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const-string v6, ""

    filled-new-array {v3, v6, v5}, [Ljava/lang/Object;

    move-result-object v3

    const v5, 0x7f140f62

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->val$animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->val$usedResult:Landroid/text/format/Formatter$BytesResult;

    iget-object v2, v2, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    filled-new-array {v1, v6, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->smallSpanExcept$1(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
