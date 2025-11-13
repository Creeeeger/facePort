.class Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onRebuildComplete(Ljava/util/ArrayList;)V
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

    .line 3208
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3211
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmHighlightTargetPosition(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3213
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmManageApplications(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/ManageApplications;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->-$$Nest$fgetmHighlightTargetPosition(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
