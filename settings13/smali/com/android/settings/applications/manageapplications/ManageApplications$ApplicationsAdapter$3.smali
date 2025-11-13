.class Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$3;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onBindHeaderViewHolder(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
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

    .line 3849
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$3;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 3852
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$3;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fputmHasEnabledEntry(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)V

    .line 3853
    new-instance p1, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;

    invoke-direct {p1}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;-><init>()V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$3;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmContext(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$3;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmEntries(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$3;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmExtraInfoBridge(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->setAllAppsNotAllow(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/settings/applications/AppStateBaseBridge;)V

    return-void
.end method
