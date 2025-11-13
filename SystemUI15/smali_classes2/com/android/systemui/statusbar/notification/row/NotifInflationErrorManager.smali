.class public final Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mErroredNotifs:Landroidx/collection/ArraySet;

.field public final mListeners:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->mErroredNotifs:Landroidx/collection/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->mListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final clearInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->mErroredNotifs:Landroidx/collection/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->mErroredNotifs:Landroidx/collection/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager$NotifInflationErrorListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager$NotifInflationErrorListener;->onNotifInflationErrorCleared(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->mErroredNotifs:Landroidx/collection/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager$NotifInflationErrorListener;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager$NotifInflationErrorListener;->onNotifInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
