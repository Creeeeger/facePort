.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$pluginLockListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$pluginLockListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewModeChanged(I)V
    .locals 2

    const-string v0, "onViewModeChanged mode: "

    const-string v1, "SubscreenNotificationListCoordinator"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$pluginLockListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->access$setPluginLockMode$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;I)V

    return-void
.end method
