.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda26;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda26;->f$1:I

    iput-boolean p3, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda26;->f$2:Z

    iput-object p4, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda26;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda26;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda26;->f$1:I

    iget-boolean v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda26;->f$2:Z

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda26;->f$3:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSamsungScreenPinningRequest:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->showPrompt(IZLjava/lang/String;)V

    return-void
.end method
