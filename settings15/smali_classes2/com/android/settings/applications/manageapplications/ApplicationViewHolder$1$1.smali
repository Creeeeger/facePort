.class public final Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1$1;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$1:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;

.field public final synthetic val$cloneBackend:Lcom/android/settings/applications/manageapplications/CloneBackend;

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;Lcom/android/settings/applications/manageapplications/CloneBackend;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1$1;->this$1:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1$1;->val$cloneBackend:Lcom/android/settings/applications/manageapplications/CloneBackend;

    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1$1;->val$cloneBackend:Lcom/android/settings/applications/manageapplications/CloneBackend;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/CloneBackend;->installCloneApp(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1$1;->this$1:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1$1;->this$1:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAddIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1$1;->this$1:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1$1;->this$1:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->val$adapter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    :goto_0
    return-void
.end method
