.class public Lcom/samsung/android/settings/display/SecDreamSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAddedDreamInfos:Ljava/util/ArrayList;

.field public mBackend:Lcom/android/settingslib/dream/DreamBackend;

.field public mBlockListClickEvent:Z

.field public mContext:Landroid/content/Context;

.field public mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field public mOldDreamEnabled:Z

.field public final mPackageReceiver:Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

.field public mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

.field public mScreenSaverObserver:Lcom/samsung/android/settings/display/SecDreamSettings$1;

.field public mSkipRemoveAddPreferenceUpdateFromTouch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/display/SecDreamSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPackageReceiver:Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSkipRemoveAddPreferenceUpdateFromTouch:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBlockListClickEvent:Z

    return-void
.end method

.method public static isDreamEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public static toDreamInfoString(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "settings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/16 p0, 0x244

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2f

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_display"

    return-object p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f15092c

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const v1, 0x7f06071b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const v1, 0x7f0709d7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    const v4, 0x7f0709d9

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f1426e7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f1426ea

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\n"

    invoke-static {v1, v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f1426e8

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {p1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f142044

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    new-instance p1, Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDreamSettings;->isDreamEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mOldDreamEnabled:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mAddedDreamInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f14203d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f142043

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f1426e9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, p1, v3

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    iget-object v4, v1, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-boolean v1, v1, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnDockByDefault:Z

    const-string/jumbo v5, "screensaver_activate_on_dock"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v4, "screensaver_activate_on_sleep"

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    iget-object v6, v1, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-boolean v1, v1, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnSleepByDefault:Z

    invoke-static {v6, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    iget-object v3, v1, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-boolean v1, v1, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnDockByDefault:Z

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    iget-object v2, v1, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-boolean v1, v1, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnSleepByDefault:Z

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f142046

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/display/SecDreamSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$4;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    invoke-virtual {v1, p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/display/SecDreamSettings$3;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p2

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {p2, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/settings/display/SecDreamSettings$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    const v1, 0x7f142046

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    new-instance v0, Lcom/samsung/android/settings/display/SecDreamSettings$2;

    invoke-direct {v0, p2}, Lcom/samsung/android/settings/display/SecDreamSettings$2;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings$$ExternalSyntheticLambda0;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/MenuItem;

    aput-object p1, p2, v1

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPackageReceiver:Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Lcom/samsung/android/settings/display/SecDreamSettings$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Lcom/samsung/android/settings/display/SecDreamSettings$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Lcom/samsung/android/settings/display/SecDreamSettings$1;

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBlockListClickEvent:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->refreshFromBackend()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPackageReceiver:Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Lcom/samsung/android/settings/display/SecDreamSettings$1;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/display/SecDreamSettings$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/display/SecDreamSettings$1;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Lcom/samsung/android/settings/display/SecDreamSettings$1;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_components"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Lcom/samsung/android/settings/display/SecDreamSettings$1;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Lcom/samsung/android/settings/display/SecDreamSettings$1;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final refreshFromBackend()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSkipRemoveAddPreferenceUpdateFromTouch:Z

    const/4 v4, 0x0

    if-nez v3, :cond_12

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_0

    :goto_0
    move v3, v5

    goto :goto_3

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v6, v6, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iput-boolean v5, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mAddedDreamInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v3, v6, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-static {v7}, Lcom/samsung/android/settings/display/SecDreamSettings;->toDreamInfoString(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mAddedDreamInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    xor-int/2addr v3, v5

    :goto_3
    if-eqz v3, :cond_b

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v3, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v5, v3, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mPositionMode:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const v6, 0x7f1426ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_6
    const v6, 0x7f1426e7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "\n"

    invoke-static {v6, v7}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f1426e8

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_7
    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance v3, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mAddedDreamInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v3, v4

    :goto_5
    if-ge v3, v2, :cond_9

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    new-instance v6, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, p0, v7, v5}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mAddedDreamInfos:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/samsung/android/settings/display/SecDreamSettings;->toDreamInfoString(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v2, -0x1

    if-ne v3, v5, :cond_8

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v6, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mLastPreference:Ljava/lang/Boolean;

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    new-instance v1, Lcom/samsung/android/settings/widget/SecButtonPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/widget/SecButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setDefaultRoundButtonStyle()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1426d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/widget/SecButtonPreference;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    new-instance v2, Lcom/samsung/android/settings/display/SecDreamSettings$5;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$5;-><init>(ILjava/lang/Object;)V

    iput-object v2, v1, Lcom/samsung/android/settings/widget/SecButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v1, :cond_a

    array-length v2, v1

    move v3, v4

    :goto_6
    if-ge v3, v2, :cond_a

    aget-object v5, v1, v3

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    iput-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    goto/16 :goto_a

    :cond_b
    move v0, v4

    :goto_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v2

    instance-of v3, v1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    if-eqz v3, :cond_f

    check-cast v1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v3}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_9

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v3, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v2, :cond_e

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_8

    :cond_d
    iget-object v2, v1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v2, :cond_e

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_e
    :goto_8
    invoke-virtual {v1}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_9

    :cond_f
    instance-of v2, v1, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    if-eqz v2, :cond_10

    check-cast v1, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v2

    xor-int/2addr v2, v5

    iget-object v1, v1, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_10
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_a

    :cond_12
    iput-boolean v4, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSkipRemoveAddPreferenceUpdateFromTouch:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_13
    :goto_a
    return-void
.end method
