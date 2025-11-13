.class public final Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;
.super Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field static final BROADCAST_CODE_MAX_LENGTH:I = 0x10

.field static final BROADCAST_CODE_MIN_LENGTH:I = 0x4

.field static final BROADCAST_NAME_MAX_LENGTH:I = 0xfe


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog;

.field public final mBroadcastAssistantCallback:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;

.field public mBroadcastCode:Landroid/widget/TextView;

.field public final mBroadcastCodeTextWatcher:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;

.field public mBroadcastErrorMessage:Landroid/widget/TextView;

.field public mBroadcastName:Landroid/widget/TextView;

.field public final mBroadcastNameTextWatcher:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$2;

.field public mBroadcastQrCodeView:Landroid/widget/ImageView;

.field public mCurrentBroadcastCode:Ljava/lang/String;

.field public mCurrentBroadcastName:Ljava/lang/String;

.field public mIsLeBroadcastAssistantCallbackRegistered:Z

.field public mIsPasswordHide:Ljava/lang/Boolean;

.field public mIsStopbyUpdateBroadcastCode:Z

.field public mRetryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/dialog/MediaOutputController;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/dialog/MediaOutputController;Z)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsPasswordHide:Ljava/lang/Boolean;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    iput-boolean p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsStopbyUpdateBroadcastCode:Z

    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;)V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastCodeTextWatcher:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;

    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$2;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;)V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastNameTextWatcher:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$2;

    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;)V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastAssistantCallback:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;

    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-direct {p1, p3}, Lcom/android/systemui/media/dialog/MediaOutputAdapter;-><init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7f6

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getAppSourceIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getNotificationSmallIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public final getBroadcastMetadataInfo(I)Ljava/lang/String;
    .locals 3

    const-string v0, "MediaOutputController"

    const-string v1, ""

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez p0, :cond_1

    const-string p0, "getBroadcastCode: LE Audio Broadcast is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastCode:[B

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_0
    return-object v1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez p0, :cond_3

    const-string p0, "getBroadcastName: LE Audio Broadcast is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mProgramInfo:Ljava/lang/String;

    :goto_1
    return-object v1
.end method

.method public final getHeaderIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getHeaderIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public final getHeaderIconSize()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07096d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getHeaderSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    const v0, 0x7f130458

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRetryCount()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    return p0
.end method

.method public final getStopButtonVisibility()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final handleLeBroadcastMetadataChanged()V
    .locals 2

    const-string v0, "MediaOutputBroadcastDialog"

    const-string v1, "handleLeBroadcastMetadataChanged:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->refreshUi()V

    return-void
.end method

