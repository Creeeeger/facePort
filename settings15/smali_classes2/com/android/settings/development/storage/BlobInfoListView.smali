.class public Lcom/android/settings/development/storage/BlobInfoListView;
.super Landroid/app/ListActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAdapter:Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;

.field public mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

.field public mContext:Lcom/android/settings/development/storage/BlobInfoListView;

.field public mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1fac

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const p1, 0x7f142b91

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mContext:Lcom/android/settings/development/storage/BlobInfoListView;

    const-class p1, Landroid/app/blob/BlobStoreManager;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/blob/BlobStoreManager;

    iput-object p1, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    const-class p1, Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mInflater:Landroid/view/LayoutInflater;

    new-instance p1, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;-><init>(Lcom/android/settings/development/storage/BlobInfoListView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mAdapter:Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mAdapter:Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/blob/BlobInfo;

    invoke-virtual {p1}, Landroid/app/blob/BlobInfo;->getLeases()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mContext:Lcom/android/settings/development/storage/BlobInfoListView;

    invoke-direct {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f142b92

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance p3, Lcom/android/settings/development/storage/BlobInfoListView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/development/storage/BlobInfoListView$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/storage/BlobInfoListView;Landroid/app/blob/BlobInfo;)V

    const p0, 0x104000a

    invoke-virtual {p2, p0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 p0, 0x1040000

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/android/settings/development/storage/LeaseInfoListView;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "BLOB_KEY"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x1fac

    invoke-virtual {p0, p2, p1}, Landroid/app/ListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public final onNavigateUp()Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/development/storage/BlobInfoListView;->queryBlobsAndUpdateList()V

    return-void
.end method

.method public final queryBlobsAndUpdateList()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mAdapter:Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;

    iget-object v1, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/app/blob/BlobStoreManager;->queryBlobsForUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;->this$0:Lcom/android/settings/development/storage/BlobInfoListView;

    invoke-virtual {v0}, Landroid/app/ListActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to fetch blobs for current user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlobInfoListView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f142b94

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    :goto_0
    return-void
.end method
