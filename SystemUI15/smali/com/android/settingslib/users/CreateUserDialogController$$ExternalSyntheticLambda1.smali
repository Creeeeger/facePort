.class public final synthetic Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settingslib/users/CreateUserDialogController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/CreateUserDialogController;ZI)V
    .locals 0

    iput p3, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/users/CreateUserDialogController;

    iput-boolean p2, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/users/CreateUserDialogController;

    iget-boolean p0, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;->f$1:Z

    iget v0, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-nez p0, :cond_0

    add-int/lit8 v0, v0, -0x2

    iput v0, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/users/CreateUserDialogController;

    iget-boolean p0, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;->f$1:Z

    iget v0, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez p0, :cond_1

    add-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
