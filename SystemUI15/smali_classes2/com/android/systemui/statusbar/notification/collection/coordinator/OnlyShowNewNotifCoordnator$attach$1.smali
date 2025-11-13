.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator$attach$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/NotificationPanelViewController$NewNotifReadListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator$attach$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNewNotificationRead()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator$attach$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator;->updateNewNotifRead()V

    return-void
.end method
