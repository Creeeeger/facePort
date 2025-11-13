.class public abstract Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/dialog/MediaOutputController$Callback;
.implements Landroid/view/Window$Callback;


# instance fields
.field public mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

.field public mAppButton:Landroid/widget/Button;

.field public mAppResourceIcon:Landroid/widget/ImageView;

.field public final mBroadcastCallback:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

.field public mBroadcastIcon:Landroid/widget/ImageView;

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public mCastAppLayout:Landroid/widget/LinearLayout;

.field public final mContext:Landroid/content/Context;

.field public mDeviceListLayout:Landroid/widget/LinearLayout;

.field public final mDeviceListLayoutListener:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda4;

.field public mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mDialogView:Landroid/view/View;

.field public mDismissing:Z

.field public mDoneButton:Landroid/widget/Button;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mHeaderIcon:Landroid/widget/ImageView;

.field public mHeaderSubtitle:Landroid/widget/TextView;

.field public mHeaderTitle:Landroid/widget/TextView;

.field public final mIncludePlaybackAndAppMetadata:Z

.field public mIsLeBroadcastCallbackRegistered:Z

.field public final mItemHeight:I

.field public final mLayoutManager:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;

.field public final mListMaxHeight:I

.field public final mListPaddingTop:I

.field public final mMainThreadHandler:Landroid/os/Handler;

.field public mMediaMetadataSectionLayout:Landroid/widget/LinearLayout;

.field public final mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

.field public mShouldLaunchLeBroadcastDialog:Z

.field public mStopButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/dialog/MediaOutputController;Z)V
    .locals 2

    const v0, 0x7f14060a

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;)V

    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDeviceListLayoutListener:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda4;

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;)V

    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastCallback:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    new-instance p2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mLayoutManager:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070974

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mListMaxHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070973

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mItemHeight:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070975

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mListPaddingTop:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mExecutor:Ljava/util/concurrent/Executor;

    iput-boolean p4, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mIncludePlaybackAndAppMetadata:Z

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDismissing:Z

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public abstract getAppSourceIcon()Landroidx/core/graphics/drawable/IconCompat;
.end method

.method public getBroadcastIconVisibility()V
    .locals 0

    return-void
.end method

.method public abstract getHeaderIcon()Landroidx/core/graphics/drawable/IconCompat;
.end method

.method public abstract getHeaderIconSize()I
.end method

.method public abstract getHeaderSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract getHeaderText()Ljava/lang/CharSequence;
.end method

.method public getStopButtonText()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    const v0, 0x7f1307df

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public abstract getStopButtonVisibility()I
.end method

.method public handleLeBroadcastMetadataChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mShouldLaunchLeBroadcastDialog:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->startLeBroadcastDialog()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mShouldLaunchLeBroadcastDialog:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    return-void
.end method

.method public handleLeBroadcastStartFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    const v1, 0x7f130bbf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    return-void
.end method

.method public handleLeBroadcastStarted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mShouldLaunchLeBroadcastDialog:Z

    return-void
.end method

.method public handleLeBroadcastStopFailed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    return-void
.end method

.method public handleLeBroadcastStopped()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mShouldLaunchLeBroadcastDialog:Z

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    return-void
.end method

.method public handleLeBroadcastUpdateFailed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    return-void
.end method

.method public handleLeBroadcastUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    return-void
.end method

.method public isBroadcastSupported()V
    .locals 0

    return-void
.end method

.method public onBroadcastIconClick()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0205

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f130bc4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x7e1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a04e5

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderTitle:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a04e4

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderSubtitle:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a04df

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a0645

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a06d6

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaMetadataSectionLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a0374

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDeviceListLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a03ad

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDoneButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a0c23

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a05ed

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a0107

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppResourceIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a0264

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mCastAppLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    const v0, 0x7f0a01de

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDeviceListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDeviceListLayoutListener:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda4;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mLayoutManager:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaMetadataSectionLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDismissing:Z

    return-void
.end method

.method public onStopButtonClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->releaseSession()V

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->dismiss()V

    return-void
.end method

.method public refresh()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh(Z)V

    return-void
.end method

