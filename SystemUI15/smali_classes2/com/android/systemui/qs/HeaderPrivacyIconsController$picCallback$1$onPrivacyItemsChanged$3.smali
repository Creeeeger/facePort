.class public final Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1$onPrivacyItemsChanged$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

.field public final synthetic this$1:Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1$onPrivacyItemsChanged$3;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iput-object p2, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1$onPrivacyItemsChanged$3;->this$1:Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1$onPrivacyItemsChanged$3;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v3, v3, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    sget-object v4, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v3, v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1$onPrivacyItemsChanged$3;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->getRecentLocationPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1$onPrivacyItemsChanged$3;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->getRecentLocationPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Do executeDelayed  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeaderPrivacyIconsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1$onPrivacyItemsChanged$3;->this$1:Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1$onPrivacyItemsChanged$3;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->onPrivacyItemsChanged(Ljava/util/List;)V

    :cond_2
    return-void
.end method
