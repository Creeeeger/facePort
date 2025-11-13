.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$ongoingCallListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$ongoingCallListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOngoingCallStateChanged()V
    .locals 2

    const-string v0, "onOngoingCallStateChanged() animate:true"

    const-string/jumbo v1, "{OngoingActivityController}"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$ongoingCallListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->update$6()V

    return-void
.end method
