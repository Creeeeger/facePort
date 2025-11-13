.class public final synthetic Lcom/android/settings/deviceinfo/StorageDashboardFragment$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/storage/StorageEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
