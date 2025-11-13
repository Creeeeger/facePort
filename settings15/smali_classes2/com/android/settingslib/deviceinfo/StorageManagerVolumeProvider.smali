.class public final Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;


# instance fields
.field public final mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method
