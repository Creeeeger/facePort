.class final Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $forceShowHeadsUp:Z

.field final synthetic $isolatedNotifKey:Ljava/lang/String;

.field final synthetic $notifsFullyHidden:Z

.field final synthetic $showAmbient:Z

.field final synthetic $showDismissed:Z

.field final synthetic $showLowPriority:Z

.field final synthetic $showPulsing:Z

.field final synthetic $showRepliedMessages:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;ZZZZZZLjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$forceShowHeadsUp:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$showAmbient:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$showLowPriority:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$showDismissed:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$showRepliedMessages:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$showPulsing:Z

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$isolatedNotifKey:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$notifsFullyHidden:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$forceShowHeadsUp:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$showAmbient:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$showLowPriority:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$showDismissed:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$showRepliedMessages:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$showPulsing:Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$isolatedNotifKey:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;->$notifsFullyHidden:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->key:Ljava/lang/String;

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-nez v2, :cond_1

    iget-boolean v7, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isAmbient:Z

    if-eqz v7, :cond_1

    :goto_0
    move v9, v1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isSilent:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isRowDismissed:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isLastMessageFromReply:Z

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isSuppressedFromStatusBar:Z

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    if-nez v6, :cond_6

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isPulsing:Z

    if-eqz p1, :cond_6

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;->bubbles:Ljava/util/Optional;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubbles;

    if-eqz p0, :cond_7

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    invoke-virtual {p0, v8}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->isBubbleExpanded(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v9, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
