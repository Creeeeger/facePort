.class public final Lcom/android/settings/applications/manageapplications/ManageApplications$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$5;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$5;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mTmpSortOrder:I

    iput v0, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    iget-object v0, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->isFastScrollEnabled$1()Z

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$5;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz p2, :cond_0

    iget p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(IZ)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
