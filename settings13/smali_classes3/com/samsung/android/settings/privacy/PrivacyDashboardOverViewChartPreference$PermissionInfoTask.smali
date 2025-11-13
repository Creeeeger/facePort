.class Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;
.super Landroid/os/AsyncTask;
.source "PrivacyDashboardOverViewChartPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;-><init>(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 117
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 127
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationRequester;->request(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$mgetOverViewAppsUsageCount(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Landroid/content/Context;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fputmUpdateFlag(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Z)V

    .line 138
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fputmLastPosition(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;I)V

    .line 139
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->setPrivacyDashboardCategoryTitle()V

    .line 140
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->access$000(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 121
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fputmUpdateFlag(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Z)V

    return-void
.end method
