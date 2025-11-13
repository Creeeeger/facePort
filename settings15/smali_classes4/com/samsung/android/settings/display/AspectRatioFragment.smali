.class public Lcom/samsung/android/settings/display/AspectRatioFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAppLabelCache:Ljava/util/HashMap;

.field public mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field public final mAppRows:Landroid/util/ArrayMap;

.field public mAspectRatioLayout:Landroid/view/View;

.field public mAsyncTask:Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

.field public mAtm:Landroid/app/IActivityTaskManager;

.field public mCompatChangeableApps:Lcom/samsung/android/core/CompatChangeableApps;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mEmptyViewText:Landroid/widget/TextView;

.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mHandler:Lcom/samsung/android/settings/display/AspectRatioFragment$6;

.field public mHighlightKey:Ljava/lang/String;

.field public mHighlightPosition:I

.field public mHighlightRequest:Z

.field public final mHighlightViewRunnable:Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;

.field public mIsSpinnerItemClicked:Z

.field public mIsSupportAspectRatio:Z

.field public mItemCount:I

.field public mLauncherApps:Landroid/content/pm/LauncherApps;

.field public mLoadingPanel:Landroid/view/View;

.field public final mPackageList:Ljava/util/List;

.field public final mPackageListTemp:Ljava/util/List;

.field public mResultList:Ljava/util/List;

.field public mSearchMenu:Landroid/view/MenuItem;

.field public mUserInfo:Landroid/content/pm/SemUserInfo;

.field public mViewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

