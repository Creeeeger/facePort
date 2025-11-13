.class public final Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;
.super Landroid/app/Dialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# instance fields
.field public final dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;)V
    .locals 10

    const v0, 0x7f14060e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;

    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    const p1, 0x7f0d056c

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x20700

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    const-string v2, "VolumeWarningSideViewDialog"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x833

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    sget-object p1, Lcom/android/systemui/volume/util/ContextUtils;->INSTANCE:Lcom/android/systemui/volume/util/ContextUtils;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayWidth(Landroid/content/Context;)I

    move-result p1

    :goto_0
    move v6, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :goto_1
    int-to-float p1, v6

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p1, v0

    const/16 v0, 0xa0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    div-float v7, p1, v0

    const p1, 0x7f0a0e93

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f071841

    invoke-static {v2, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result v9

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f071842

    invoke-static {v2, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result v8

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cover_text_direction"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    new-instance v0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$adjustLayout$1;-><init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;ILandroid/view/ViewGroup;IFFF)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;

    const v0, 0x7f0a07ca

    if-ne p2, p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sget-object v2, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    :cond_1
    const p1, 0x7f0a0e95

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f0a08fd

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v4, p2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f1313dc

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1040013

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f131456

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f131452

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f131478

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f131477

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$1;-><init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2;-><init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;

    sget-object v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WhenMappings;->$EnumSwitchMapping$0:[I

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
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    return-void
.end method

.method public final getWindow()Landroid/view/Window;
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    const v0, 0x7f0a0e95

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    const p1, 0x7f0a0e94

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    const p1, 0x7f0a0e96

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x34000000    # -3.3554432E7f

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->dismiss()V

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
