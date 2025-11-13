.class public Lcom/samsung/android/settings/display/CameraCutoutFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CameraCutoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;,
        Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;,
        Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;,
        Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;
    }
.end annotation


# instance fields
.field private mAppLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field private mContext:Landroid/content/Context;

.field private mEmptyViewText:Landroid/widget/TextView;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mItemCount:I

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mLoadingPanel:Landroid/view/View;

.field private final mPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewImageLayout:Landroid/view/View;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchMenu:Landroid/view/MenuItem;

.field private mUserInfo:Landroid/content/pm/SemUserInfo;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mEmptyViewText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemCount(Lcom/samsung/android/settings/display/CameraCutoutFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mItemCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLauncherApps(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/content/pm/LauncherApps;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadingPanel(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLoadingPanel:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPackageList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPackageListTemp:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewImageLayout(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPreviewImageLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRows(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mRows:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserInfo(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/content/pm/SemUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmItemCount(Lcom/samsung/android/settings/display/CameraCutoutFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mItemCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewImageLayout(Lcom/samsung/android/settings/display/CameraCutoutFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPreviewImageLayout:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadAppRow(Lcom/samsung/android/settings/display/CameraCutoutFragment;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/LauncherActivityInfo;)Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/LauncherActivityInfo;)Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetCutoutPolicy(Lcom/samsung/android/settings/display/CameraCutoutFragment;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->setCutoutPolicy(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/display/CameraCutoutFragment;Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPackageList:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPackageListTemp:Ljava/util/List;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mRows:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mItemCount:I

    return-void
.end method

.method private getCutoutPolicy(Ljava/lang/String;I)I
    .locals 3

    const-string p0, "CameraCutoutFragment"

    const/4 v0, 0x0

    .line 518
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Landroid/app/IActivityTaskManager;->getCutoutPolicy(ILjava/lang/String;)I

    move-result v0

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraCutoutPackage() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for user: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "getCameraCutoutPackage() RemoteException"

    .line 521
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/LauncherActivityInfo;)Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;
    .locals 3

    const-string v0, "CameraCutoutFragment"

    .line 455
    new-instance v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    invoke-direct {v1}, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;-><init>()V

    .line 456
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mPackage:Ljava/lang/String;

    .line 457
    iput-object p3, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 460
    :try_start_0
    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppLabelCache:Ljava/util/HashMap;

    if-nez p3, :cond_0

    const-string p3, "mAppLabelCache EMPTY"

    .line 461
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppLabelCache:Ljava/util/HashMap;

    if-nez p3, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    .line 464
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 465
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "label empty => row.mLabel =  "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    goto :goto_1

    .line 468
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "label not empty => row.mLabel =  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iput-object p3, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 472
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error loading application label for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    iget-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mPackage:Ljava/lang/String;

    iput-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    .line 476
    :goto_1
    iget-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AppLable is still empty, set packageName = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mPackage:Ljava/lang/String;

    iput-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    .line 481
    :cond_3
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-direct {p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 484
    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    iput-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/16 p2, 0x8

    .line 485
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 486
    iget-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    .line 487
    iget-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p3, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 489
    iget-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$string;->full_screen_show_camera_cutout:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$string;->full_screen_apps_hide_camera_title:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$string;->full_screen_apps_item_drop_down_auto:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mPackage:Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    invoke-virtual {p3}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->getCutoutPolicy(Ljava/lang/String;I)I

    move-result p0

    iput p0, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mType:I

    .line 493
    iget-object p0, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object p1, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 495
    iget p0, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mType:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_4

    .line 496
    iget-object p0, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x2

    if-ne p0, p2, :cond_5

    .line 498
    iget-object p0, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 500
    :cond_5
    iget-object p0, v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_2
    return-object v1
.end method

.method public static newInstance(Landroid/content/pm/SemUserInfo;)Lcom/samsung/android/settings/display/CameraCutoutFragment;
    .locals 3

    .line 121
    new-instance v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;-><init>()V

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "userInfo"

    .line 123
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 124
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setCutoutPolicy(Ljava/lang/String;II)V
    .locals 1

    .line 507
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCameraCutoutPackage : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for user: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraCutoutFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p2, p1, p3}, Landroid/app/IActivityTaskManager;->setCutoutPolicy(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "setCameraCutoutPackage() RemoteException"

    .line 511
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 1

    .line 352
    new-instance v0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/CameraCutoutFragment$2;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;)V

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 113
    sget p0, Lcom/android/settings/R$string;->full_screen_apps_camera_cutout:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0xbb82

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 174
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 176
    new-instance p1, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader-IA;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 203
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    .line 206
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string v0, "userInfo"

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/SemUserInfo;

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    .line 138
    invoke-static {p1}, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheManager;->getAppLabelCache(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppLabelCache:Ljava/util/HashMap;

    .line 139
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->full_screen_apps_camera_cutout:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 141
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mHandler:Landroid/os/Handler;

    .line 142
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 214
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 215
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 216
    sget v0, Lcom/android/settings/R$menu;->sec_full_screen_apps:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 217
    sget p2, Lcom/android/settings/R$id;->search_apps:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mSearchMenu:Landroid/view/MenuItem;

    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->sec_search_magnifier_icon_tint_color:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 220
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 222
    sget p2, Lcom/android/settings/R$id;->search_plate:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    .line 224
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    .line 225
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 224
    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 227
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->sec_app_search_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 228
    new-instance p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 147
    sget p2, Lcom/android/settings/R$layout;->sec_camera_cutout_apps:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 149
    sget p2, Lcom/android/settings/R$id;->sec_hide_camera_cutout_app_picker_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/apppickerview/widget/AppPickerView;

    iput-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 p3, 0x0

    .line 150
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 151
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 152
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 153
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 154
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/apppickerview/widget/AppPickerView;->setCustomViewItemEnabled(Z)V

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "userInfo"

    .line 158
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/pm/SemUserInfo;

    iput-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    :cond_0
    const p2, 0x1020004

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mEmptyViewText:Landroid/widget/TextView;

    .line 163
    sget p2, Lcom/android/settings/R$id;->loading_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLoadingPanel:Landroid/view/View;

    const/4 p3, 0x3

    .line 164
    invoke-virtual {p2, p3}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 165
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLoadingPanel:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 165
    invoke-virtual {p2, p3, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 195
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLoadingPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLoadingPanel:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 270
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 185
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 188
    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 189
    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mEmptyViewText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 583
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 584
    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    const-string v0, "userInfo"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
