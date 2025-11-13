.class public final Lcom/android/systemui/shade/SecPanelSplitHelper$userChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecPanelSplitHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$userChanged$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$userChanged$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz p1, :cond_0

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->onUserSwitched(I)V

    :cond_0
    sget-object p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->USER_CHANGED:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->onChanged(Landroid/net/Uri;)V

    return-void
.end method