.method public final refresh(Z)V
    .locals 14

    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDismissing:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-boolean v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mIsRefreshing:Z

    if-eqz v1, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mIsRefreshing:Z

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getHeaderIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getAppSourceIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mCastAppLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->toIcon$1()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v6

    if-eq v6, v7, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->updateButtonBackgroundColorFilter()V

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->updateDialogBackgroundColor()V

    move v9, v3

    goto/16 :goto_3

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    const/16 v8, 0x20

    if-ne v6, v8, :cond_2

    move v6, v1

    goto :goto_0

    :cond_2
    move v6, v3

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/WallpaperColors;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v1

    if-eqz v9, :cond_5

    iget-object v10, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object v10, v10, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/android/systemui/monet/ColorScheme;

    invoke-direct {v11, v8, v6}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;Z)V

    iget-object v8, v11, Lcom/android/systemui/monet/ColorScheme;->mNeutral1:Lcom/android/systemui/monet/TonalPalette;

    iget-object v12, v11, Lcom/android/systemui/monet/ColorScheme;->mAccent2:Lcom/android/systemui/monet/TonalPalette;

    iget-object v13, v11, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    if-eqz v6, :cond_3

    invoke-virtual {v13}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    iget-object v6, v12, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorSeekbarProgress:I

    iget-object v6, v13, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorButtonBackground:I

    iget-object v6, v11, Lcom/android/systemui/monet/ColorScheme;->mNeutral2:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v6}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemBackground:I

    invoke-virtual {v12}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorConnectedItemBackground:I

    invoke-virtual {v12}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorPositiveButtonText:I

    iget-object v6, v8, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    const/16 v7, 0xb

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorDialogBackground:I

    goto :goto_2

    :cond_3
    invoke-virtual {v13}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    iget-object v6, v13, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorSeekbarProgress:I

    iget-object v6, v13, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorButtonBackground:I

    invoke-virtual {v12}, Lcom/android/systemui/monet/TonalPalette;->getS50()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemBackground:I

    invoke-virtual {v13}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorConnectedItemBackground:I

    invoke-virtual {v8}, Lcom/android/systemui/monet/TonalPalette;->getS50()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorPositiveButtonText:I

    iget-boolean v6, v11, Lcom/android/systemui/monet/ColorScheme;->mIsDark:Z

    if-eqz v6, :cond_4

    invoke-virtual {v8}, Lcom/android/systemui/monet/TonalPalette;->getS700()I

    move-result v6

    goto :goto_1

    :cond_4
    iget-object v6, v8, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_1
    const/16 v7, 0xff

    invoke-static {v6, v7}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorDialogBackground:I

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->updateButtonBackgroundColorFilter()V

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->updateDialogBackgroundColor()V

    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->updateButtonBackgroundColorFilter()V

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->updateDialogBackgroundColor()V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move v9, v3

    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mIncludePlaybackAndAppMetadata:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppResourceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->toIcon$1()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppResourceIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget v5, v5, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppResourceIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    const-string v2, "MediaOutputController"

    iget-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_5

    :cond_9
    :try_start_0
    const-string/jumbo v6, "try to get app icon"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-string v0, "icon not found"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-eqz v5, :cond_a

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppResourceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppResourceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getHeaderIconSize()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07096f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderIcon:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    add-int/2addr v2, v0

    invoke-direct {v6, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {v2}, Lcom/android/systemui/media/dialog/MediaOutputController;->getAppSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mIncludePlaybackAndAppMetadata:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getHeaderSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderTitle:Landroid/widget/TextView;

    const v2, 0x800013

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_7

    :cond_d
    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    :goto_7
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getStopButtonVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getStopButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getBroadcastIconVisibility()V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-boolean v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mIsDragging:Z

    if-nez v1, :cond_f

    iget v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    if-nez v9, :cond_e

    if-nez p1, :cond_e

    if-ltz v1, :cond_e

    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->getItemCount()I

    move-result p1

    if-ge v1, p1, :cond_e

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_8

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_8

    :cond_f
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iput-boolean v3, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mIsRefreshing:Z

    iget-boolean p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNeedRefresh:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCachedMediaDevices:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->buildMediaItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    check-cast p1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object v0, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v3, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNeedRefresh:Z

    :cond_10
    :goto_8
    return-void
.end method

.method public start()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCachedMediaDevices:Ljava/util/List;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyDeviceInfoMap:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyMediaDevicesManager:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/INearbyMediaDevicesProvider;

    invoke-interface {v3, v0}, Landroid/media/INearbyMediaDevicesProvider;->registerNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->activeCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settingslib/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/settingslib/media/flags/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/media/session/MediaController;

    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {v1, v2, v3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.mediaSession"

    const-class v3, Landroid/media/session/MediaSession$Token;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSession$Token;

    new-instance v2, Landroid/media/session/MediaController;

    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_6
    move-object v1, v3

    :goto_2
    iput-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_8

    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCurrentState:I

    :cond_7
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_8
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/systemui/media/dialog/MediaOutputController;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "MediaOutputController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No media controller for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iput-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/media/LocalMediaManager;->registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/InfoMediaManager;->startScanOnRouter()V

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->isBroadcastSupported()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final startLeBroadcastDialog()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v4, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mUserHandle:Landroid/os/UserHandle;

    iget-object v7, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mToken:Landroid/media/session/MediaSession$Token;

    iget-object v8, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v9, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v10, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v11, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iget-object v12, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iget-object v13, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyMediaDevicesManager:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    iget-object v14, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    iget-object v0, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mKeyGuardManager:Landroid/app/KeyguardManager;

    move-object/from16 v19, v2

    iget-object v2, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v17, v2

    iget-object v2, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v16, v3

    move-object v3, v15

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    move-object/from16 v18, v2

    invoke-direct/range {v3 .. v18}, Lcom/android/systemui/media/dialog/MediaOutputController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;Landroid/media/AudioManager;Landroid/os/PowerExemptionManager;Landroid/app/KeyguardManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/settings/UserTracker;)V

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    iget-object v1, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;-><init>(Landroid/content/Context;ZLcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/dialog/MediaOutputController;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    return-void
.end method

.method public stop()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mIsLeBroadcastCallbackRegistered:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastCallback:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    const-string v2, "MediaOutputController"

    if-nez v0, :cond_0

    const-string v0, "The broadcast profile is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v3, "Unregister LE broadcast callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mIsLeBroadcastCallbackRegistered:Z

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/InfoMediaManager;->stopScanOnRouter()V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCachedMediaDevices:Ljava/util/List;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyMediaDevicesManager:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->activeCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/INearbyMediaDevicesProvider;

    invoke-interface {v1, p0}, Landroid/media/INearbyMediaDevicesProvider;->unregisterNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyDeviceInfoMap:Ljava/util/Map;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateButtonBackgroundColorFilter()V
    .locals 3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget v1, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorButtonBackground:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDoneButton:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorPositiveButtonText:I

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public final updateDialogBackgroundColor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget v1, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorDialogBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDeviceListLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorDialogBackground:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method
