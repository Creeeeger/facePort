.class public final Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;->this$1:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;->this$1:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method
