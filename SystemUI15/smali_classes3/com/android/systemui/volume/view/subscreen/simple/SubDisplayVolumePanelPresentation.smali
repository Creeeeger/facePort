.class public final Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;
.super Landroid/app/Presentation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActiveStream:I

.field public final mArrowLeft:Landroid/widget/ImageButton;

.field public final mArrowRight:Landroid/widget/ImageButton;

.field public final mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

.field public mBlurView:Landroid/view/View;

.field public final mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public mIsDualAudio:Z

.field public mIsSeekBarTouching:Z

.field public final mRowContainer:Landroid/view/ViewGroup;

.field public mStartProgress:Z

.field public final mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

.field public final mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

.field public final mVibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

.field public final mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

.field public final mWarningToastPopup:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 4

    const-class v0, Landroid/content/Context;

    check-cast p1, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p1, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontSubDisplay()Landroid/view/Display;

    move-result-object v1

    const v2, 0x7f140618

    invoke-direct {p0, v0, v1, v2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    new-instance v0, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    const-class v1, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    const-class v1, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p1, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/store/VolumePanelStore;

    iput-object v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    const-class v2, Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/view/VolumePanelMotion;

    iput-object v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    new-instance v2, Lcom/android/systemui/volume/util/BlurEffect;

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/android/systemui/volume/util/BlurEffect;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V

    iput-object v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    const-class v2, Lcom/android/systemui/volume/util/VibratorWrapper;

    invoke-virtual {p1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/VibratorWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mVibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    iput-object v1, v0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0d0569

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0563

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Presentation;->setContentView(I)V

    const p1, 0x7f0a0c32

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mArrowLeft:Landroid/widget/ImageButton;

    const p1, 0x7f0a0c33

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mArrowRight:Landroid/widget/ImageButton;

    const p1, 0x7f0a0c35

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mRowContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a0c37

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mWarningToastPopup:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final addRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMultiSoundBt()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final dismiss()V
    .locals 3

    invoke-super {p0}, Landroid/app/Presentation;->dismiss()V

    invoke-virtual {p0}, Landroid/app/Presentation;->onStop()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mWarningToastPopup:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

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

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-static {v0, v2, p1, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStartProgress:Z

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsSeekBarTouching:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStartProgress:Z

    if-nez v0, :cond_3

    const v0, 0x7f0a0c48

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v6, v5, v3

    int-to-float v7, v6

    cmpl-float v7, v1, v7

    if-lez v7, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v6

    int-to-float v6, v7

    cmpg-float v1, v1, v6

    if-gez v1, :cond_2

    aget v1, v5, v2

    int-to-float v5, v1

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-static {p1, v2, p0, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    return v2

    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStartProgress:Z

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Presentation;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final initDialog$1()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string v2, "SubScreenVolumeBar"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    const v2, 0x10c0120

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Presentation;->setCanceledOnTouchOutside(Z)V

    const/16 v2, 0x7f5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f13146f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;)V

    invoke-virtual {p0, v2}, Landroid/app/Presentation;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$1;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    sget-object v2, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$2;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/16 v4, 0x8

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Presentation;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mActiveStream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->addRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto/16 :goto_3

    :pswitch_1
    iput-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsSeekBarTouching:Z

    goto/16 :goto_3

    :pswitch_2
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsSeekBarTouching:Z

    goto/16 :goto_3

    :pswitch_3
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStartProgress:Z

    goto/16 :goto_3

    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mWarningToastPopup:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mWarningToastPopup:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :pswitch_5
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mWarningToastPopup:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne p1, v4, :cond_c

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mWarningToastPopup:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :pswitch_6
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mArrowLeft:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mArrowRight:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_3

    :pswitch_7
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mArrowLeft:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mArrowRight:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    move-result p1

    if-eqz p1, :cond_c

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;I)V

    new-instance v5, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 p1, 0x2

    new-array p1, p1, [F

    aput p0, p1, v0

    aput v3, p1, v1

    const-string p0, "alpha"

    invoke-static {v2, p0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelHideAnimation$1$1;

    invoke-direct {p1, v4, v5}, Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelHideAnimation$1$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->dismiss()V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isDualAudio()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMultiSoundBt()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v2

    const/16 v5, 0x15

    if-ne v2, v5, :cond_4

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_0
    const v5, 0x7f0a0c48

    invoke-virtual {p0, v5}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0a0c47

    invoke-virtual {p0, v6}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mArrowLeft:Landroid/widget/ImageButton;

    invoke-virtual {v7, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-boolean v7, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    if-eqz v7, :cond_7

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mArrowRight:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v2, :cond_6

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v7, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v7}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v2

    const v7, 0x7f0813de

    invoke-virtual {v2, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0813dd

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mArrowLeft:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mArrowRight:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mArrowRight:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v1, :cond_8

    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->addRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->initDialog$1()V

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeSafetyWarningDialog()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeLimiterDialog()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mWarningToastPopup:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    invoke-virtual {p0}, Landroid/app/Presentation;->show()V

    :cond_c
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->initDialog$1()V

    return-void
.end method
