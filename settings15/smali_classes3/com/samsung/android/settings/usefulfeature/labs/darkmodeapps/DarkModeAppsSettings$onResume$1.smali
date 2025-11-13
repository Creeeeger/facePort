.class final Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;->label:I

    if-nez v0, :cond_9

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mUiModeManager:Landroid/app/UiModeManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getNightPriorityAllowedPackagesFromScpm()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Landroid/app/UiModeManager;->getPackageNightMode(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move v4, v0

    :goto_2
    new-instance v5, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    sget-object v6, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v6, ""

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7, v3, v6}, Landroidx/picker/model/AppInfo$Companion;->obtain(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v3

    invoke-direct {v5, v3}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    invoke-virtual {v5, v4}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->setSelected(Z)Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mProgressBar:Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings$onResume$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/darkmodeapps/DarkModeAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
