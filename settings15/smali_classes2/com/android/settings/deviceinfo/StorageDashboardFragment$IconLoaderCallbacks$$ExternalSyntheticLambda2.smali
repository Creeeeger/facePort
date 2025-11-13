.class public final synthetic Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;

    return-void
.end method


# virtual methods
.method public final getUserIcons()Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader;->loadUserIconsWithContext(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method
