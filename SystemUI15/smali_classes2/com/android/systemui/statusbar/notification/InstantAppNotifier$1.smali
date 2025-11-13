.class Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1;->this$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1;->this$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
