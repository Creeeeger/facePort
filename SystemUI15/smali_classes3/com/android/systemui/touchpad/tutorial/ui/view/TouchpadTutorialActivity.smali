.class public final Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final viewModelFactory:Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel$Factory;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity;->viewModelFactory:Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel$Factory;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroidx/activity/EdgeToEdge;->DefaultLightScrim:I

    sget-object p1, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    invoke-static {p1, v1, v1}, Landroidx/activity/SystemBarStyle$Companion;->auto$default(Landroidx/activity/SystemBarStyle$Companion;II)Landroidx/activity/SystemBarStyle;

    move-result-object v2

    sget v3, Landroidx/activity/EdgeToEdge;->DefaultLightScrim:I

    sget v4, Landroidx/activity/EdgeToEdge;->DefaultDarkScrim:I

    invoke-static {p1, v3, v4}, Landroidx/activity/SystemBarStyle$Companion;->auto$default(Landroidx/activity/SystemBarStyle$Companion;II)Landroidx/activity/SystemBarStyle;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, v2, Landroidx/activity/SystemBarStyle;->detectDarkMode:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p1, Landroidx/activity/SystemBarStyle;->detectDarkMode:Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    new-instance v6, Landroidx/activity/EdgeToEdgeApi29;

    invoke-direct {v6}, Landroidx/activity/EdgeToEdgeApi29;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    iget v7, v2, Landroidx/activity/SystemBarStyle;->nightMode:I

    if-nez v7, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    iget v2, v2, Landroidx/activity/SystemBarStyle;->darkScrim:I

    goto :goto_0

    :cond_1
    iget v2, v2, Landroidx/activity/SystemBarStyle;->lightScrim:I

    :goto_0
    invoke-virtual {v6, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    iget v2, p1, Landroidx/activity/SystemBarStyle;->nightMode:I

    if-nez v2, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    iget p1, p1, Landroidx/activity/SystemBarStyle;->darkScrim:I

    goto :goto_1

    :cond_3
    iget p1, p1, Landroidx/activity/SystemBarStyle;->lightScrim:I

    :goto_1
    invoke-virtual {v6, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v6, v1}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    if-nez v2, :cond_4

    move v1, v0

    :cond_4
    invoke-virtual {v6, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {p1, v6, v3}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    xor-int/lit8 v1, v4, 0x1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    xor-int/lit8 v1, v5, 0x1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    new-instance p1, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity$onCreate$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity$onCreate$1;-><init>(Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x181811e8

    invoke-direct {v1, v2, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, v1}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void
.end method
