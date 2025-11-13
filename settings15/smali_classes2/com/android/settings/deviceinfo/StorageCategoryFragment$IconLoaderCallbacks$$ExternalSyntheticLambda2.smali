.class public final synthetic Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks$$ExternalSyntheticLambda2;->f$0:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks$$ExternalSyntheticLambda2;->f$0:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;

    iget-object v0, p1, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mUser:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    iput-object p0, p1, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mUserIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
