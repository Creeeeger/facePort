.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Invalidator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final notificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 1

    const-string v0, "NotilusCoordinator"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Invalidator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator;->notificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreRenderInvalidator(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Invalidator;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator;->notificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator;)V

    iput-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mNewNotifReadListener:Lcom/android/systemui/shade/NotificationPanelViewController$NewNotifReadListener;

    return-void
.end method

.method public final getNotificationPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator;->notificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    return-object p0
.end method

.method public final updateNewNotifRead()V
    .locals 1

    const-string/jumbo v0, "updateNewNotifRead"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    return-void
.end method
