.class public final synthetic Lcom/samsung/android/settings/uwb/labs/UwbLabsMainFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/uwb/UwbManager$AdapterStateCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/uwb/labs/UwbLabsMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/uwb/labs/UwbLabsMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/UwbLabsMainFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/uwb/labs/UwbLabsMainFragment;

    return-void
.end method


# virtual methods
.method public final onStateChanged(II)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/UwbLabsMainFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/uwb/labs/UwbLabsMainFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "UwbLabsMainFragment"

    const-string v1, "+++ UWB Adapter state callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/UwbLabsMainFragment;->uwbStateHandler:Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedListener;->onUpdatedState(II)V

    goto :goto_0

    :cond_0
    return-void
.end method
