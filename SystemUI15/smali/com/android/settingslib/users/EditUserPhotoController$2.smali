.class public final Lcom/android/settingslib/users/EditUserPhotoController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/users/EditUserPhotoController;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/users/EditUserPhotoController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController$2;->this$0:Lcom/android/settingslib/users/EditUserPhotoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController$2;->this$0:Lcom/android/settingslib/users/EditUserPhotoController;

    invoke-static {p0, p1}, Lcom/android/settingslib/users/EditUserPhotoController;->-$$Nest$monPhotoProcessed(Lcom/android/settingslib/users/EditUserPhotoController;Landroid/graphics/Bitmap;)V

    return-void
.end method
