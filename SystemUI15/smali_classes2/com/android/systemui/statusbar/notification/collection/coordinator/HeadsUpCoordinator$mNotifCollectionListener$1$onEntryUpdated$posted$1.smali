.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction;"
    }
.end annotation


# instance fields
.field final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic $isBinding:Z

.field final synthetic $isHeadsUpEntry:Z

.field final synthetic $isHunFromBrief:Z

.field final synthetic $shouldHeadsUpAgain:Z

.field final synthetic $shouldHeadsUpEver:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$shouldHeadsUpEver:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$isHunFromBrief:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$shouldHeadsUpAgain:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$isHeadsUpEntry:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$isBinding:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;
    .locals 13

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$shouldHeadsUpEver:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$isHunFromBrief:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$shouldHeadsUpAgain:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$isHeadsUpEntry:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$isBinding:Z

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->setWasUpdated(Z)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getShouldHeadsUpEver()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->setShouldHeadsUpEver(Z)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getShouldHeadsUpAgain()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    move p1, v0

    :cond_3
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->setShouldHeadsUpAgain(Z)V

    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->setHeadsUpEntry(Z)V

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->setBinding(Z)V

    goto :goto_4

    :cond_4
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$shouldHeadsUpEver:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$isHunFromBrief:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v9, p1

    goto :goto_3

    :cond_6
    :goto_2
    move v9, v0

    :goto_3
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$shouldHeadsUpAgain:Z

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$isHeadsUpEntry:Z

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->$isBinding:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZ)V

    :goto_4
    return-object p2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;->apply(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    move-result-object p0

    return-object p0
.end method
