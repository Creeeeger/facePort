.class Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$11;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setOnClickListenerAtPref(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    .line 4414
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$11;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 4417
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4420
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$11;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v0

    const v1, 0xeace

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 4421
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$11;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmContext(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4424
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
