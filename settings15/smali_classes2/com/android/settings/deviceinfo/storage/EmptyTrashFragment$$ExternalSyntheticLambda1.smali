.class public final synthetic Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    iget-object p0, v0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;->mOnEmptyTrashCompleteListener:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;)V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
