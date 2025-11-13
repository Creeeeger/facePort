.class Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$isSystemSwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Landroid/widget/Switch;)V
    .locals 0

    .line 3978
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;->val$isSystemSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 3981
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;->val$isSystemSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fputmShowSystem(Lcom/android/settings/applications/manageapplications/ManageApplications;Z)V

    .line 3982
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$msetCompositeFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    .line 3983
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmRecyclerView(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$misFastScrollEnabled(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    .line 3984
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmApplications(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3985
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmApplications(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmFilter(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setFilter(Lcom/android/settings/applications/manageapplications/AppFilterItem;)V

    .line 3986
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmApplications(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$8;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object p0

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(IZ)V

    .line 3988
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
