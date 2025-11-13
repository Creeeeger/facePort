.class public final Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;)V

    return-void
.end method


# virtual methods
.method public final onCountdown(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    iput-wide p1, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->mMillisUntilFinished:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCountdownEnd()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final onRecordingEnd()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final onRecordingStart()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
