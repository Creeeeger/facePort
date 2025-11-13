.class public final Lcom/android/settingslib/users/EditUserPhotoController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settingslib/users/EditUserPhotoController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/EditUserPhotoController;I)V
    .locals 0

    iput p2, p0, Lcom/android/settingslib/users/EditUserPhotoController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController$1;->this$0:Lcom/android/settingslib/users/EditUserPhotoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onFailure$com$android$settingslib$users$EditUserPhotoController$2(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget p0, p0, Lcom/android/settingslib/users/EditUserPhotoController$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p0, "EditUserPhotoController"

    const-string v0, "Error processing default icon"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/settingslib/users/EditUserPhotoController$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController$1;->this$0:Lcom/android/settingslib/users/EditUserPhotoController;

    invoke-static {p0, p1}, Lcom/android/settingslib/users/EditUserPhotoController;->-$$Nest$monPhotoProcessed(Lcom/android/settingslib/users/EditUserPhotoController;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController$1;->this$0:Lcom/android/settingslib/users/EditUserPhotoController;

    invoke-static {p0, p1}, Lcom/android/settingslib/users/EditUserPhotoController;->-$$Nest$monPhotoProcessed(Lcom/android/settingslib/users/EditUserPhotoController;Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
