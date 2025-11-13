.class public final synthetic Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mSoundCraftQpDetailAdapterLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mSecQSDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQSDetailController;->closeTargetDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mSoundCraftQpDetailAdapterLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mSecQSDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQSDetailController;->showTargetDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
