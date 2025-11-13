.class public final Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;",
        "Lcom/android/settings/SettingsPreferenceFragment;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

.field public mProgressBar:Landroid/view/ViewGroup;

.field public mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f1424e6

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/samsung/android/settings/usefulfeature/labs/LabsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, 0x10c5f

    return p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mUiModeManager:Landroid/app/UiModeManager;

    const p2, 0x7f0d08e6

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0d68

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/picker/widget/SeslAppPickerView;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillHorizontalPaddingEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslAppPickerView;->setAppListOrder(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_4
    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    if-eqz p3, :cond_5

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onCreateView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onCreateView$1;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;)V

    iput-object v0, p3, Landroidx/picker/widget/SeslAppPickerView;->mOnStateChangeListener:Landroidx/picker/widget/AppPickerState$OnStateChangeListener;

    :cond_5
    const p3, 0x7f0a08df

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eqz p3, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    if-eqz p0, :cond_6

    const v2, 0x7f060738

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p0, v0, p3}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    :cond_6
    const p0, 0x7f0a04df

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p3

    if-eqz p3, :cond_7

    if-eqz p0, :cond_8

    const p3, 0x7f1424e5

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_7
    if-eqz p0, :cond_8

    const p3, 0x7f1424e4

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_1
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result p3

    goto :goto_2

    :cond_9
    move p3, v1

    :goto_2
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    goto :goto_3

    :cond_a
    move v0, v1

    :goto_3
    if-eqz p0, :cond_b

    add-int/2addr p3, p2

    add-int/2addr v0, p2

    invoke-virtual {p0, p3, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_b
    return-object p1
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
