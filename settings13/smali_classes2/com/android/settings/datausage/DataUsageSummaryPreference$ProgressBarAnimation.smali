.class public Lcom/android/settings/datausage/DataUsageSummaryPreference$ProgressBarAnimation;
.super Landroid/view/animation/Animation;
.source "DataUsageSummaryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummaryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressBarAnimation"
.end annotation


# instance fields
.field private from:F

.field private progressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

.field private to:F


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;Landroid/widget/ProgressBar;FF)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$ProgressBarAnimation;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    .line 655
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 656
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$ProgressBarAnimation;->progressBar:Landroid/widget/ProgressBar;

    .line 657
    iput p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$ProgressBarAnimation;->from:F

    .line 658
    iput p4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$ProgressBarAnimation;->to:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 663
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 664
    iget p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$ProgressBarAnimation;->from:F

    iget v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$ProgressBarAnimation;->to:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    .line 665
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference$ProgressBarAnimation;->progressBar:Landroid/widget/ProgressBar;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
