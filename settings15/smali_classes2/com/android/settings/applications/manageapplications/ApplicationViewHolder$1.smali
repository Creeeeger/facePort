.class public final Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

.field public final synthetic val$adapter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field public final synthetic val$manageApplicationsActivity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->val$entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iput-object p4, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->val$adapter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iput-object p5, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->val$manageApplicationsActivity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/CloneBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/manageapplications/CloneBackend;

    move-result-object p1

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->val$entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v3, v3, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isClonedProfile()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->val$context:Landroid/content/Context;

    const/16 v4, 0x70f

    new-array v5, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAddIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v1, v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    const v4, 0x7f14095e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateDisableTextToSummary()V

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSummaryVisibility()V

    new-instance v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1$1;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1$1;-><init>(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;Lcom/android/settings/applications/manageapplications/CloneBackend;Ljava/lang/String;)V

    new-array p0, v3, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->val$entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isClonedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->val$context:Landroid/content/Context;

    const/16 v4, 0x710

    new-array v5, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$1;->val$manageApplicationsActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v0, p1, Lcom/android/settings/applications/manageapplications/CloneBackend;->mCloneUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/CloneBackend;->mCloneUserId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
