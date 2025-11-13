.class public final Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyItemController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/android/systemui/privacy/PrivacyItemController$Callback;->onPrivacyItemsChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method
