.class public final Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$1;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$1;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$mcallPermissionUsageDetail(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;I)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$1;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$mcallPermissionUsageDetail(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;I)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$1;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$mcallPermissionUsageDetail(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;I)V

    return-void

    :pswitch_2
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$1;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.REVIEW_PERMISSION_USAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 p0, 0x2348

    const p1, 0xe6df

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
