.class public final synthetic Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;->mOnEmptyTrashCompleteListener:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    const/4 v5, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->updatePrivateStorageCategoryPreferencesOrder()V

    :goto_0
    return-void
.end method
