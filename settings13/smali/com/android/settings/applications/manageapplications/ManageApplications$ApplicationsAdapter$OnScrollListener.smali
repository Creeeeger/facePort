.class public Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnScrollListener"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

.field private mDelayNotifyDataChange:Z

.field private mScrollState:I


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V
    .locals 1

    .line 4237
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 4233
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mScrollState:I

    .line 4238
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 4243
    iput p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mScrollState:I

    if-nez p2, :cond_0

    .line 4244
    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mDelayNotifyDataChange:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4245
    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mDelayNotifyDataChange:Z

    .line 4246
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public postNotifyItemChange(II)V
    .locals 1

    .line 4256
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mScrollState:I

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 4257
    sget-boolean p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "ManageApplications"

    const-string v0, "postNotifyItemChange"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 4261
    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mDelayNotifyDataChange:Z

    :goto_0
    return-void
.end method
