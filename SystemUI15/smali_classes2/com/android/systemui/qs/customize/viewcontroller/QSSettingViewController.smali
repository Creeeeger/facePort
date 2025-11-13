.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;
.super Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field public final editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

.field public final onActionArrowClickListener:Landroid/view/View$OnClickListener;

.field public final popupButtonController:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

.field public final topTileEditClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/SecQSSettingEditResources;Lcom/android/systemui/qs/customize/QSCPopupButtonController;Landroidx/core/view/AccessibilityDelegateCompat;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0d02ee

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->popupButtonController:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    iput-object p5, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->onActionArrowClickListener:Landroid/view/View$OnClickListener;

    iput-object p6, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->topTileEditClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->popupButtonController:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

    iget-boolean v1, v0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->barChanged:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->message:Ljava/lang/Integer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->barChanged:Z

    invoke-super {p0}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->close()V

    return-void
.end method

.method public final configChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->setupView()V

    return-void
.end method

.method public final resolveMessage(Ljava/lang/Integer;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->updateSeparateButtonText()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setupView()V
    .locals 13

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070634

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->onActionArrowClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const v3, 0x7f0a03f1

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController$setupTileEditButtons$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController$setupTileEditButtons$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const v3, 0x7f0a08f9

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const v4, 0x7f0a0548

    invoke-virtual {v3, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->popupButtonController:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

    iput-object v0, v4, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, v4, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->$ENTRIES:Lkotlin/enums/EnumEntries;

    check-cast v0, Lkotlin/collections/AbstractList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lkotlin/collections/AbstractList$IteratorImpl;

    invoke-direct {v5, v0}, Lkotlin/collections/AbstractList$IteratorImpl;-><init>(Lkotlin/collections/AbstractList;)V

    move v0, v2

    :cond_1
    :goto_0
    invoke-virtual {v5}, Lkotlin/collections/AbstractList$IteratorImpl;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Lkotlin/collections/AbstractList$IteratorImpl;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->isAvailableMenu(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v4, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->container:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    if-nez v9, :cond_2

    move-object v9, v10

    :cond_2
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v4, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->container:Landroid/widget/LinearLayout;

    if-nez v9, :cond_3

    move-object v9, v10

    :cond_3
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    sget-object v9, Lcom/android/systemui/qs/customize/QSCPopupButtonController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v9, v9, v11

    if-eq v9, v7, :cond_8

    if-eq v9, v8, :cond_7

    add-int/lit8 v0, v0, 0x1

    iget-object v7, v4, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iget-object v8, v4, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->container:Landroid/widget/LinearLayout;

    if-nez v8, :cond_5

    move-object v8, v10

    :cond_5
    const v9, 0x7f0d02e9

    invoke-virtual {v7, v9, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iget-object v8, v4, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->container:Landroid/widget/LinearLayout;

    if-nez v8, :cond_6

    move-object v8, v10

    :cond_6
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v8, v4, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->children:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v7, v6}, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->setPopupText(Landroid/view/View;Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;)V

    goto :goto_1

    :cond_7
    const v7, 0x7f0a0bb4

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v10

    goto :goto_1

    :cond_8
    const v7, 0x7f0a07a7

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v10

    :goto_1
    if-eqz v10, :cond_1

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v10, v6}, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->setPopupText(Landroid/view/View;Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;)V

    goto :goto_0

    :cond_9
    const v3, 0x7f080e43

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v5, 0x7f080e41

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f080e3f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v5, v6}, [Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v4, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->children:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    move v9, v6

    :goto_2
    if-ge v6, v5, :cond_f

    iget-object v10, v4, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->children:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-eqz v0, :cond_f

    if-eq v0, v7, :cond_d

    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->isAvailableMenu(I)Z

    move-result v11

    if-eqz v11, :cond_e

    if-lez v9, :cond_a

    add-int/lit8 v11, v0, -0x1

    if-ge v9, v11, :cond_a

    move v11, v7

    goto :goto_3

    :cond_a
    add-int/lit8 v11, v0, -0x1

    if-lt v9, v11, :cond_b

    move v11, v8

    goto :goto_3

    :cond_b
    move v11, v2

    :goto_3
    if-eq v11, v8, :cond_c

    const v12, 0x7f0a039c

    invoke-virtual {v10, v12}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    aget-object v11, v3, v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_d
    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->isAvailableMenu(I)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080e42

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_e
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const v3, 0x7f0a02cd

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    iget-object v4, v3, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->context:Landroid/content/Context;

    const-string v5, "com.samsung.android.voc"

    invoke-static {v4, v5}, Lcom/android/systemui/util/DeviceState;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/16 v6, 0x8

    const-string v7, "SecQSSettingEditResources"

    if-eqz v4, :cond_13

    :try_start_0
    iget-object v3, v3, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0xa220268

    if-ge v2, v3, :cond_10

    goto :goto_8

    :cond_10
    const v2, 0x7f0a0233

    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    const v2, 0x7f0a0235

    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1310a3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    new-instance v2, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController$setupIsolatedButtons$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController$setupIsolatedButtons$1$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    :catch_0
    const-string v2, "contact us not found exception occurred."

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_13
    const-string v2, "contact us not installed."

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    :goto_9
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->updateSeparateButtonText()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_15
    return-void
.end method

.method public final show(Ljava/lang/Runnable;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->isShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->setupView()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const v1, 0x7f0a0afa

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/SecQSSettingEditResources;Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;)V

    iget-object v1, v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->show(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateButtonsVisibility(Z)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x7f0a03f1

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->isPhoneLandscape()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->popupButtonController:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->container:Landroid/widget/LinearLayout;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final updateSeparateButtonText()V
    .locals 5

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x7f0a03f1

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->isPhoneLandscape()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->popupButtonController:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->container:Landroid/widget/LinearLayout;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
