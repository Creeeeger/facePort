.class public final synthetic Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mPulseSupressed:Z

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodNotificationIcons()V

    return-void
.end method
