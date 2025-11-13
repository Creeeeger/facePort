.class public Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mEarProtectLevel:I

.field public mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

.field public final mIconActiveBgColor:Landroid/content/res/ColorStateList;

.field public final mIconActiveColor:Landroid/content/res/ColorStateList;

.field public mLabelTextView:Landroid/widget/TextView;

.field public mProgressBarAnimator:Landroid/animation/ObjectAnimator;

.field public final mRecheckCallback:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda0;

.field public final mResources:Landroid/content/res/Resources;

.field public mSeekBar:Landroid/widget/SeekBar;

.field public final mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

.field public mStream:I

.field public mTargetProgressLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mRecheckCallback:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06096f

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    const/4 v0, 0x0

    new-array v1, v0, [I

    filled-new-array {v1}, [[I

    move-result-object v1

    new-instance v2, Landroid/content/res/ColorStateList;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {v2, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06096e

    invoke-virtual {p1, v1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    new-array p2, v0, [I

    filled-new-array {p2}, [[I

    move-result-object p2

    new-instance v0, Landroid/content/res/ColorStateList;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIconActiveBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final getStreamLabel$2(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getSmartViewLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRemoteLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isDynamic()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getNameRes()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isRemoteMic()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x6

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    const v5, 0x7f131444

    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isBtScoOn()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    if-eq p0, v3, :cond_4

    const/16 p1, 0x16

    if-eq p0, p1, :cond_4

    if-eq p0, v4, :cond_4

    const/16 p1, 0x15

    if-ne p0, p1, :cond_5

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    sget-object v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/16 v6, 0x16

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    goto/16 :goto_0

    :pswitch_1
    iget p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    if-ne p1, v6, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    iget p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    if-ne p1, v6, :cond_1

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result p1

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget v4, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    invoke-virtual {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mRecheckCallback:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mRecheckCallback:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    :pswitch_4
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result p1

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mRecheckCallback:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mRecheckCallback:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    :pswitch_5
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    return-void
.end method

.method public final updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f13144d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f13144e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f13144c

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-eq v0, p2, :cond_4

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isMuted()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f13144f

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f131450

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const p2, 0x7f0a0e78

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
