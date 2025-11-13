.class public final Landroidx/activity/ComponentActivity$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Landroidx/activity/ComponentActivity$1;

.field public final synthetic val$requestCode:I

.field public final synthetic val$synchronousResult:Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity$1;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/activity/ComponentActivity$1$1;->this$1:Landroidx/activity/ComponentActivity$1;

    iput p2, p0, Landroidx/activity/ComponentActivity$1$1;->val$requestCode:I

    iput-object p3, p0, Landroidx/activity/ComponentActivity$1$1;->val$synchronousResult:Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/ComponentActivity$1$1;->this$1:Landroidx/activity/ComponentActivity$1;

    iget v1, p0, Landroidx/activity/ComponentActivity$1$1;->val$requestCode:I

    iget-object p0, p0, Landroidx/activity/ComponentActivity$1$1;->val$synchronousResult:Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

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
.end method
