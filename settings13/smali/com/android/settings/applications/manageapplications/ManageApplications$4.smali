.class Lcom/android/settings/applications/manageapplications/ManageApplications$4;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    .line 1913
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1916
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$misFastScrollEnabled(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    .line 1917
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmApplications(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1918
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->-$$Nest$fgetmApplications(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$4;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(IZ)V

    .line 1920
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
