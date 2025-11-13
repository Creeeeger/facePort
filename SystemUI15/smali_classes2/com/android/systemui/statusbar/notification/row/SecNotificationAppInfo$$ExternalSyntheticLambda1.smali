.class public final synthetic Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPressedApply:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->updateBottomButtonContainer(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void
.end method
