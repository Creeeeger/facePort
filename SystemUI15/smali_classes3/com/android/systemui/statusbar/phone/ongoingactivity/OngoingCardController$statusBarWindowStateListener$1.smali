.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$statusBarWindowStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/window/StatusBarWindowStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$statusBarWindowStateListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusBarWindowStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$statusBarWindowStateListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->statusBarVisibility:I

    return-void
.end method
