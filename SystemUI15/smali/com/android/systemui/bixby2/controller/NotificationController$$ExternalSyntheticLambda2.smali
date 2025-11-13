.class public final synthetic Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bixby2/controller/NotificationController;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bixby2/controller/NotificationController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/bixby2/controller/NotificationController;

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/bixby2/controller/NotificationController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v0, p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->$r8$lambda$BQOEWOw0ZvMB04j2SpnYDkjgFKU(Lcom/android/systemui/bixby2/controller/NotificationController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
