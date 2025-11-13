.class public final Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;
.super Landroid/app/Dialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# instance fields
.field public final dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;)V
    .locals 7

    const v0, 0x7f14060e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;

    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    const p1, 0x7f0d056d

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    const-string v2, "VolumeWarningWalletMiniDialog"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x833

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p1, v0

    const/16 v0, 0xa0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    sget-object v0, Lcom/android/systemui/volume/util/ContextUtils;->INSTANCE:Lcom/android/systemui/volume/util/ContextUtils;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x7f0a0e98

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07183b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1, v0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->scaleWidthAndHeight(FLandroid/view/View;)V

    const v0, 0x7f0a0e99

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->scaleWidthAndHeight(FLandroid/view/View;)V

    const v0, 0x7f0a07ca

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/Button;->getTextSize()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v3, v4}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    const v2, 0x7f0a08fd

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/Button;->getTextSize()F

    move-result v5

    mul-float/2addr v5, p1

    invoke-virtual {v4, v3, v5}, Landroid/widget/Button;->setTextSize(IF)V

    sget-object v5, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;

    if-ne p2, v5, :cond_1

    sget-object v5, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v4, 0x7f0a0e9a

    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    mul-float/2addr v6, p1

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {p1, v5}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->scaleWidthAndHeight(FLandroid/view/View;)V

    :cond_2
    const v5, 0x7f0a0e97

    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    mul-float/2addr v6, p1

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {p1, v5}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->scaleWidthAndHeight(FLandroid/view/View;)V

    :cond_3
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v4, p2

    if-eq p2, v1, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    goto :goto_0

    :cond_4
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

    goto :goto_0

    :cond_5
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

    goto :goto_0

    :cond_6
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

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$setClickListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$setClickListener$1;-><init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$setClickListener$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$setClickListener$2;-><init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static scaleWidthAndHeight(FLandroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_0

    int-to-float v1, v1

    mul-float/2addr v1, p0

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_1

    int-to-float v1, v1

    mul-float/2addr v1, p0

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;

    sget-object v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WhenMappings;->$EnumSwitchMapping$0:[I

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
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

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

    sget-object v0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    const v0, 0x7f0a0e9a

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    const p1, 0x7f0a0e99

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    const p1, 0x7f0a0e97

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x34000000    # -3.3554432E7f

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->dismiss()V

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
