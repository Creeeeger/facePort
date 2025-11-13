.class Lcom/android/settings/applications/manageapplications/ManageApplications$1;
.super Landroid/os/Handler;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 452
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmApplications(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 453
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmApplications(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 454
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmApplications(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 455
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmApplications(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateLoading()V

    :cond_0
    return-void
.end method
