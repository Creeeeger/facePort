.class Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$10;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->initDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

.field final synthetic val$filter:I

.field final synthetic val$order:I

.field final synthetic val$showSystem:Z


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;ZII)V
    .locals 0

    .line 4008
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$10;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iput-boolean p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$10;->val$showSystem:Z

    iput p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$10;->val$filter:I

    iput p4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$10;->val$order:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 4011
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$10;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$10;->val$showSystem:Z

    invoke-static {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fputmShowSystem(Lcom/android/settings/applications/manageapplications/ManageApplications;Z)V

    .line 4012
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$10;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$10;->val$filter:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fputmFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;)V

    .line 4013
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$10;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$10;->val$order:I

    iput p0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    return-void
.end method
