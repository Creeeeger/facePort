.class public Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FlexModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$RequestHighlight;,
        Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$CustomViewHolder;,
        Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppPickerCustomListAdapter;,
        Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;,
        Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;
    }
.end annotation


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppPickerCustomListAdapter;

.field private mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field private mAppRows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyViewText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightKey:Ljava/lang/String;

.field private mHighlightPosition:I

.field private mHighlightRequest:Z

.field private mProgressBar:Landroid/view/ViewGroup;

.field private mSearchMenu:Landroid/view/MenuItem;


# direct methods
.method public static synthetic $r8$lambda$AdSHA6qdb4NE2H2Zlu_IJSR36fk(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->lambda$applyHighlight$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gGyqxqh3yW10m5kjUO4vtW4_0J8(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->lambda$applyHighlight$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppPickerCustomListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mAdapter:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppPickerCustomListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mAppRows:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mEmptyViewText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHighlightKey(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mHighlightKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHighlightRequest(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mHighlightRequest:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mProgressBar:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHighlightKey(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mHighlightKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHighlightPosition(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mHighlightPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHighlightRequest(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mHighlightRequest:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyHighlight(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->applyHighlight(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 513
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mAppRows:Ljava/util/Map;

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mHighlightPosition:I

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mHighlightRequest:Z

    .line 447
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private applyHighlight(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    monitor-enter v0

    .line 494
    :try_start_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 495
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Landroid/view/View;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 507
    new-instance p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0x2c6

    invoke-virtual {p1, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 510
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private goAboutMenu()V
    .locals 3

    .line 245
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.controlpanel"

    const-string v2, "com.samsung.controlpanel.aboutpage.AboutPageActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 249
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$applyHighlight$0(Landroid/view/View;)V
    .locals 4

    .line 496
    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mHighlightPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 499
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    const/4 v0, 0x1

    .line 502
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 503
    iput v1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mHighlightPosition:I

    :cond_1
    return-void
.end method

.method private static synthetic lambda$applyHighlight$1(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method private setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 1

    .line 356
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)V

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 125
    sget p0, Lcom/android/settings/R$string;->sec_flex_mode_panel_title:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 130
    const-class p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x10b94

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_advanced_features"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 172
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 173
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 175
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;-><init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader-IA;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ":settings:fragment_args_key"

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mHighlightKey:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 188
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 189
    sget v0, Lcom/android/settings/R$menu;->sec_labs_applist_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 190
    sget p2, Lcom/android/settings/R$id;->search_apps:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mSearchMenu:Landroid/view/MenuItem;

    .line 191
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_search_magnifier_icon_tint_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 192
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    .line 193
    sget v0, Lcom/android/settings/R$id;->search_plate:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 197
    :cond_0
    sget v0, Lcom/android/settings/R$string;->sec_app_search_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 220
    sget p2, Lcom/android/settings/R$string;->accessibility_introduction_title:I

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    sget v3, Lcom/android/settings/R$string;->sec_flex_mode_panel_title:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 221
    invoke-interface {p1, v1, v0, v1, p0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 150
    sget p2, Lcom/android/settings/R$layout;->sec_labs_app_picker_view_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 152
    sget p2, Lcom/android/settings/R$id;->sec_labs_app_picker_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/apppickerview/widget/AppPickerView;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 p3, 0x1

    .line 153
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 154
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 155
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 156
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p2, p3}, Landroidx/apppickerview/widget/AppPickerView;->setCustomViewItemEnabled(Z)V

    .line 159
    new-instance p2, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppPickerCustomListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p3}, Landroidx/apppickerview/widget/AppPickerView;->getAppPickerIconLoader()Landroidx/apppickerview/widget/AppPickerIconLoader;

    move-result-object v8

    const/4 v6, 0x5

    const/4 v7, 0x2

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppPickerCustomListAdapter;-><init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;)V

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mAdapter:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppPickerCustomListAdapter;

    const p2, 0x1020004

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mEmptyViewText:Landroid/widget/TextView;

    .line 163
    sget p2, Lcom/android/settings/R$id;->loading_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mProgressBar:Landroid/view/ViewGroup;

    const/4 p3, 0x3

    .line 164
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 165
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mProgressBar:Landroid/view/ViewGroup;

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 165
    invoke-virtual {p2, p3, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 234
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->goAboutMenu()V

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mProgressBar:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 226
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->mSearchMenu:Landroid/view/MenuItem;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 227
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 229
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method
