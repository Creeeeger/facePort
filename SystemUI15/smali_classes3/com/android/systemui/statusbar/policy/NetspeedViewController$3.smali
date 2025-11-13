.class Lcom/android/systemui/statusbar/policy/NetspeedViewController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$3;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 2

    const-string p1, "NetspeedViewController"

    const-string p2, "onUserSwitched"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$3;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->access$000(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetspeedView;

    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedViewController$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