.field public mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public static -$$Nest$mapplyHighlight(Lcom/samsung/android/settings/display/AspectRatioFragment;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightViewRunnable:Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightViewRunnable:Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mloadAppRow(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/LauncherActivityInfo;Z)Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mValues:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    iget v2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mUid:I

    iput-object p3, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    iget-boolean p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    const-string v2, "AspectRatioFragment"

    if-nez p3, :cond_2

    :try_start_0
    iget-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppLabelCache:Ljava/util/HashMap;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iput-object p3, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error loading application label for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    :goto_2
    iget-object p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AppLabel is still empty, set packageName = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    const/4 p2, 0x0

    if-nez p1, :cond_3

    iget-object p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    iget p3, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mUid:I

    const-string p4, "getMaxAspectRatioPolicy() : "

    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p0, p1, p3}, Landroid/view/IWindowManager;->getMaxAspectRatioPolicy(Ljava/lang/String;I)I

    move-result p2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for uid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-string p0, "getMaxAspectRatioPolicy() RemoteException"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iput p2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    goto/16 :goto_b

    :cond_3
    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAtm:Landroid/app/IActivityTaskManager;

    iget-object p3, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    if-eqz v1, :cond_4

    iget v1, v1, Landroid/content/pm/SemUserInfo;->id:I

    goto :goto_4

    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    :goto_4
    invoke-interface {p1, p3, v1}, Landroid/app/IActivityTaskManager;->getUserOrSystemMinAspectRatioOverrideCode(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mRatio:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    const-string p1, "Failed to get user or system min aspect ratio"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f0d0bd5

    invoke-direct {p1, p3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, p3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p3, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f142722

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f142724

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f142721

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f142720

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p3, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    const/4 p3, 0x4

    if-eqz p4, :cond_5

    move p4, p3

    goto :goto_6

    :cond_5
    move p4, p1

    :goto_6
    move v1, p2

    :goto_7
    if-ge v1, p4, :cond_7

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mValues:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    move p0, p2

    :goto_8
    iget-object p4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p0, p4, :cond_8

    iget-object p4, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p4, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_8
    iget p0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mRatio:I

    const/4 p4, 0x6

    if-ne p0, p4, :cond_9

    const/4 p1, 0x1

    goto :goto_9

    :cond_9
    const/4 p4, 0x3

    if-ne p0, p3, :cond_a

    move p1, p4

    goto :goto_9

    :cond_a
    if-ne p0, p4, :cond_b

    goto :goto_9

    :cond_b
    move p1, p2

    :goto_9
    iput p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    :goto_a
    iget-object p0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p2, p0, :cond_d

    iget-object p0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget p1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    if-ne p0, p1, :cond_c

    iget-object p0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_d
    :goto_b
    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mResultList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageListTemp:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppRows:Landroid/util/ArrayMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightPosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightRequest:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSpinnerItemClicked:Z

    iput v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mItemCount:I

    new-instance v0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightViewRunnable:Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/samsung/android/settings/display/AspectRatioFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/AspectRatioFragment$6;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHandler:Lcom/samsung/android/settings/display/AspectRatioFragment$6;

    return-void
.end method


# virtual methods
.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f141047

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

    const p0, 0xbb81

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_display"

    return-object p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/view/SemWindowManager;->isSupportAspectRatioMode(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    if-eq v1, p1, :cond_3

    if-eqz v0, :cond_3

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mPackageList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->collapseActionView()Z

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne p1, v0, :cond_2

    const-string p1, "AspectRatioFragment"

    const-string v0, "App list load canceled"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    new-instance p1, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "userInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SemUserInfo;

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    :cond_0
    const-string v0, ":settings:fragment_args_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightKey:Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mHighlightKey = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightKey:Ljava/lang/String;

    const-string v1, "AspectRatioFragment"

    invoke-static {p1, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo p1, "window"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mWindowManager:Landroid/view/IWindowManager;

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheManager;->getAppLabelCache(Landroidx/fragment/app/FragmentActivity;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppLabelCache:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/view/SemWindowManager;->isSupportAspectRatioMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAtm:Landroid/app/IActivityTaskManager;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0f0016

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0d29

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06067c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    const p2, 0x7f0a0d36

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    const p2, 0x7f1420c7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/samsung/android/settings/display/AspectRatioFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/AspectRatioFragment$1;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V

    iput-object p2, p1, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    new-instance p2, Lcom/samsung/android/settings/display/AspectRatioFragment$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/AspectRatioFragment$2;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V

    iput-object p2, p1, Landroidx/appcompat/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$3;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroidx/appcompat/widget/SearchView;)V

    invoke-interface {p2, v0}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p2, 0x7f0d0806

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAspectRatioLayout:Landroid/view/View;

    const p2, 0x7f0a0d3c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/apppickerview/widget/AppPickerView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 p3, 0x1

    iput-boolean p3, p1, Landroidx/apppickerview/widget/AppPickerView;->mIsCustomViewItemEnabled:Z

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060738

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAspectRatioLayout:Landroid/view/View;

    const v1, 0x7f0a014a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1, p2, v1, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/high16 v4, 0x2000000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollBarStyle(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v3, p3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillHorizontalPaddingEnabled(Z)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v3, 0x7f070c03

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    new-instance v3, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v3, v4, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v3}, Landroid/widget/LinearLayout;->semSetRoundedCorners(ILandroid/util/Pair;)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, v0, p3}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p3, 0x7f0a0cc6

    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p3, v1, p2, v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p3, 0xc

    invoke-virtual {p1, p3}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p3, 0x7f0a0068

    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAspectRatioLayout:Landroid/view/View;

    const p2, 0x1020004

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSupportAspectRatio:Z

    if-eqz p2, :cond_1

    const p2, 0x7f14103c

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f14103d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0a0102

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_3

    new-instance p2, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAspectRatioLayout:Landroid/view/View;

    const p2, 0x7f0a08df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLoadingPanel:Landroid/view/View;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLoadingPanel:Landroid/view/View;

    iget-object p3, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAspectRatioLayout:Landroid/view/View;

    return-object p0
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSpinnerItemClicked:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const-string v0, "AspectRatioFragment"

    const-string v1, "App list load canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mResultList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLoadingPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mLoadingPanel:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mResultList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mEmptyViewText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mIsSpinnerItemClicked:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_5
    new-instance v0, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAsyncTask:Lcom/samsung/android/settings/display/AspectRatioFragment$RequestHighlight;

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_6
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "userInfo"

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "userInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Landroid/content/pm/SemUserInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/SemUserInfo;

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    :cond_0
    return-void
.end method
