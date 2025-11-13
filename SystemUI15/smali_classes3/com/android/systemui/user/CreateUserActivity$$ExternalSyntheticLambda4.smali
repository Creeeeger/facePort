.class public final synthetic Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/user/CreateUserActivity;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/user/CreateUserActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    iput-object p2, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;->f$1:Landroid/content/Intent;

    const/16 p1, 0x3ec

    iput p1, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;->f$1:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    iget-object v2, v1, Lcom/android/systemui/user/CreateUserActivity;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    iget p0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;->f$2:I

    invoke-virtual {v1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v3
.end method
