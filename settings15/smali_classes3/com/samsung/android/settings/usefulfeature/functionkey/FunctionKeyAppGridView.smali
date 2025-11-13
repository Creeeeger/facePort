.class public Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

.field public mAsyncTask:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;

.field public mBlockList:Ljava/util/ArrayList;

.field public mContext:Landroid/content/Context;

.field public mEmptyViewText:Landroid/widget/TextView;

.field public mLoading:Landroid/view/ViewGroup;

.field public mPressType:I

.field public mSearchMenu:Landroid/view/MenuItem;

.field public mSearchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mBlockList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getListViewWithSpacing()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1dca

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAsyncTask:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pressed_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mPressType:I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "short"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mPressType:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mPressType:I

    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AssistantHomeLauncherActivity"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.SIDE_BUTTON_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v0, "com.sec.android.app.camera.Camera"

    const-string v1, "com.google.android.apps.googleassistant"

    const-string/jumbo v2, "yourapp24.android.tools.alice_lite"

    const-string v3, "com.amazon.dee.app"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.microsoft.cortana"

    const-string v1, "com.testa.databot"

    const-string v2, "com.nuance.balerion"

    const-string v3, "com.hound.android.app"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.artificialsolutions.teneo.va.prod"

    const-string v1, "com.magnifis.parking"

    const-string v2, "com.multiverse.jarvis"

    const-string v3, "com.multiverse.jarvis.go"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.pa.gs.ai"

    const-string v1, "ai.saiy.android"

    const-string v2, "bolo.codeplay.com.bolo"

    const-string v3, "com.bulletproof.voicerec.avxfree"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.studios.nebulas.noah"

    const-string v1, "com.multiverse.fridayai"

    const-string v2, "jp.classmethod.android.Friendly"

    const-string v3, "com.google.android.apps.accessibility.voiceaccess"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.stupendous.voiceassistant"

    const-string v1, "com.voiceassistant"

    const-string v2, "com.avaya.endpoint.avayavoiceassistant"

    const-string v3, "com.thanksmister.iot.voicepanel"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "io.justoneapp.voice"

    const-string v1, "com.voicecommandforgoogleassistant.editingmultiapps"

    const-string v2, "com.combo.voiceassistant"

    const-string v3, "com.voice.assistant.commands"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "net.wintersun.launchalexa"

    const-string v1, "com.gigaaa.app.android"

    const-string v2, "com.siri.siriapple.siriassistant"

    const-string v3, "com.iflytek.cmcc"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.xiaomi.smarthome"

    const-string v1, "com.iflytek.speechcloud"

    const-string v2, "com.chongdong.cloud"

    const-string v3, "com.alibaba.ailabs.tg"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.tianming"

    const-string v1, "com.wowenwen.yy"

    const-string v2, "com.linglong.android"

    const-string v3, "com.iflytek.android.viafly.news"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.singulariti.niapp"

    const-string v1, "com.zaijia.xiaodu"

    const-string v2, "com.tencent.mia.speaker"

    const-string v3, "com.xiaomi.xiaoailite"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.orion.xiaoya.speakerclient"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.naver.nozzle"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isPayWithSamsungPayVisible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.samsung.android.spay"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.spaymini"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mBlockList:Ljava/util/ArrayList;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f0018

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f0a0068

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$2;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;)V

    invoke-interface {p2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    const p2, 0x7f0a0d29

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mSearchView:Landroidx/appcompat/widget/SearchView;

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const p2, 0x7f0a0d36

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v0, p2, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const p2, 0x7f1420c7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mSearchView:Landroidx/appcompat/widget/SearchView;

    new-instance p2, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$3;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;)V

    iput-object p2, p1, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0d0800

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0131

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/picker/widget/SeslAppPickerGridView;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/picker/widget/SeslAppPickerView;->setAppListOrder(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f0d07f1

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/picker/widget/SeslAppPickerView;->addFooter(Landroid/view/View;)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f0d07ee

    invoke-virtual {p3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Landroidx/picker/widget/SeslAppPickerView;->addHeader(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    new-instance p3, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroidx/picker/widget/SeslAppPickerView;->setOnItemClickEventListener(Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    const p2, 0x7f0a08df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060738

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    const p2, 0x1020004

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mContext:Landroid/content/Context;

    const v0, 0x7f15094f

    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mEmptyViewText:Landroid/widget/TextView;

    const p3, 0x7f1420c6

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$1;-><init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAsyncTask:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;

    if-eqz v0, :cond_0

    const-string v0, "FunctionKeyAppGridView"

    const-string v1, "App list load canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAsyncTask:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAsyncTask:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mEmptyViewText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
