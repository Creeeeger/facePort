.class Lcom/android/systemui/recents/OverviewProxyService$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$6;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$6;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    const-string p1, "User changed"

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser(Ljava/lang/String;)V

    return-void
.end method
