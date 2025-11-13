.class public final Lcom/android/systemui/bixby2/controller/mediacontrol/RewindController;
.super Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;-><init>()V

    return-void
.end method


# virtual methods
.method public action()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->isPlayingOrFocused()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->isValidAction(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x59

    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->sendMediaKeyEvent(I)V

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 v0, 0x1

    const-string/jumbo v1, "success"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string v0, "NoSupportFeature"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string v0, "MediaNotPlaying"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object p0
.end method
