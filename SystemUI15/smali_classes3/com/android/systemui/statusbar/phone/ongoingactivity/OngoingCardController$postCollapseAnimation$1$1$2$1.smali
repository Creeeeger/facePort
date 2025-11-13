.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1$2$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1$2$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onDestroy(Z)V

    return-void
.end method
