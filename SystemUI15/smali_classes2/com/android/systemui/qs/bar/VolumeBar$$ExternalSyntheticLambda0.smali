.class public final synthetic Lcom/android/systemui/qs/bar/VolumeBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/bar/VolumeBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/VolumeBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/VolumeBar;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/VolumeBar;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mSecQSDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mSoundCraftQpDetailAdapter:Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/SecQSDetailController;->showTargetDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1010"

    const-string v0, "QUICK_PANEL_LAYOUT"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunstoneEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "QPD101"

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
