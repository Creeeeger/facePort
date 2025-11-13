.class public Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MouseButtonAppGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;,
        Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;
    }
.end annotation


# instance fields
.field private mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

.field private mAppRows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLoading:Landroid/view/ViewGroup;

.field private mMouseButtonType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppRows(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppRows:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoading(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mLoading:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMouseButtonType(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mMouseButtonType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppRows:Ljava/util/Map;

    return-void
.end method

.method private setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 1

    .line 138
    new-instance v0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$1;-><init>(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)V

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    new-instance p1, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;-><init>(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask-IA;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mouseButtonType"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mMouseButtonType:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 53
    sget p3, Lcom/android/settings/R$layout;->sec_app_shortcut_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    new-instance p2, Lcom/samsung/android/settings/usefulfeature/AppGridView;

    iget-object p3, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/samsung/android/settings/usefulfeature/AppGridView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    .line 56
    sget p2, Lcom/android/settings/R$id;->appshortcutview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/usefulfeature/AppGridView;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    const/4 p3, 0x1

    .line 57
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 58
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 59
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 60
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mAppPickerGridView:Lcom/samsung/android/settings/usefulfeature/AppGridView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 62
    sget p2, Lcom/android/settings/R$id;->loading_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/4 p3, 0x3

    .line 63
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 64
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mLoading:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 64
    invoke-virtual {p2, p3, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 77
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mLoading:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method protected savePressActionApp(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->mMouseButtonType:I

    iget-object v2, p1, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;->mActivityName:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->saveMouseButtonOpenApp(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
