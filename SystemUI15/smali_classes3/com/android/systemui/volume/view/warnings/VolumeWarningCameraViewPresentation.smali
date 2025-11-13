.class public final Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;
.super Landroid/app/Presentation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# instance fields
.field public final dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;)V
    .locals 3

    const v0, 0x7f140618

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    iput-object p3, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;

    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    const p1, 0x7f0d056b

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x220700

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x7f5

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    const-wide/16 v0, 0x1770

    invoke-virtual {p2, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    const-string v0, "VolumeWarningCameraViewPresentation"

    invoke-virtual {p2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    sget-object p1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;

    const p2, 0x7f0a07ca

    if-ne p3, p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/app/Presentation;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    :cond_0
    const p1, 0x7f0a0e90

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0a08fd

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v2, p3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_3

    const/4 v2, 0x2

    if-eq p3, v2, :cond_2

    const/4 v2, 0x3

    if-eq p3, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f1313dc

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x1040013

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f131456

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f131452

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f131478

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f131477

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0, p2}, Landroid/app/Presentation;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$setClickListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$setClickListener$1;-><init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$setClickListener$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$setClickListener$2;-><init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 4

    invoke-super {p0}, Landroid/app/Presentation;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;

    sget-object v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    return-void
.end method

.method public final getWindow()Landroid/view/Window;
    .locals 0

    invoke-super {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    const v0, 0x7f0a0e91

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    const p1, 0x7f0a0e92

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->dismiss()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
