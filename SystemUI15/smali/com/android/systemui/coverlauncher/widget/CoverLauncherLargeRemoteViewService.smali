.class public final Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeRemoteViewService;
.super Landroid/widget/RemoteViewsService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 1

    new-instance v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
