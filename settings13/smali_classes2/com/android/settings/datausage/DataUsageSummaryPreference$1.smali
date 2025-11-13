.class Lcom/android/settings/datausage/DataUsageSummaryPreference$1;
.super Ljava/lang/Object;
.source "DataUsageSummaryPreference.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateDataUsageLabels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

.field final synthetic val$animator:Landroid/animation/ValueAnimator;

.field final synthetic val$usedResult:Landroid/text/format/Formatter$BytesResult;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;Landroid/animation/ValueAnimator;Landroid/text/format/Formatter$BytesResult;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->val$animator:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->val$usedResult:Landroid/text/format/Formatter$BytesResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13

    .line 390
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->-$$Nest$fgetmDataUsageTemplate(Lcom/android/settings/datausage/DataUsageSummaryPreference;)I

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->fileSizeSuffix:I

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->val$animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string v9, "%d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string v8, ""

    aput-object v8, v7, v2

    iget-object v11, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->val$usedResult:Landroid/text/format/Formatter$BytesResult;

    iget-object v11, v11, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v12, 0x2

    aput-object v11, v7, v12

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->val$animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    aput-object v8, v1, v2

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->val$usedResult:Landroid/text/format/Formatter$BytesResult;

    iget-object v2, v2, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v2, v1, v12

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->-$$Nest$smsmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V

    .line 392
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->-$$Nest$fgetmUsageTitle(Lcom/android/settings/datausage/DataUsageSummaryPreference;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
