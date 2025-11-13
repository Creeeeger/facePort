.class public final Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;
.super Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;)V

    return-void
.end method


# virtual methods
.method public final getDetailSummary()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130e6c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130e6d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
