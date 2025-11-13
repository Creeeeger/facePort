.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda2;->f$2:I

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->mUpdateListenerSet:Ljava/util/HashSet;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
