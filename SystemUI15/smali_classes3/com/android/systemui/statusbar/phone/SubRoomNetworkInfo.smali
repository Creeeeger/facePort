.class public final Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/subscreen/SubRoom;


# instance fields
.field public isAirplane:Z

.field public modeIcon:[B

.field public noServiceType:I

.field public stateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCloseFinished()V
    .locals 0

    return-void
.end method

.method public final onCloseStarted()V
    .locals 0

    return-void
.end method

.method public final onOpenFinished()V
    .locals 0

    return-void
.end method

.method public final onOpenStarted()V
    .locals 0

    return-void
.end method

.method public final removeListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->stateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    return-void
.end method

.method public final request(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "STATE_NETWORK_INFO"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p1, "airplane"

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->isAirplane:Z

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "no_siginal"

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->noServiceType:I

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "routine_mode"

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->modeIcon:[B

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    return-object p2
.end method

.method public final setListener(Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->stateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    return-void
.end method
