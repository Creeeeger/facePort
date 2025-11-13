.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemPriorityCoordinator"


# instance fields
.field private final mNotifSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator$1;

    const-string v1, "SemPriority"

    const/16 v2, 0x9

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator;->mNotifSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    return-void
.end method

.method public getSectioner()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator;->mNotifSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    return-object p0
.end method
