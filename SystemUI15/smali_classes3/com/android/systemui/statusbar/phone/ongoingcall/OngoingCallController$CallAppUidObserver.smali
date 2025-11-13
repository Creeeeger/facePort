.class public final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;
.super Landroid/app/UidObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public callAppUid:Ljava/lang/Integer;

.field public isCallAppVisible:Z

.field public isRegistered:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUidStateChanged(IIJI)V
    .locals 0

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->callAppUid:Ljava/lang/Integer;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->isCallAppVisible:Z

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x2

    if-gt p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->isCallAppVisible:Z

    if-eq p1, p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver$onUidStateChanged$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver$onUidStateChanged$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
