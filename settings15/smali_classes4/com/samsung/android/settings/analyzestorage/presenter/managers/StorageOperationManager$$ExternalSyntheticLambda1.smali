.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda1;->f$2:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->showToast(Landroid/content/Context;II)V

    return-void
.end method
