.class public final Landroidx/activity/ComponentActivity$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Landroidx/activity/ComponentActivity$1;

.field public final synthetic val$e:Landroid/content/IntentSender$SendIntentException;

.field public final synthetic val$requestCode:I


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity$1;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/activity/ComponentActivity$1$2;->this$1:Landroidx/activity/ComponentActivity$1;

    iput p2, p0, Landroidx/activity/ComponentActivity$1$2;->val$requestCode:I

    iput-object p3, p0, Landroidx/activity/ComponentActivity$1$2;->val$e:Landroid/content/IntentSender$SendIntentException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/ComponentActivity$1$2;->this$1:Landroidx/activity/ComponentActivity$1;

    iget v1, p0, Landroidx/activity/ComponentActivity$1$2;->val$requestCode:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    iget-object p0, p0, Landroidx/activity/ComponentActivity$1$2;->val$e:Landroid/content/IntentSender$SendIntentException;

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/activity/result/ActivityResultRegistry;->dispatchResult(IILandroid/content/Intent;)Z

    return-void
.end method
