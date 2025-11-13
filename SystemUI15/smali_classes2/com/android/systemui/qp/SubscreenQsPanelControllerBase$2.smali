.class public final Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$2;->this$0:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$2;->this$0:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mContext:Landroid/content/Context;

    const-string v0, "com.android.systemui.qp.customize.SubscreenCustomizerActivity"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
