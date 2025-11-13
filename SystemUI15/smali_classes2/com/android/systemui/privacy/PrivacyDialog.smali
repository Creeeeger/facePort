.class public final Lcom/android/systemui/privacy/PrivacyDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final clickListener:Lcom/android/systemui/privacy/PrivacyDialog$clickListener$1;

.field public final dismissListeners:Ljava/util/List;

.field public final dismissed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final iconColorSolid:I

.field public final list:Ljava/util/List;

.field public mBlurView:Landroid/widget/ImageView;

.field public mDialogTopMargin:I

.field public mDialogTranslateX:I

.field public mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public final phonecall:Ljava/lang/String;

.field public qsExpanded:Z

.field public rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;",
            ">;",
            "Lkotlin/jvm/functions/Function4;",
            ")V"
        }
    .end annotation

    const v0, 0x7f1402e6

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->list:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->dismissListeners:Ljava/util/List;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->dismissed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const p2, 0x7f060576

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->iconColorSolid:I

    const p2, 0x7f130d6c

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    const p2, 0x7f1310b4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->phonecall:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/privacy/PrivacyDialog$clickListener$1;

    invoke-direct {p1, p3}, Lcom/android/systemui/privacy/PrivacyDialog$clickListener$1;-><init>(Lkotlin/jvm/functions/Function4;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->clickListener:Lcom/android/systemui/privacy/PrivacyDialog$clickListener$1;

    return-void
.end method


# virtual methods
.method public final createView(Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;)Landroid/view/View;
    .locals 14

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->rootView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    const v3, 0x7f0d03a1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/privacy/PrivacyDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v5, v1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v1, v7, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    const/4 v8, 0x4

    if-ne v1, v8, :cond_1

    const v1, 0x7f080dd2

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    const v1, 0x7f081094

    goto :goto_0

    :cond_3
    const v1, 0x7f081092

    goto :goto_0

    :cond_4
    const v1, 0x7f081093

    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x7f0a0505

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/privacy/PrivacyDialog;->iconColorSolid:I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v8, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    invoke-virtual {v8, v1}, Lcom/android/systemui/privacy/PrivacyType;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v1, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    if-eqz v1, :cond_5

    const v1, 0x7f1310b7

    goto :goto_1

    :cond_5
    const v1, 0x7f1310b5

    :goto_1
    iget-boolean v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->phoneCall:Z

    if-eqz v3, :cond_6

    iget-object v8, p0, Lcom/android/systemui/privacy/PrivacyDialog;->phonecall:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object v8, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->applicationName:Ljava/lang/CharSequence;

    :goto_2
    iget v9, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->userId:I

    invoke-static {v9}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v10

    sget-boolean v11, Lcom/android/systemui/ScRune;->QUICK_SUPPORT_LOCATION_PRIVACY_CHIP:Z

    iget-boolean v12, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->isSystem:Z

    if-eqz v11, :cond_7

    if-eqz v12, :cond_7

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f1310b6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_7
    iget-boolean v13, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->enterprise:Z

    if-nez v13, :cond_8

    if-eqz v10, :cond_a

    :cond_8
    iget-object v10, p0, Lcom/android/systemui/privacy/PrivacyDialog;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v10, :cond_9

    move-object v10, v2

    :cond_9
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v10, v9, v13}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    new-array v10, v6, [Ljava/lang/CharSequence;

    aput-object v8, v10, v4

    const-string v8, "("

    const-string v13, ")"

    invoke-static {v8, v9, v13}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v7

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v1, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    iget-object v9, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    if-eqz v11, :cond_b

    if-nez v12, :cond_e

    :cond_b
    if-eqz v8, :cond_c

    if-eqz v9, :cond_c

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v10, 0x7f130d6a

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v10, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_c
    if-eqz v8, :cond_d

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v9, 0x7f130d69

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v8, 0x7f130d6b

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_e
    :goto_4
    if-eqz v2, :cond_f

    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v1, v5, v4

    const-string v1, " "

    aput-object v1, v5, v7

    aput-object v2, v5, v6

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_f
    const v2, 0x7f0a0d10

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    if-nez v3, :cond_10

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialog;->clickListener:Lcom/android/systemui/privacy/PrivacyDialog$clickListener$1;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07104d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->mDialogTopMargin:I

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    const/4 v1, 0x2

    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    sget-object v6, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070dd9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    mul-float/2addr v5, v0

    float-to-int v0, v5

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07148f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0713b9

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_0
    add-int/2addr p1, v5

    iput p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->mDialogTopMargin:I

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-boolean v3, v0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v5, p0, Lcom/android/systemui/privacy/PrivacyDialog;->mDialogTopMargin:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v5, p0, Lcom/android/systemui/privacy/PrivacyDialog;->mDialogTranslateX:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v4}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f060a9b

    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p1, v4}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f071044

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyDialog;->qsExpanded:Z

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQQSPanelSidePadding(Landroid/content/Context;)I

    move-result v0

    :goto_1
    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v5, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v2

    mul-int/2addr v0, v1

    sub-int/2addr v2, v0

    const/4 v0, -0x2

    invoke-virtual {p1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x7f140015

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_5
    const p1, 0x7f0d03a0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const p1, 0x7f0a0143

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const p1, 0x7f0a09ef

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->rootView:Landroid/view/ViewGroup;

    sget-boolean p1, Lcom/android/systemui/ScRune;->QUICK_SUPPORT_LOCATION_PRIVACY_CHIP:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->list:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    iget-boolean v5, v5, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->isSystem:Z

    if-nez v5, :cond_6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->rootView:Landroid/view/ViewGroup;

    if-nez v2, :cond_8

    move-object v2, v0

    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/systemui/privacy/PrivacyDialog;->createView(Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->list:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    iget-boolean v5, v5, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->isSystem:Z

    if-eqz v5, :cond_a

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_f

    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->rootView:Landroid/view/ViewGroup;

    if-nez p1, :cond_c

    move-object p1, v0

    :cond_c
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    invoke-virtual {p0, v1}, Lcom/android/systemui/privacy/PrivacyDialog;->createView(Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_d
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->list:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog;->rootView:Landroid/view/ViewGroup;

    if-nez v2, :cond_e

    move-object v2, v0

    :cond_e
    invoke-virtual {p0, v1}, Lcom/android/systemui/privacy/PrivacyDialog;->createView(Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_f
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog;->rootView:Landroid/view/ViewGroup;

    if-nez p1, :cond_10

    goto :goto_7

    :cond_10
    move-object v0, p1

    :goto_7
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    new-instance p1, Lcom/android/systemui/privacy/PrivacyDialog$onCreate$8;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyDialog$onCreate$8;-><init>(Lcom/android/systemui/privacy/PrivacyDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public final stop()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialog;->dismissed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialog;->dismissListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logPrivacyDialogDismissed()V

    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/privacy/PrivacyDialogEvent;->PRIVACY_DIALOG_DISMISSED:Lcom/android/systemui/privacy/PrivacyDialogEvent;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    return-void
.end method
