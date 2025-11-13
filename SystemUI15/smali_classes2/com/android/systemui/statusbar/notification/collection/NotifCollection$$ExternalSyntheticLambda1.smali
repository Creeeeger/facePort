.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mBuildListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mReadOnlyNotificationSet:Ljava/util/Collection;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPendingEntries:Ljava/util/Collection;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    const-string v1, "asynchronousUpdate"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logOnBuildList(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->rebuildListIfBefore(I)V

    :cond_0
    return-void
.end method
