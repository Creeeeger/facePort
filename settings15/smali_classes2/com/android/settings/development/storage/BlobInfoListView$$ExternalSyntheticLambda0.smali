.class public final synthetic Lcom/android/settings/development/storage/BlobInfoListView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/development/storage/BlobInfoListView;

.field public final synthetic f$1:Landroid/app/blob/BlobInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/storage/BlobInfoListView;Landroid/app/blob/BlobInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/storage/BlobInfoListView$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/development/storage/BlobInfoListView;

    iput-object p2, p0, Lcom/android/settings/development/storage/BlobInfoListView$$ExternalSyntheticLambda0;->f$1:Landroid/app/blob/BlobInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/development/storage/BlobInfoListView$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/development/storage/BlobInfoListView;

    iget-object p0, p0, Lcom/android/settings/development/storage/BlobInfoListView$$ExternalSyntheticLambda0;->f$1:Landroid/app/blob/BlobInfo;

    sget p2, Lcom/android/settings/development/storage/BlobInfoListView;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p2, p1, Lcom/android/settings/development/storage/BlobInfoListView;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    invoke-virtual {p2, p0}, Landroid/app/blob/BlobStoreManager;->deleteBlob(Landroid/app/blob/BlobInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unable to delete blob: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "BlobInfoListView"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7f142b91

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/development/storage/BlobInfoListView;->queryBlobsAndUpdateList()V

    return-void
.end method
