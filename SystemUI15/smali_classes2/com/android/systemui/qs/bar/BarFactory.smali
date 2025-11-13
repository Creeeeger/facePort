.class public final Lcom/android/systemui/qs/bar/BarFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBottomLargeTileBarProvider:Ljavax/inject/Provider;

.field public final mBrightnessBarProvider:Ljavax/inject/Provider;

.field public final mBrightnessMediaDevicesBarProvider:Ljavax/inject/Provider;

.field public final mBrightnessVolumeBarProvider:Ljavax/inject/Provider;

.field public final mDataUsageBarProvider:Ljavax/inject/Provider;

.field public final mMediaDevicesBarProvider:Ljavax/inject/Provider;

.field public final mMultiSIMPreferredSlotBarProvider:Ljavax/inject/Provider;

.field public final mQSMediaPlayerBarProvider:Ljavax/inject/Provider;

.field public final mQuickControlBarProvider:Ljavax/inject/Provider;

.field public final mSecurityFooterBarProvider:Ljavax/inject/Provider;

.field public final mSmartViewLargeTileBarProvider:Ljavax/inject/Provider;

.field public final mTileChunkLayoutBarProvider:Ljavax/inject/Provider;

.field public final mTopLargeTileBarProvider:Ljavax/inject/Provider;

.field public final mVideoCallMicModeBarProvider:Ljavax/inject/Provider;

.field public final mVolumeBarProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/qs/bar/BarFactory;->mMediaDevicesBarProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/qs/bar/BarFactory;->mMultiSIMPreferredSlotBarProvider:Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBrightnessBarProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/BarFactory;->mVolumeBarProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBrightnessMediaDevicesBarProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBrightnessVolumeBarProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/systemui/qs/bar/BarFactory;->mQSMediaPlayerBarProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/systemui/qs/bar/BarFactory;->mQuickControlBarProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/android/systemui/qs/bar/BarFactory;->mTopLargeTileBarProvider:Ljavax/inject/Provider;

    iput-object p10, p0, Lcom/android/systemui/qs/bar/BarFactory;->mTileChunkLayoutBarProvider:Ljavax/inject/Provider;

    iput-object p11, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBottomLargeTileBarProvider:Ljavax/inject/Provider;

    iput-object p12, p0, Lcom/android/systemui/qs/bar/BarFactory;->mSmartViewLargeTileBarProvider:Ljavax/inject/Provider;

    iput-object p13, p0, Lcom/android/systemui/qs/bar/BarFactory;->mSecurityFooterBarProvider:Ljavax/inject/Provider;

    iput-object p14, p0, Lcom/android/systemui/qs/bar/BarFactory;->mVideoCallMicModeBarProvider:Ljavax/inject/Provider;

    iput-object p15, p0, Lcom/android/systemui/qs/bar/BarFactory;->mDataUsageBarProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final createBarItem(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/bar/BarFactory$1;->$SwitchMap$com$android$systemui$qs$bar$BarType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mDataUsageBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/DataUsageBar;

    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mVideoCallMicModeBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    goto/16 :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mSecurityFooterBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/SecurityFooterBar;

    goto/16 :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mSmartViewLargeTileBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBottomLargeTileBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mTileChunkLayoutBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mTopLargeTileBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/TopLargeTileBar;

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mQuickControlBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/QuickControlBar;

    goto :goto_0

    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mQSMediaPlayerBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    goto :goto_0

    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mMultiSIMPreferredSlotBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    goto :goto_0

    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBrightnessVolumeBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

    goto :goto_0

    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mVolumeBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/VolumeBar;

    goto :goto_0

    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mMediaDevicesBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;

    goto :goto_0

    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBrightnessMediaDevicesBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    goto :goto_0

    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBrightnessBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/BrightnessBar;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
