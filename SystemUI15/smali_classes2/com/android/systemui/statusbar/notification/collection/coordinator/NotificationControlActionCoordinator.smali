.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationControlActionCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationControlActionCoordinator"


# instance fields
.field private final mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;


# direct methods
.method public static synthetic $r8$lambda$MStmXTqZRGtN3e35P0ptRlej9hE(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationControlActionCoordinator;Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationControlActionCoordinator;->onAfterRenderList(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/bixby2/controller/NotificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationControlActionCoordinator;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    return-void
.end method

.method private onAfterRenderList(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationControlActionCoordinator;->mNotificationController:Lcom/android/systemui/bixby2/controller/NotificationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->setNotificationEntries(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationControlActionCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationControlActionCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationControlActionCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnAfterRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderListListener;)V

    return-void
.end method
