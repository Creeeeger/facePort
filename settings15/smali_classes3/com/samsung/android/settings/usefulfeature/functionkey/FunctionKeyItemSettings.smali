.class public abstract Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler$OnChangeListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mApplicationKey:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mControllersHandler:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

.field public mFunctionKeyItems:Ljava/util/List;

.field public mPressType:I

.field public final mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mPressType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mApplicationKey:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mFunctionKeyItems:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mFunctionKeyItems:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1dbd

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701a5

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "pressType"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mPressType:I

    const-string v1, "applicationKey"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mApplicationKey:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mPressType:I

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mApplicationKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyUtils;->getFunctionKeyItems(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mFunctionKeyItems:Ljava/util/List;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCheckedChanged(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mControllersHandler:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->updateStates(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mControllersHandler:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/shortcuts/EditShortcutsPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mChildren:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mChildren:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mChildren:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mControllersHandler:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mOnChangeListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler$OnChangeListener;

    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mFunctionKeyItems:Ljava/util/List;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;)V

    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->displayResourceTilesToScreen(Landroidx/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mControllersHandler:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->updateStates(Z)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070dd7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070dd9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p2, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070dd6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    add-float/2addr p1, p2

    float-to-int v3, p1

    new-instance p1, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080a92

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemSettings;->mContext:Landroid/content/Context;

    const v4, 0x1020018

    const v5, 0x1020001

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;III)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
