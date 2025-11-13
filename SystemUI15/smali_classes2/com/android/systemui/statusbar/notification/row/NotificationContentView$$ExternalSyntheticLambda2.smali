.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Landroid/app/Notification;

    sget v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/Notification;->isColorized()Z

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v2, :cond_0

    iget v3, p1, Landroid/app/Notification;->color:I

    invoke-virtual {v2, p0, v3, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setBackgroundTintColor(IIZ)V

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/app/Notification;->color:I

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setBackgroundTintColor(IIZ)V

    :cond_1
    return-void
.end method
