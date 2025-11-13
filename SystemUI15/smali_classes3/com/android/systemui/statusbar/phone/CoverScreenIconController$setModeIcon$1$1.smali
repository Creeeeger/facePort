.class public final Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $stream:Ljava/io/ByteArrayOutputStream;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CoverScreenIconController;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;->$stream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->subRoomNetworkInfo:Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;->$stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->modeIcon:[B

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->subRoomNetworkInfo:Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->stateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "airplane"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->isAirplane:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "no_siginal"

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->noServiceType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "routine_mode"

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubRoomNetworkInfo;->modeIcon:[B

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
