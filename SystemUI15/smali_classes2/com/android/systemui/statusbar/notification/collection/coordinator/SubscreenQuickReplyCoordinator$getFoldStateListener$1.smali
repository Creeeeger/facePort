.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$getFoldStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$getFoldStateListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$getFoldStateListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->setMIsFolded(Z)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$getFoldStateListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->getMQuickReplyExtender()Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;->endAllLifetimeExtensions()V

    :cond_0
    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 0

    return-void
.end method
