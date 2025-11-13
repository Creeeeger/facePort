.class public final synthetic Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/users/EditUserPhotoController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/EditUserPhotoController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda3;->f$0:Lcom/android/settingslib/users/EditUserPhotoController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda3;->f$0:Lcom/android/settingslib/users/EditUserPhotoController;

    invoke-virtual {p0}, Lcom/android/settingslib/users/EditUserPhotoController;->saveNewUserPhotoBitmap()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mCachedDrawablePath:Ljava/lang/String;

    return-void
.end method
