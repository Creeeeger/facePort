.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$dismissMediaRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$dismissMediaRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getMediaData()Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$dismissMediaRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    const-string v1, "MediaOngoingActivity"

    const-string v2, " dismissMediaRunnable dismiss!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissOngoingActivityNotification(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isMediaVisible:Z

    :cond_0
    return-void
.end method
