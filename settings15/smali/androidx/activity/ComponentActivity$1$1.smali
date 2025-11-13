.class public final Landroidx/activity/ComponentActivity$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Landroidx/activity/ComponentActivity$1;

.field public final synthetic val$requestCode:I

.field public final synthetic val$synchronousResult:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity$1;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroidx/activity/ComponentActivity$1$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/activity/ComponentActivity$1$1;->this$1:Landroidx/activity/ComponentActivity$1;

    iput p2, p0, Landroidx/activity/ComponentActivity$1$1;->val$requestCode:I

    iput-object p3, p0, Landroidx/activity/ComponentActivity$1$1;->val$synchronousResult:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/activity/ComponentActivity$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/activity/ComponentActivity$1$1;->this$1:Landroidx/activity/ComponentActivity$1;

    iget v1, p0, Landroidx/activity/ComponentActivity$1$1;->val$requestCode:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    iget-object p0, p0, Landroidx/activity/ComponentActivity$1$1;->val$synchronousResult:Ljava/lang/Object;

    check-cast p0, Landroid/content/IntentSender$SendIntentException;

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/activity/result/ActivityResultRegistry;->dispatchResult(IILandroid/content/Intent;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity$1$1;->this$1:Landroidx/activity/ComponentActivity$1;

    iget v1, p0, Landroidx/activity/ComponentActivity$1$1;->val$requestCode:I

    iget-object p0, p0, Landroidx/activity/ComponentActivity$1$1;->val$synchronousResult:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    iget-object p0, p0, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;->value:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/activity/result/ActivityResultRegistry;->mRcToKey:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToCallback:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;

    if-eqz v2, :cond_2

    iget-object v2, v2, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->mCallback:Landroidx/activity/result/ActivityResultCallback;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroidx/activity/result/ActivityResultRegistry;->mLaunchedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2, p0}, Landroidx/activity/result/ActivityResultCallback;->onActivityResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, v0, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
