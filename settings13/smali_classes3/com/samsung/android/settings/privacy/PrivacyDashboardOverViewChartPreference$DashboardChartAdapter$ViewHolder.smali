.class public Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PrivacyDashboardOverViewChartPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mPermissionImgView:Landroid/widget/ImageView;

.field mPermissionNameView:Landroid/widget/TextView;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mUsageBar:Landroid/widget/LinearLayout;

.field mUsageCount:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;Landroid/view/View;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->this$1:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;

    .line 188
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 189
    sget p1, Lcom/android/settings/R$id;->permission_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mPermissionImgView:Landroid/widget/ImageView;

    .line 190
    sget p1, Lcom/android/settings/R$id;->permission_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mPermissionNameView:Landroid/widget/TextView;

    .line 191
    sget p1, Lcom/android/settings/R$id;->usage_bar:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageBar:Landroid/widget/LinearLayout;

    .line 192
    sget p1, Lcom/android/settings/R$id;->usage_count:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageCount:Landroid/widget/TextView;

    .line 193
    sget p1, Lcom/android/settings/R$id;->progress_bar:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method
