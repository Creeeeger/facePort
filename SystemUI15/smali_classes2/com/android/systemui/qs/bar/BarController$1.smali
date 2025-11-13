.class public final Lcom/android/systemui/qs/bar/BarController$1;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/BarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdateQuickPanelButtons()V
    .locals 2

    const-string v0, "BarController"

    const-string v1, "onUpdateQuickPanelButtons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
