.class public final Lcom/android/systemui/media/SecMediaControlPanel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTION_IDS:[I


# instance fields
.field public mActionButtonNumExpand:I

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mAppName:Ljava/lang/String;

.field public mArtworkBoundId:I

.field public mArtworkNextBindRequestId:I

.field public mBackgroundColor:I

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mBudsButtonExpanded:Landroid/widget/ImageButton;

.field public mBudsDetailCloseRunnable:Ljava/lang/Runnable;

.field public mBudsDetailOpenRunnable:Ljava/lang/Runnable;

.field public mBudsEnabled:Z

.field public mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

.field public final mContext:Landroid/content/Context;

.field public mController:Landroid/media/session/MediaController;

.field public mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

.field public mDeviceName:Ljava/lang/CharSequence;

.field public mDualPlayModeEnabled:Z

.field public final mDualPlayModeReceiver:Lcom/android/systemui/media/SecMediaControlPanel$1;

.field public mGutsBackgroundColor:I

.field public mIsArtworkBound:Z

.field public mIsPlayerCoverPlayed:Z

.field public mIsPlayerOAPlayed:Z

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public final mLogger:Lcom/android/systemui/log/MediaLogger;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

.field public mOAMusicChipController:Lcom/android/systemui/media/OAMusicChipController;

.field public final mObserver:Lcom/android/systemui/media/SecMediaControlPanel$3;

.field public final mOngoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

.field public final mOngoingActivityObserver:Lcom/android/systemui/media/SecMediaControlPanel$2;

.field public mPlayerKey:Ljava/lang/String;

.field public mPrevArtwork:Landroid/graphics/drawable/Drawable;

.field public mPrevBitmap:Landroid/graphics/Bitmap;

.field public mQSMediaPlayerBarCallback:Lcom/android/systemui/media/SecMediaHost$1;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mSeekBarObserver:Lcom/android/systemui/media/SecSeekBarObserver;

.field public final mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public mToken:Landroid/media/session/MediaSession$Token;

.field public mType:Lcom/android/systemui/media/MediaType;

.field public mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f0a0a7b

    const v1, 0x7f0a0a7c

    const v2, 0x7f0a0a78

    const v3, 0x7f0a0a79

    const v4, 0x7f0a0a7a

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/SecMediaControlPanel;->ACTION_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/SecSeekBarViewModel;Lcom/android/systemui/media/MediaOutputHelper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/log/MediaLogger;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V
    .locals 5

    move-object v0, p0

    move-object/from16 v1, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Lcom/android/systemui/util/ConfigurationState;

    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v4, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array {v3, v4}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mPrevBitmap:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mArtworkBoundId:I

    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mArtworkNextBindRequestId:I

    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/SecMediaControlPanel$1;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeReceiver:Lcom/android/systemui/media/SecMediaControlPanel$1;

    iput v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    iput-boolean v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    iput-boolean v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerOAPlayed:Z

    iput-boolean v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/SecMediaControlPanel$2;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mOngoingActivityObserver:Lcom/android/systemui/media/SecMediaControlPanel$2;

    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/SecMediaControlPanel$3;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mObserver:Lcom/android/systemui/media/SecMediaControlPanel$3;

    move-object v3, p1

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    move-object v3, p2

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object v3, p3

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v3, p4

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v3, p5

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    move-object v3, p6

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

    move-object v3, p7

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object v3, p9

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mLogger:Lcom/android/systemui/log/MediaLogger;

    sget-object v3, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    move-object v3, p8

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    move-object v3, p10

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object v1, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mOngoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object v0, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const-string v4, "buds_enable"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public static scaleTransitionDrawableLayer(Landroid/graphics/drawable/TransitionDrawable;III)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v2, v1, v0

    int-to-float p2, p2

    int-to-float p3, p3

    div-float v3, p2, p3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    div-float/2addr p3, v0

    goto :goto_0

    :cond_2
    div-float p3, p2, v1

    :goto_0
    mul-float/2addr v1, p3

    float-to-int p2, v1

    mul-float/2addr p3, v0

    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/drawable/TransitionDrawable;->setLayerSize(III)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final bind(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MediaControlPanel#bindPlayer<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateWidth()V

    iget-object v3, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    iget-object v5, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v3}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iput-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    :cond_2
    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    new-instance v3, Landroid/media/session/MediaController;

    iget-object v6, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {v3, v6, v7}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    goto :goto_0

    :cond_3
    iput-object v5, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    :goto_0
    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v3, v3, Lcom/android/systemui/media/SecPlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v5

    :goto_1
    iget-object v6, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    iget v7, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->userId:I

    if-eqz v6, :cond_5

    iget-object v8, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8, v7}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    const v6, 0x7f080a5f

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v6, v3, Lcom/android/systemui/media/SecPlayerViewHolder;->titleText:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move-object v6, v5

    :goto_3
    iget-object v3, v3, Lcom/android/systemui/media/SecPlayerViewHolder;->artistText:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v5

    :goto_4
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->song:Ljava/lang/CharSequence;

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v11, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->artist:Ljava/lang/CharSequence;

    invoke-interface {v8, v11}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v8, 0x1

    :goto_6
    iget-object v11, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->song:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->artist:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->app:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mAppName:Ljava/lang/String;

    const-string v6, "MediaControlPanel"

    iget-object v11, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->device:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    if-eqz v11, :cond_c

    iget-object v12, v11, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->name:Ljava/lang/CharSequence;

    iput-object v12, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/CharSequence;

    iget-object v11, v11, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->customMediaDeviceData:Lcom/android/systemui/media/SecMediaDeviceDataImpl;

    iget-object v11, v11, Lcom/android/systemui/media/SecMediaDeviceDataImpl;->deviceType:Ljava/lang/Integer;

    if-eqz v11, :cond_b

    iget-object v11, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mQSMediaPlayerBarCallback:Lcom/android/systemui/media/SecMediaHost$1;

    if-eqz v11, :cond_b

    iget-object v11, v11, Lcom/android/systemui/media/SecMediaHost$1;->this$0:Lcom/android/systemui/media/SecMediaHost;

    iget-object v11, v11, Lcom/android/systemui/media/SecMediaHost;->mMediaBluetoothHelper:Lcom/android/systemui/media/MediaBluetoothHelper;

    iget-object v11, v11, Lcom/android/systemui/media/MediaBluetoothHelper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    move-result v11

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    :goto_7
    if-eqz v11, :cond_b

    const/4 v11, 0x1

    goto :goto_8

    :cond_b
    const/4 v11, 0x0

    :goto_8
    iput-boolean v11, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeEnabled:Z

    goto :goto_9

    :cond_c
    const-string v11, "device is null"

    invoke-static {v6, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    const v12, 0x7f130dac

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/CharSequence;

    :goto_9
    iget-object v11, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v11}, Lcom/android/systemui/media/MediaType;->getSupportMediaOutput()Z

    move-result v11

    const/4 v12, 0x4

    if-nez v11, :cond_e

    iget-object v11, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v11, v11, Lcom/android/systemui/media/SecPlayerViewHolder;->mediaOutputText:Landroid/widget/TextView;

    if-eqz v11, :cond_d

    goto :goto_a

    :cond_d
    move-object v11, v5

    :goto_a
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d

    :cond_e
    iget-object v11, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v11, v11, Lcom/android/systemui/media/SecPlayerViewHolder;->mediaOutputText:Landroid/widget/TextView;

    if-eqz v11, :cond_f

    goto :goto_b

    :cond_f
    move-object v11, v5

    :goto_b
    new-instance v13, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;

    const/4 v14, 0x0

    invoke-direct {v13, v1, v2, v14}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/controls/shared/model/MediaData;I)V

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v11, v11, Lcom/android/systemui/media/SecPlayerViewHolder;->mediaOutputText:Landroid/widget/TextView;

    if-eqz v11, :cond_10

    goto :goto_c

    :cond_10
    move-object v11, v5

    :goto_c
    invoke-virtual {v11}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    new-instance v13, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;

    const/4 v14, 0x1

    invoke-direct {v13, v1, v14}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateDeviceName()V

    iget-object v11, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->actions:Ljava/util/List;

    iget-object v13, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->actionsToShowInCompact:Ljava/util/List;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "bindActionButtons semanticActions="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->semanticActions:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "bindActionButtons actionsWhenCollapsed="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", actionIcons="

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    iget-object v6, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    move-result v6

    sget-object v13, Lcom/android/systemui/media/SecMediaControlPanel;->ACTION_IDS:[I

    const/4 v14, 0x5

    if-nez v6, :cond_11

    move/from16 v16, v8

    goto/16 :goto_11

    :cond_11
    iget-object v6, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v15, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    const/4 v5, 0x2

    if-eq v15, v5, :cond_15

    const/4 v5, 0x3

    if-eq v15, v5, :cond_14

    if-eq v15, v12, :cond_13

    if-eq v15, v14, :cond_12

    const/4 v5, 0x0

    goto :goto_e

    :cond_12
    const v5, 0x7f070de5

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_e

    :cond_13
    const v5, 0x7f070de4

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_e

    :cond_14
    const v5, 0x7f070de3

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_e

    :cond_15
    const v5, 0x7f070de2

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_e
    iget-object v6, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-boolean v12, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v12, :cond_16

    const v12, 0x7f0710ab

    goto :goto_f

    :cond_16
    const v12, 0x7f0710ac

    :goto_f
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v12, 0x0

    :goto_10
    iget v15, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    if-ge v12, v15, :cond_18

    if-ge v12, v14, :cond_18

    aget v15, v13, v12

    iget-object v9, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v9, v9, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtons$delegate:Lkotlin/Lazy;

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    if-eqz v9, :cond_17

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v16, v8

    add-int v8, v6, v5

    iput v8, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v16

    const/4 v14, 0x5

    goto :goto_10

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_18
    move/from16 v16, v8

    iget-object v8, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v8}, Lcom/android/systemui/media/MediaType;->getSupportBudsButton()Z

    move-result v8

    if-eqz v8, :cond_19

    iget-object v8, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    if-eqz v8, :cond_19

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iget-object v9, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    add-int/2addr v6, v5

    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v5, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    :goto_11
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v6, :cond_25

    aget v10, v13, v8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_1a

    const/4 v12, 0x1

    goto :goto_13

    :cond_1a
    const/4 v12, 0x0

    :goto_13
    if-eqz v12, :cond_1b

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    goto :goto_14

    :cond_1b
    const/4 v14, 0x0

    :goto_14
    iget-object v15, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v15, v15, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtons$delegate:Lkotlin/Lazy;

    invoke-interface {v15}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    invoke-virtual {v15, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    if-eqz v10, :cond_24

    if-eqz v12, :cond_20

    new-instance v15, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;

    iget-object v6, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    invoke-direct {v15, v1, v5, v6, v10}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;ILjava/lang/String;Landroid/widget/ImageButton;)V

    if-nez v14, :cond_1c

    goto :goto_15

    :cond_1c
    iget-object v6, v14, Lcom/android/systemui/media/controls/shared/model/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v9, v6, Landroid/graphics/drawable/Animatable;

    if-eqz v9, :cond_1d

    move-object v9, v6

    check-cast v9, Landroid/graphics/drawable/Animatable;

    invoke-interface {v9}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_1d
    invoke-virtual {v10, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1e
    iget-object v6, v14, Lcom/android/systemui/media/controls/shared/model/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v10, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, v14, Lcom/android/systemui/media/controls/shared/model/MediaAction;->action:Ljava/lang/Runnable;

    if-nez v6, :cond_1f

    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_15

    :cond_1f
    const/4 v9, 0x1

    invoke-virtual {v10, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    new-instance v14, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;

    const/4 v9, 0x2

    invoke-direct {v14, v15, v10, v9, v6}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v10, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    new-instance v9, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;

    const/4 v14, 0x2

    invoke-direct {v9, v10, v14}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_20
    :goto_15
    iget-object v6, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v12, :cond_21

    const/4 v9, 0x0

    goto :goto_16

    :cond_21
    const/16 v9, 0x8

    :goto_16
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    if-eqz v12, :cond_23

    const/4 v6, 0x0

    goto :goto_17

    :cond_23
    const/16 v6, 0x8

    :goto_17
    invoke-virtual {v10, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x5

    goto/16 :goto_12

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_25
    iget-object v5, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    iget-object v6, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;

    invoke-direct {v8, v1, v5}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/media/session/MediaController;)V

    invoke-interface {v6, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-eqz v5, :cond_28

    iget-object v6, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    if-eqz v6, :cond_28

    iget-object v6, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    move-result v6

    if-eqz v6, :cond_28

    iget-object v6, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_26

    const-string v8, "android.media.metadata.DURATION"

    invoke-virtual {v5, v8}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v5, v8

    goto :goto_18

    :cond_26
    const/4 v5, 0x0

    :goto_18
    if-gtz v5, :cond_27

    const/4 v9, 0x1

    goto :goto_19

    :cond_27
    const/4 v9, 0x0

    :goto_19
    iput-boolean v9, v6, Lcom/android/systemui/media/CoverMusicCapsuleController;->isLiveStreaming:Z

    :cond_28
    iget-object v5, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v5}, Lcom/android/systemui/media/MediaType;->getSupportGuts()Z

    move-result v5

    if-nez v5, :cond_29

    goto/16 :goto_1c

    :cond_29
    iget-object v5, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v6, v5, Lcom/android/systemui/media/SecPlayerViewHolder;->player:Landroid/widget/LinearLayout;

    iget-object v5, v5, Lcom/android/systemui/media/SecPlayerViewHolder;->options:Landroid/view/View;

    if-eqz v6, :cond_31

    if-nez v5, :cond_2a

    goto/16 :goto_1c

    :cond_2a
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setMinimumHeight(I)V

    new-instance v8, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;

    invoke-direct {v8, v1, v5, v6}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v8, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v8, v8, Lcom/android/systemui/media/SecPlayerViewHolder;->removeText:Landroid/widget/TextView;

    if-eqz v8, :cond_2b

    new-instance v9, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;

    const/4 v10, 0x1

    invoke-direct {v9, v1, v2, v10}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/controls/shared/model/MediaData;I)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f0710a5

    invoke-virtual {v1, v8, v9}, Lcom/android/systemui/media/SecMediaControlPanel;->updateFontSize(Landroid/widget/TextView;I)V

    :cond_2b
    iget-object v8, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v8, v8, Lcom/android/systemui/media/SecPlayerViewHolder;->cancelText:Landroid/widget/TextView;

    if-eqz v8, :cond_2c

    new-instance v9, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v5, v10, v6}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f0710a4

    invoke-virtual {v1, v8, v9}, Lcom/android/systemui/media/SecMediaControlPanel;->updateFontSize(Landroid/widget/TextView;I)V

    :cond_2c
    iget-object v8, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v8, v8, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppIcon:Landroid/widget/ImageView;

    if-eqz v8, :cond_2e

    iget-object v9, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    if-eqz v9, :cond_2d

    iget-object v10, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v7}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1a

    :cond_2d
    const v7, 0x7f080a5c

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2e
    :goto_1a
    iget-object v7, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v7, v7, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppTitle:Landroid/widget/TextView;

    if-eqz v7, :cond_2f

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0710a2

    invoke-virtual {v1, v7, v3}, Lcom/android/systemui/media/SecMediaControlPanel;->updateFontSize(Landroid/widget/TextView;I)V

    :cond_2f
    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v3, v3, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    if-eqz v3, :cond_30

    goto :goto_1b

    :cond_30
    const/4 v3, 0x0

    :goto_1b
    new-instance v5, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;

    invoke-direct {v5, v1}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_31
    :goto_1c
    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_1e

    :cond_32
    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    const v5, 0x7f060685

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mGutsBackgroundColor:I

    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    const v5, 0x7f060684

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaType;->getSupportClick()Z

    move-result v3

    if-nez v3, :cond_33

    goto :goto_1e

    :cond_33
    iget-object v3, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->clickIntent:Landroid/app/PendingIntent;

    iget-object v5, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v5, v5, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    if-eqz v5, :cond_34

    goto :goto_1d

    :cond_34
    const/4 v5, 0x0

    :goto_1d
    new-instance v6, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v3, v7, v2}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1e
    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    if-nez v3, :cond_35

    goto :goto_22

    :cond_35
    iget-object v3, v3, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_36

    :goto_1f
    const/4 v5, 0x0

    goto :goto_20

    :cond_36
    const/4 v3, 0x0

    goto :goto_1f

    :goto_20
    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07100f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v6, v6, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v6, :cond_37

    goto :goto_21

    :cond_37
    const/4 v6, 0x0

    :goto_21
    invoke-virtual {v6, v3, v5, v3, v5}, Landroid/widget/SeekBar;->setPadding(IIII)V

    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateResources()V

    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaType;->getSupportArtwork()Z

    move-result v3

    if-nez v3, :cond_38

    goto :goto_24

    :cond_38
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/controls/shared/model/MediaData;->hashCode()I

    move-result v7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "MediaControlPanel#bindArtworkAndColors<"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    iget v5, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mArtworkNextBindRequestId:I

    add-int/lit8 v0, v5, 0x1

    iput v0, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mArtworkNextBindRequestId:I

    if-eqz v16, :cond_39

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    :cond_39
    iget v4, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    iget-object v0, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->albumView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3a

    goto :goto_23

    :cond_3a
    const/4 v0, 0x0

    :goto_23
    invoke-virtual {v0}, Landroid/widget/ImageView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object v9, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v4

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/controls/shared/model/MediaData;IIILjava/lang/String;IZ)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final isPlaying$1()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    sget-object v1, Lcom/android/systemui/media/MediaType;->OA:Lcom/android/systemui/media/MediaType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mediaOngoingActivityObserver:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mOngoingActivityObserver:Lcom/android/systemui/media/SecMediaControlPanel$2;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SecSeekBarObserver;

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    if-eqz v0, :cond_1

    iget-object v2, v1, Lcom/android/systemui/media/SecSeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    iget-object v1, v1, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeReceiver:Lcom/android/systemui/media/SecMediaControlPanel$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CoverMusicCapsuleController"

    const-string v2, "capsule destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/media/CoverMusicCapsuleController;->bundle:Landroid/os/Bundle;

    const-string/jumbo v2, "visible"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/android/systemui/media/CoverMusicCapsuleController;->capsule:Landroid/widget/RemoteViews;

    const-string v3, "capsule_layout"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "capsule_priority"

    const-string v3, "low"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/media/CoverMusicCapsuleController;->updateCapsule()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportOAChip()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mOAMusicChipController:Lcom/android/systemui/media/OAMusicChipController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "OAMusicChipController"

    const-string v1, "OA destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportWidgetTimer()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mObserver:Lcom/android/systemui/media/SecMediaControlPanel$3;

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public final setListening(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    sget-object v1, Lcom/android/systemui/media/MediaType;->ENR:Lcom/android/systemui/media/MediaType;

    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    if-ne v0, v1, :cond_1

    iget-boolean v0, v2, Lcom/android/systemui/media/SecSeekBarViewModel;->listening:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;

    invoke-direct {v0, v2, p1}, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    iget-object p1, v2, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/android/systemui/media/SecPlayerViewHolder;->player:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/SecPlayerViewHolder;->options:Landroid/view/View;

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    :cond_4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecMediaControlPanel{mPlayerKey=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/OpaqueKey$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateBudsButton()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportBudsButton()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getBudsEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChanged(): buds enabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    const-string v2, "MediaControlPanel"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsDetailCloseRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    const v1, 0x7f080847

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    iget-boolean p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsEnabled:Z

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final updateDeviceName()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateDeviceName() : deviceName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDualPlayModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeEnabled:Z

    const-string v3, "MediaControlPanel"

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f1310c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f130dac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0710b2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/SecMediaControlPanel;->updateFontSize(Landroid/widget/TextView;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportBudsButton()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/CharSequence;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v2, 0x7f1310ba

    invoke-virtual {v1, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final updateFontSize(Landroid/widget/TextView;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaType;->getSupportFixedFontSize()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const p0, 0x3f4ccccd    # 0.8f

    const v0, 0x3fa66666    # 1.3f

    invoke-static {p1, p2, p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    return-void
.end method

.method public final updateResources()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f060467

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f06045b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f06045c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f06045d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v4, v4, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    const/16 v6, 0x4c

    invoke-virtual {v0, v6}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v4, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleText:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->artistText:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v5

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v2, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    move-object v5, v2

    :cond_5
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_6
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f060685

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mGutsBackgroundColor:I

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->removeText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f08109d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->cancelText:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f080d31

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f060684

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->cancelText:Landroid/widget/TextView;

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_b
    return-void
.end method

.method public final updateWidth()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    sget-object v1, Lcom/android/systemui/media/MediaType;->OA:Lcom/android/systemui/media/MediaType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->getOngoingCardWidth(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/media/MediaType;->ENR:Lcom/android/systemui/media/MediaType;

    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getNotificationSidePadding(Landroid/content/Context;Z)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v1, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getAlbumArtWidth(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/systemui/media/MediaType;->COVER:Lcom/android/systemui/media/MediaType;

    if-ne v0, v1, :cond_3

    const/16 v0, 0x2ec

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    return-void
.end method
