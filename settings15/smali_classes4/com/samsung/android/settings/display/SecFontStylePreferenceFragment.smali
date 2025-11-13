.class public Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCallbackFromDownloadFont:Z

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mCurrentFontIndex:I

.field public mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

.field public mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

.field public mFontStyleScrollView:Landroidx/core/widget/NestedScrollView;

.field public mIsRunLoadListTask:Z

.field public mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

.field public mPreviousFontIndex:I

.field public mResources:Landroid/content/res/Resources;

.field public mUninstallFontsPackageName:Ljava/lang/String;

.field public mWarningDialog:Landroid/app/AlertDialog;

.field public final mWarningDialogClickListener:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFontIndex:I

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCurrentFontIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCallbackFromDownloadFont:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mUninstallFontsPackageName:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mWarningDialogClickListener:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d16

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f142437

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const p3, 0x7f060738

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p3}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p3

    const v0, 0x7f0d08b9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0693

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    const v0, 0x7f0a0694

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleScrollView:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f0a0692

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1, p2}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070c54

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->semSetRoundedCornerOffset(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->setFontStyleList()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const-string v0, "SecFontStylePreferenceFragment"

    const-string v3, "called onCreate()"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x7f0a0cc6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0, p3, v2, p3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {p0, v1, p2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_2
    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sput-object v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mUninstallFontsPackageName:Ljava/lang/String;

    :cond_3
    const-string p0, "SecFontStylePreferenceFragment"

    const-string v0, "called onDestroy()"

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onItemClick(I)V
    .locals 13

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onItemClick : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecFontStylePreferenceFragment"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v1, :cond_0

    const-string/jumbo p0, "onItemClick : mFontListAdapter is null, so return."

    invoke-static {v2, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCurrentFontIndex:I

    iput v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mPreviousFontIndex:I

    iput p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCurrentFontIndex:I

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getItemViewType(I)I

    move-result v1

    const/16 v3, 0x1d16

    const/16 v4, 0x106d

    const/4 v5, 0x0

    if-ne v1, v0, :cond_2

    const-string/jumbo p1, "onItemClick : viewType is FooterView, which means Download Font Menu. So return."

    invoke-static {v2, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    sget-object v1, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1425a4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const p1, 0x14000020

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontDownloadMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    :cond_1
    iput-boolean v5, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCallbackFromDownloadFont:Z

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-wide/16 p0, 0x3

    invoke-static {v3, v4, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    :cond_3
    int-to-long v6, p1

    invoke-static {v3, v4, v6, v7}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setItemChecked(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCurrentFontIndex:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isInvalidFont(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->showWarningDialog(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    iget v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCurrentFontIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/fontutil/FontWriter;

    invoke-direct {v3}, Lcom/samsung/android/fontutil/FontWriter;-><init>()V

    const-string v4, "default"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string p1, " "

    invoke-virtual {v3, p1}, Lcom/samsung/android/fontutil/FontWriter;->deleteFontDirectory(Ljava/lang/String;)V

    const-string p1, "default#default"

    invoke-virtual {v3, p1}, Lcom/samsung/android/fontutil/FontWriter;->writeLoc(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/fontutil/TypefaceFinder;

    invoke-virtual {v4, v1}, Lcom/samsung/android/fontutil/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/samsung/android/fontutil/SemTypeface;

    move-result-object v4

    const-string v6, ".xml"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_7
    move-object v6, v1

    :goto_0
    invoke-virtual {v3, v6}, Lcom/samsung/android/fontutil/FontWriter;->createFontDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    if-eqz v4, :cond_b

    move v8, v5

    move v9, v8

    :goto_1
    iget-object v10, v4, Lcom/samsung/android/fontutil/SemTypeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_a

    iget-object v9, v4, Lcom/samsung/android/fontutil/SemTypeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/fontutil/TypefaceFile;

    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v10, v10, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    iget v11, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCurrentFontIndex:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setOkButtonPressed : Application name, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v10, v10, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v11, 0x80

    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v11, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v11, v10, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v11, v11, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "tpf.getFileName(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/samsung/android/fontutil/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/samsung/android/fontutil/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v9}, Lcom/samsung/android/fontutil/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v7, v10, v11}, Lcom/samsung/android/fontutil/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v11

    goto :goto_4

    :catch_0
    invoke-virtual {v9}, Lcom/samsung/android/fontutil/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/samsung/android/fontutil/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "content://"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :try_start_1
    iget-object v11, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v3, v7, v10, v9}, Lcom/samsung/android/fontutil/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_9

    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v9

    goto :goto_3

    :catchall_0
    move-exception v9

    if-eqz v10, :cond_8

    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v10

    :try_start_5
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "cannot copy font file : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v5

    :cond_9
    :goto_4
    add-int/2addr v8, v0

    goto/16 :goto_1

    :cond_a
    move v5, v9

    :cond_b
    if-eqz v5, :cond_c

    const-string v0, "**setOkButtonPressed - enospc error **"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->showWarningDialog(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v3, v6}, Lcom/samsung/android/fontutil/FontWriter;->deleteFontDirectory(Ljava/lang/String;)V

    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    iget v4, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCurrentFontIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/samsung/android/fontutil/FontWriter;->writeLoc(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "flip_font_style"

    iget p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCurrentFontIndex:I

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_6
    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCallbackFromDownloadFont:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mIsRunLoadListTask:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mLoadListTask:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$LoadListTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "SecFontStylePreferenceFragment"

    const-string v2, "called onResume()"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCallbackFromDownloadFont:Z

    :cond_2
    return-void
.end method

.method public final setFontStyleList()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_0

    iput-object p0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mOnItemClickListener:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "SecFontStylePreferenceFragment"

    const-string/jumbo v1, "setCurrentFontStyle : mFontListAdapter is null, so return."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    sub-int/2addr v2, v1

    const-string v3, "default"

    if-lez v2, :cond_2

    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCurrentFontIndex:I

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setItemChecked(I)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showWarningDialog(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mUninstallFontsPackageName:Ljava/lang/String;

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1425a3

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mWarningDialogClickListener:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda0;

    const v1, 0x7f140c1d

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mWarningDialogClickListener:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda0;

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
