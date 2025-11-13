.class Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$1;
.super Ljava/lang/Object;
.source "PrivacyDashboardOverViewChartPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;I)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$1;->this$1:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;

    iput p2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 266
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.REVIEW_PERMISSION_USAGE_DETAIL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "PERMISSION_GROUP_ID"

    .line 267
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$1;->this$1:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPrivacyOverViewPermissionId:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$1;->val$position:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "START_TIME"

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$1;->this$1:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget v3, v3, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mDuration:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "END_TIME"

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "INCLUDE_SYSTEM_APP"

    const/4 v1, 0x0

    .line 270
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$1;->this$1:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 272
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$1;->this$1:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPrivacyOverViewPermissionId:[Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$1;->val$position:I

    aget-object p0, v0, p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$minsertEventLogging(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 274
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
