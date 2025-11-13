.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;
.super Landroid/widget/SeekBar;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/SeekBar;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field public currentProgress:I

.field public enabled:Z

.field public isTracking:Z

.field public final scaledTouchSlop:F

.field public seekbarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

.field public stream:I

.field public touchedX:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->stream:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->enabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->stream:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->enabled:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->scaledTouchSlop:F

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Landroid/widget/SeekBar;->setPadding(IIII)V

    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar$VolumeSeekbarChangeListener;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar$VolumeSeekbarChangeListener;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/SeekBar;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->enabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->touchedX:F

    sub-float/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->isTracking:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->trackTouchEvent$3(F)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->scaledTouchSlop:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->trackTouchEvent$3(F)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SEEKBAR_START_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->stream:I

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_3
    :goto_0
    return v1

    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->isTracking:Z

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->seekbarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SEEKBAR_TOUCH_UP:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->stream:I

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->touchedX:F

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->currentProgress:I

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->seekbarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_7

    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SEEKBAR_TOUCH_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->stream:I

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return v1
.end method

.method public final setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->enabled:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3f333333    # 0.7f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setAlpha(F)V

    return-void
.end method

.method public final setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->seekbarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public final trackTouchEvent$3(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->isTracking:Z

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->currentProgress:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
