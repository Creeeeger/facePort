.class public final Lcom/android/settingslib/users/CreateUserDialogController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final synthetic val$userPhotoView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/users/CreateUserDialogController;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settingslib/users/CreateUserDialogController$1;->val$userPhotoView:Landroid/widget/ImageView;

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

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController$1;->val$userPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
