.class public abstract Lcom/android/settingslib/spa/framework/BrowseActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v0, 0x7f150699

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroidx/activity/EdgeToEdge;->DefaultLightScrim:I

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroidx/activity/SystemBarStyle$Companion;->auto$default(II)Landroidx/activity/SystemBarStyle;

    move-result-object v0

    sget v1, Landroidx/activity/EdgeToEdge;->DefaultLightScrim:I

    sget v2, Landroidx/activity/EdgeToEdge;->DefaultDarkScrim:I

    invoke-static {v1, v2}, Landroidx/activity/SystemBarStyle$Companion;->auto$default(II)Landroidx/activity/SystemBarStyle;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const-string v3, "window.decorView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "view.resources"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/activity/SystemBarStyle;->detectDarkMode:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/activity/SystemBarStyle;->detectDarkMode:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "window"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {v3, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v3, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v3, p1}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    new-instance v4, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v4, v3, v2}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    xor-int/2addr v0, p1

    invoke-virtual {v4, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    sget-object v0, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->spaEnvironment:Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/settings/spa/SettingsSpaEnvironment;

    sget-object v1, Lcom/android/settingslib/spa/framework/common/LogCategory;->FRAMEWORK:Lcom/android/settingslib/spa/framework/common/LogCategory;

    iget-object v0, v0, Lcom/android/settings/spa/SettingsSpaEnvironment;->logger:Lcom/android/settingslib/spa/framework/common/SpaLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/settingslib/spa/framework/BrowseActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/spa/framework/BrowseActivity$onCreate$1;-><init>(Lcom/android/settingslib/spa/framework/BrowseActivity;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x2589b366

    invoke-direct {v1, v2, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, v1}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Spa environment is not set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
