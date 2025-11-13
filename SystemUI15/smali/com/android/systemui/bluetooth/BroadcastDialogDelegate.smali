.class public final Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastCallback:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentBroadcastApp:Ljava/lang/String;

.field public final mDialogs:Ljava/util/Set;

.field public final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mMainThreadHandler:Landroid/os/Handler;

.field public final mMediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

.field public final mOutputPackageName:Ljava/lang/String;

.field public mShouldLaunchLeBroadcastDialog:Z

.field public mSwitchBroadcast:Landroid/widget/Button;

.field public final mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BroadcastDialog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/dialog/MediaOutputDialogManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/internal/logging/UiEventLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mDialogs:Ljava/util/Set;

    new-instance v0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;-><init>(Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;)V

    iput-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mBroadcastCallback:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;

    iput-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mMediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    iput-object p3, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p7, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iput-object p8, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mCurrentBroadcastApp:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mOutputPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p5, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    sget-boolean p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "BroadcastDialog"

    const-string p1, "Init BroadcastDialog"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    return-object p0
.end method

.method public handleLeBroadcastStopped()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mShouldLaunchLeBroadcastDialog:Z

    iget-object v1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez v1, :cond_0

    const-string v1, "BroadcastDialog"

    const-string v2, "The broadcast profile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    const v2, 0x7f130bbf

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->refreshSwitchBroadcastButton()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mContext:Landroid/content/Context;

    const v2, 0x7f130313

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mOutputPackageName:Ljava/lang/String;

    invoke-static {v0, p0, v2}, Lcom/android/systemui/media/controls/util/MediaDataUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->startBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreate(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 6

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget-boolean p2, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "BroadcastDialog"

    const-string v0, "onCreate"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$BroadcastDialogEvent;->BROADCAST_DIALOG_SHOW:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$BroadcastDialogEvent;

    invoke-interface {p2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0069

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a0382

    invoke-virtual {p2, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a0381

    invoke-virtual {p2, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mCurrentBroadcastApp:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f130312

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mContext:Landroid/content/Context;

    const v3, 0x7f130313

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mOutputPackageName:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lcom/android/systemui/media/controls/util/MediaDataUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mContext:Landroid/content/Context;

    const v4, 0x7f130310

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0cd9

    invoke-virtual {p2, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    const v2, 0x7f0a0277

    invoke-virtual {p2, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0a0241

    invoke-virtual {p2, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mContext:Landroid/content/Context;

    const v5, 0x7f130311

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onStart(Landroid/app/Dialog;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mDialogs:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mBgExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez v0, :cond_0

    const-string p0, "BroadcastDialog"

    const-string p1, "The broadcast profile is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mBroadcastCallback:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    :goto_0
    return-void
.end method

.method public final onStop(Landroid/app/Dialog;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez v0, :cond_0

    const-string v0, "BroadcastDialog"

    const-string v1, "The broadcast profile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mBroadcastCallback:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$1;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mDialogs:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onWindowFocusChanged(Landroid/app/Dialog;Z)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final refreshSwitchBroadcastButton()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mContext:Landroid/content/Context;

    const v1, 0x7f130313

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mOutputPackageName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/systemui/media/controls/util/MediaDataUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mContext:Landroid/content/Context;

    const v3, 0x7f130311

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->mSwitchBroadcast:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
