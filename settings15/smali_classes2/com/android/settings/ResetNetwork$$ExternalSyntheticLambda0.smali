.class public final synthetic Lcom/android/settings/ResetNetwork$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/ResetNetwork;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/ResetNetwork;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/ResetNetwork$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/ResetNetwork;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/activity/result/ActivityResult;

    iget-object p0, p0, Lcom/android/settings/ResetNetwork$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/ResetNetwork;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->showFinalConfirmation()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetwork;->establishInitialState(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
