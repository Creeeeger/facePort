.class public final Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$5;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$5;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPressedApply:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->updateBottomButtonContainer(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$5;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void
.end method
