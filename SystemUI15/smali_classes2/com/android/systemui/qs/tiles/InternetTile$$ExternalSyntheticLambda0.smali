.class public final synthetic Lcom/android/systemui/qs/tiles/InternetTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/InternetTile;

.field public final synthetic f$1:Lcom/android/systemui/animation/Expandable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/InternetTile;Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/InternetTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/InternetTile$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/animation/Expandable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/InternetTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/animation/Expandable;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/InternetTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->canConfigMobileData()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->canConfigWifi()Z

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/InternetTile;->mInternetDialogManager:Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->create(ZZLcom/android/systemui/animation/Expandable;)V

    return-void
.end method
