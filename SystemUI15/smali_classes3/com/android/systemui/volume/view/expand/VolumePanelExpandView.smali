.class public final Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field public activeStream:I

.field public blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

.field public blurView:Landroid/widget/ImageView;

.field public contentsView:Landroid/view/ViewGroup;

.field public dialog:Landroid/app/Dialog;

.field public handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public liveCaptionButton:Landroid/widget/ImageButton;

.field public logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public rowContainer:Landroid/view/ViewGroup;

.field public final rowsLabel:Ljava/util/HashMap;

.field public settingButton:Landroid/widget/ImageButton;

.field public store:Lcom/android/systemui/volume/store/VolumePanelStore;

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

.field public systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

.field public titleView:Landroid/widget/TextView;

.field public volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->rowsLabel:Ljava/util/HashMap;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->activeStream:I

    return-void
.end method


# virtual methods
.method public final addRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->rowsLabel:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->rowContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->addSpace(Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3
    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    if-nez v2, :cond_4

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    if-nez v2, :cond_5

    move-object v2, v1

    :cond_5
    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelRowExt;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addRows: rows="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VolumePanelExpandView"

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d055d

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/systemui/volume/view/VolumeRowView;

    iget-object v3, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    if-nez v3, :cond_6

    move-object v4, v1

    goto :goto_2

    :cond_6
    move-object v4, v3

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez v3, :cond_7

    move-object v5, v1

    goto :goto_3

    :cond_7
    move-object v5, v3

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez v3, :cond_8

    move-object v8, v1

    goto :goto_4

    :cond_8
    move-object v8, v3

    :goto_4
    move-object v3, v9

    move-object v6, v2

    move-object v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/volume/view/VolumeRowView;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/view/VolumePanelMotion;)V

    iget-object v3, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->rowContainer:Landroid/view/ViewGroup;

    if-nez v3, :cond_9

    move-object v3, v1

    :cond_9
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->rowContainer:Landroid/view/ViewGroup;

    if-nez v3, :cond_a

    move-object v3, v1

    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->addSpace(Landroid/view/ViewGroup;)V

    iget-object v3, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->rowsLabel:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, v9, Lcom/android/systemui/volume/view/VolumeRowView;->label:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_b
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->rowContainer:Landroid/view/ViewGroup;

    if-nez p1, :cond_c

    goto :goto_5

    :cond_c
    move-object v1, p1

    :goto_5
    new-instance p1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$addRows$$inlined$doOnNextLayout$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$addRows$$inlined$doOnNextLayout$1;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_d
    return-void
.end method

.method public final addSpace(Landroid/view/ViewGroup;)V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d055c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Space;

    invoke-virtual {p0, v0}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-static {p1, v2, p0, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCaptionEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->toggleLiveCaptionButton(Z)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->updateVolumeTitle(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->activeStream:I

    if-eq v0, v2, :cond_4

    iput v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->activeStream:I

    iget-object v2, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->rowsLabel:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->rowContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->addRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->updateVolumeTitle(I)V

    :goto_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0e74

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->rowContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0e8a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->titleView:Landroid/widget/TextView;

    const v0, 0x7f0a0e6a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->contentsView:Landroid/view/ViewGroup;

    const v0, 0x7f0a0e64

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->blurView:Landroid/widget/ImageView;

    const v0, 0x7f0a0e84

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->settingButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$onFinishInflate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$onFinishInflate$1;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0e50

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->liveCaptionButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$onFinishInflate$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$onFinishInflate$2;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final toggleLiveCaptionButton(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->liveCaptionButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    if-eqz p1, :cond_1

    const v2, 0x7f080b66

    goto :goto_0

    :cond_1
    const v2, 0x7f080b65

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->liveCaptionButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_3

    const p1, 0x7f131458

    goto :goto_2

    :cond_3
    const p1, 0x7f131457

    :goto_2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1303cb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f131446

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateVolumeTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->rowsLabel:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->titleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->titleView:Landroid/widget/TextView;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
