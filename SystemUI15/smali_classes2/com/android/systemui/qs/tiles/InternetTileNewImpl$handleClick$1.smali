.class public final Lcom/android/systemui/qs/tiles/InternetTileNewImpl$handleClick$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $expandable:Lcom/android/systemui/animation/Expandable;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/InternetTileNewImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/InternetTileNewImpl;Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl$handleClick$1;->this$0:Lcom/android/systemui/qs/tiles/InternetTileNewImpl;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl$handleClick$1;->$expandable:Lcom/android/systemui/animation/Expandable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl$handleClick$1;->this$0:Lcom/android/systemui/qs/tiles/InternetTileNewImpl;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl;->internetDialogManager:Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl;->accessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->canConfigMobileData()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl$handleClick$1;->this$0:Lcom/android/systemui/qs/tiles/InternetTileNewImpl;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/InternetTileNewImpl;->accessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->canConfigWifi()Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl$handleClick$1;->$expandable:Lcom/android/systemui/animation/Expandable;

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->create(ZZLcom/android/systemui/animation/Expandable;)V

    return-void
.end method
