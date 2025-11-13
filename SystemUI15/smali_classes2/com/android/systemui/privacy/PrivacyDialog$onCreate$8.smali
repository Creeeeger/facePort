.class public final Lcom/android/systemui/privacy/PrivacyDialog$onCreate$8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog$onCreate$8;->this$0:Lcom/android/systemui/privacy/PrivacyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyDialog$onCreate$8;->this$0:Lcom/android/systemui/privacy/PrivacyDialog;

    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialog;->mBlurView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060672

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060671

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    :goto_0
    sget-boolean v5, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    const/16 v6, 0x78

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v0, v7}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    invoke-virtual {v0, v6}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    goto/16 :goto_3

    :cond_2
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const-class v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    if-ne v3, v8, :cond_3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f071044

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_1

    :cond_3
    iget-boolean v3, v0, Lcom/android/systemui/privacy/PrivacyDialog;->qsExpanded:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v3, v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v3}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQQSPanelSidePadding(Landroid/content/Context;)I

    move-result v7

    :goto_1
    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v7, v7, 0x2

    sub-int v14, v3, v7

    iget-object v3, v0, Lcom/android/systemui/privacy/PrivacyDialog;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int v15, v4, v3

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v14

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/android/systemui/privacy/PrivacyDialog;->mDialogTranslateX:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/systemui/privacy/PrivacyDialog;->mDialogTopMargin:I

    new-instance v13, Landroid/graphics/Rect;

    add-int v5, v3, v14

    add-int v7, v4, v15

    invoke-direct {v13, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v9

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    const/16 v11, 0x7f4

    const/4 v12, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v9 .. v18}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_5

    new-instance v2, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v2, v8}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    invoke-virtual {v2, v6}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/SemBlurInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    :cond_6
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    return-void
.end method