.method public final handleLeBroadcastStartFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mCurrentBroadcastCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputController;->setBroadcastCode(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->handleUpdateFailedUi()V

    return-void
.end method

.method public final handleLeBroadcastStarted()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->refreshUi()V

    return-void
.end method

.method public final handleLeBroadcastStopFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mCurrentBroadcastCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputController;->setBroadcastCode(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->handleUpdateFailedUi()V

    return-void
.end method

.method public final handleLeBroadcastStopped()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsStopbyUpdateBroadcastCode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsStopbyUpdateBroadcastCode:Z

    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez v1, :cond_0

    const-string v0, "MediaOutputController"

    const-string v1, "The broadcast profile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->handleLeBroadcastStartFailed()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getAppSourceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->startBroadcast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public final handleLeBroadcastUpdateFailed()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mCurrentBroadcastName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "MediaOutputController"

    const-string/jumbo v1, "setBroadcastName: LE Audio Broadcast is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setProgramInfo(Ljava/lang/String;Z)V

    :goto_0
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->handleUpdateFailedUi()V

    return-void
.end method

.method public final handleLeBroadcastUpdated()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->refreshUi()V

    return-void
.end method

.method public final handleUpdateFailedUi()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const-string p0, "MediaOutputBroadcastDialog"

    const-string v0, "handleUpdateFailedUi: mAlertDialog is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    const v1, 0x7f130bc1

    move v2, v3

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mRetryCount:I

    const v1, 0x7f130bbd

    move v2, v4

    :goto_0
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-void
.end method

.method public final isBroadcastSupported()V
    .locals 0

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->legacyLeAudioSharing()V

    return-void
.end method

.method public final launchBroadcastUpdatedDialog(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0204

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastCodeTextWatcher:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastNameTextWatcher:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$2;

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f0a01dd

    invoke-virtual {v0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    const v3, 0x7f130bb9

    goto :goto_1

    :cond_1
    const v3, 0x7f130bbe

    :goto_1
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, v1}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;ZLandroid/widget/EditText;)V

    const p2, 0x7f130bbb

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d9

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a01e5

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a0949

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastQrCodeView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a01df

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a01e3

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastName:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a01e1

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a01da

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastCode:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a01d7

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->refreshUi()V

    return-void
.end method

.method public final onStopButtonClick()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez v0, :cond_0

    const-string v0, "MediaOutputController"

    const-string v1, "The broadcast profile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastId:I

    iget-object v2, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    const-string v3, "LocalBluetoothLeBroadcast"

    if-nez v2, :cond_1

    const-string v0, "The BluetoothLeBroadcast is null when stopping the broadcast."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "stopBroadcast()"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcast;->stopBroadcast(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->dismiss()V

    return-void
.end method

.method public final refreshUi()V
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x1

    iget-object v0, v1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const-string v3, ""

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const-string v0, "MediaOutputController"

    const-string v5, "getLocalBroadcastMetadataQrCodeString: LE Audio Broadcast is null"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->getLatestBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    const-string v0, "LocalBluetoothLeBroadcast"

    const-string v6, "The BluetoothLeBroadcastMetadata is null."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;

    invoke-direct {v6, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;-><init>(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    :goto_0
    if-eqz v6, :cond_12

    iget-object v0, v6, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->metadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-eqz v0, :cond_12

    sget-object v6, Lcom/android/settingslib/bluetooth/BluetoothLeBroadcastMetadataExt;->INSTANCE:Lcom/android/settingslib/bluetooth/BluetoothLeBroadcastMetadataExt;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    new-instance v7, Lkotlin/Pair;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v5

    :goto_1
    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    const-string v10, "BN"

    invoke-direct {v7, v10, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lkotlin/Pair;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAddressType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "AT"

    invoke-direct {v7, v10, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lkotlin/Pair;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    const-string v10, ":"

    invoke-static {v8, v10, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "AD"

    invoke-direct {v7, v11, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lkotlin/Pair;

    sget v8, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v8

    int-to-long v11, v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v11, "%X"

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "BI"

    invoke-direct {v7, v12, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v7, Lkotlin/Pair;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    move-result-object v8

    invoke-static {v8, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    const-string v12, "BC"

    invoke-direct {v7, v12, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPublicBroadcastMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPublicBroadcastMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getRawMetadata()[B

    move-result-object v7

    if-eqz v7, :cond_4

    array-length v7, v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    new-instance v7, Lkotlin/Pair;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPublicBroadcastMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getRawMetadata()[B

    move-result-object v5

    :cond_5
    invoke-static {v5, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    const-string v8, "MD"

    invoke-direct {v7, v8, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getAudioConfigQuality()I

    move-result v5

    and-int/2addr v5, v2

    const-string v7, "1"

    if-eqz v5, :cond_7

    new-instance v5, Lkotlin/Pair;

    const-string v8, "SQ"

    invoke-direct {v5, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getAudioConfigQuality()I

    move-result v5

    and-int/2addr v5, v9

    if-eqz v5, :cond_8

    new-instance v5, Lkotlin/Pair;

    const-string v8, "HQ"

    invoke-direct {v5, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v5, Lkotlin/Pair;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAdvertisingSid()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "AS"

    invoke-direct {v5, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lkotlin/Pair;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPaSyncInterval()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "PI"

    invoke-direct {v5, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lkotlin/Pair;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "NS"

    invoke-direct {v5, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getChannels()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/android/settingslib/bluetooth/BluetoothLeBroadcastMetadataExt;->INSTANCE:Lcom/android/settingslib/bluetooth/BluetoothLeBroadcastMetadataExt;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v4

    move v12, v8

    :cond_a
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BluetoothLeBroadcastChannel;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getChannelIndex()I

    move-result v14

    if-lez v14, :cond_a

    add-int/2addr v12, v2

    sget v14, Lkotlin/UInt;->$r8$clinit:I

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->isSelected()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getChannelIndex()I

    move-result v13

    sub-int/2addr v13, v2

    shl-int v13, v2, v13

    or-int/2addr v8, v13

    goto :goto_4

    :cond_b
    if-nez v8, :cond_c

    new-instance v7, Lkotlin/Pair;

    const/4 v8, -0x1

    invoke-static {v8}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v8

    invoke-static {v12}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v12

    invoke-direct {v7, v8, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_c
    new-instance v7, Lkotlin/Pair;

    invoke-static {v8}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v8

    invoke-static {v12}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v12

    invoke-direct {v7, v8, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/UInt;

    iget v8, v8, Lkotlin/UInt;->data:I

    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/UInt;

    iget v7, v7, Lkotlin/UInt;->data:I

    new-instance v12, Lkotlin/Pair;

    sget v13, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    int-to-long v13, v8

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "BS"

    invoke-direct {v12, v13, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v4}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v8

    if-lez v8, :cond_d

    new-instance v8, Lkotlin/Pair;

    int-to-long v12, v7

    and-long/2addr v12, v15

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "NB"

    invoke-direct {v8, v12, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getRawMetadata()[B

    move-result-object v7

    array-length v7, v7

    if-eqz v7, :cond_9

    new-instance v7, Lkotlin/Pair;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getRawMetadata()[B

    move-result-object v5

    invoke-static {v5, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    const-string v8, "SM"

    invoke-direct {v7, v8, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_e
    new-instance v12, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v13, ";"

    const/4 v14, 0x0

    const/16 v17, 0x3e

    invoke-static/range {v12 .. v17}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "BLUETOOTH:UUID:184F;"

    const-string v6, ";;"

    invoke-static {v5, v0, v6}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Generated QR string : "

    const-string v6, "BtLeBroadcastMetadataExt"

    invoke-static {v5, v0, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_10

    goto :goto_7

    :cond_10
    move-object v3, v0

    goto :goto_7

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Broadcast name is mandatory for QR code"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_8

    :cond_13
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070978

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0, v3}, Lcom/android/settingslib/qrcode/QrCodeGenerator;->encodeQrCode(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, v1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastQrCodeView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Error generatirng QR code bitmap "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MediaOutputBroadcastDialog"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    invoke-virtual {v1, v4}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->getBroadcastMetadataInfo(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mCurrentBroadcastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->getBroadcastMetadataInfo(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mCurrentBroadcastCode:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastName:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mCurrentBroadcastName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastCode:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mCurrentBroadcastCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh(Z)V

    return-void
.end method

.method public final start()V
    .locals 12

    invoke-super {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->start()V

    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsLeBroadcastAssistantCallbackRegistered:Z

    const-string v1, "MediaOutputController"

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsLeBroadcastAssistantCallbackRegistered:Z

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v3, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastAssistantCallback:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v0, :cond_0

    const-string v0, "registerLeBroadcastAssistantServiceCallback: The broadcast assistant profile is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v5, "Register LE broadcast assistant callback"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    const-string v0, "getBroadcastMetadata: LE Audio Broadcast is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->getLatestBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v0

    :goto_1
    const-string v4, "MediaOutputBroadcastDialog"

    if-nez v0, :cond_3

    const-string p0, "Error: There is no broadcastMetadata."

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v5, v5, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    const/4 v6, 0x0

    if-nez v5, :cond_4

    const-string v5, "getConnectedBroadcastSinkDevices: The broadcast assistant profile is null"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v3, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    if-nez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_2

    :cond_5
    const/4 v5, 0x3

    const/4 v7, 0x2

    filled-new-array {v7, v2, v5}, [I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "The broadcastMetadata broadcastId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", the device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v7, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v7, v7, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v7, v7, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    const-string v8, "The BluetoothLeBroadcastAssistant is null"

    const-string v9, "LocalBluetoothLeBroadcastAssistant"

    if-nez v7, :cond_7

    const-string v7, "isThereAnyBroadcastSourceIntoSinkDevice: The broadcast assistant profile is null"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    goto :goto_5

    :cond_7
    const-string v10, "getAllSources()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v7, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    if-nez v7, :cond_8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    :cond_8
    invoke-virtual {v7, v5}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v7

    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "isThereAnyBroadcastSourceIntoSinkDevice: List size: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v2

    :goto_5
    if-eqz v7, :cond_9

    const-string p0, "The sink device has the broadcast source now."

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_9
    iget-object v7, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v7, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v7, v7, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v7, v7, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v7, :cond_a

    const-string v5, "addSourceIntoSinkDeviceWithBluetoothLeAssistant: The broadcast assistant profile is null"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_7

    :cond_a
    iget-object v7, v7, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    if-nez v7, :cond_b

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    invoke-virtual {v7, v5, v0, v6}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->addSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    :goto_6
    move v5, v2

    :goto_7
    if-nez v5, :cond_6

    const-string v5, "Error: Source add failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_c
    :goto_8
    return-void
.end method

.method public final stop()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->stop()V

    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsLeBroadcastAssistantCallbackRegistered:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsLeBroadcastAssistantCallbackRegistered:Z

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastAssistantCallback:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$3;

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    const-string v1, "MediaOutputController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "unregisterLeBroadcastAssistantServiceCallback: The broadcast assistant profile is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Unregister LE broadcast assistant callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mCachedCallbackExecutorMap:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    const-string v1, "LocalBluetoothLeBroadcastAssistant"

    if-nez v0, :cond_1

    const-string/jumbo p0, "unregisterServiceCallBack failed, the BluetoothLeBroadcastAssistant is null."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->unregisterCallback(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregisterServiceCallBack failed. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public updateBroadcastInfo(ZLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    const-string v0, "LocalBluetoothLeBroadcast"

    const-string v1, "The broadcast profile is null"

    const/4 v2, 0x1

    const-string v3, "MediaOutputController"

    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mIsStopbyUpdateBroadcastCode:Z

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputController;->setBroadcastCode(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez p1, :cond_1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->handleLeBroadcastStopFailed()V

    return-void

    :cond_1
    iget p0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastId:I

    iget-object p2, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    if-nez p2, :cond_2

    const-string p0, "The BluetoothLeBroadcast is null when stopping the broadcast."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo p2, "stopBroadcast()"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothLeBroadcast;->stopBroadcast(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez p1, :cond_4

    const-string/jumbo p1, "setBroadcastName: LE Audio Broadcast is null"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setProgramInfo(Ljava/lang/String;Z)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object p2, p1, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez p2, :cond_5

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->handleLeBroadcastUpdateFailed()V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->getAppSourceName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    if-nez p1, :cond_6

    const-string p0, "The BluetoothLeBroadcast is null when updating the broadcast."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object p1, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mProgramInfo:Ljava/lang/String;

    const-string/jumbo v1, "updateBroadcast: language = null ,programInfo = "

    invoke-static {v1, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mNewAppSourceName:Ljava/lang/String;

    iget-object p0, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBuilder:Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setProgramInfo(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object p0

    iget-object p1, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    iget p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastId:I

    invoke-virtual {p1, p2, p0}, Landroid/bluetooth/BluetoothLeBroadcast;->updateBroadcast(ILandroid/bluetooth/BluetoothLeAudioContentMetadata;)V

    :goto_1
    return-void
.end method
