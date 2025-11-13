.class public Lcom/samsung/android/settings/usefulfeature/LabsSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LabsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mCreatePreferenceNewTask:Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;

.field private mDualDisplayState:I

.field private mIsFirstLoading:Z

.field private mIsRunAsyncTask:Z

.field private mListContainer:Landroid/view/ViewGroup;

.field private mPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageListTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroidx/apppickerview/widget/AppPickerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFirstLoading(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mIsFirstLoading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageList(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mPackageList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mPackageListTemp:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRows(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mRows:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAppPickerView(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFirstLoading(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mIsFirstLoading:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRunAsyncTask(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mIsRunAsyncTask:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchLabSetting(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->launchLabSetting(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresolveIntent(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 292
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mPackageList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mPackageListTemp:Ljava/util/List;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mRows:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mIsFirstLoading:Z

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mCreatePreferenceNewTask:Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mIsRunAsyncTask:Z

    return-void
.end method

.method private launchLabSetting(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 281
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 273
    new-instance p0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private setPreview()V
    .locals 3

    .line 90
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 91
    sget v1, Lcom/android/settings/R$id;->preview_image_container:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 93
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method private setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 1

    .line 251
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)V

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LabsSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x109a0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 71
    sget p0, Lcom/android/settings/R$xml;->sec_useful_feature_labs:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportLabsMenusProvidedByEachApp()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mIsRunAsyncTask:Z

    if-nez p1, :cond_0

    .line 158
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;-><init>(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mCreatePreferenceNewTask:Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;

    .line 159
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 104
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/settings/R$layout;->sec_labs_settings_layout:I

    invoke-direct {v0, v1, v3}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    .line 105
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 107
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->setPreview()V

    .line 109
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 118
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 129
    :goto_0
    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mDualDisplayState:I

    if-eq p1, v2, :cond_2

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConfigurationChanged mDualDisplayState : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mDualDisplayState:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " // dualDisplayState : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LabsSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 132
    iput v2, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mDualDisplayState:I

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mContext:Landroid/content/Context;

    .line 83
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mConfiguration:Landroid/content/res/Configuration;

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 85
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mDualDisplayState:I

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->setPreview()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x102003f

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mListContainer:Landroid/view/ViewGroup;

    .line 143
    new-instance p2, Landroid/widget/ProgressBar;

    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 p3, 0x1

    .line 144
    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 145
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    sget p3, Lcom/android/settings/R$style;->LoadingTheme:I

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setScrollBarStyle(I)V

    .line 146
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-direct {p2, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    .line 147
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 148
    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mListContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 180
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 182
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportLabsMenusProvidedByEachApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mCreatePreferenceNewTask:Lcom/samsung/android/settings/usefulfeature/LabsSettings$CreatePreferenceNewTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 184
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mIsRunAsyncTask:Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 172
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->mDualDisplayState:I

    return-void
.end method
