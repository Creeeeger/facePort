.class public final Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public actionScreenReceiver:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$1;

.field public final audioManager:Landroid/media/AudioManager;

.field public final factory:Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelFactory;

.field public final onUnhandledKeyEventListener$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelFactory;Landroid/media/AudioManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;->factory:Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelFactory;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;->audioManager:Landroid/media/AudioManager;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onUnhandledKeyEventListener$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onUnhandledKeyEventListener$2;-><init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;->onUnhandledKeyEventListener$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;->factory:Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelFactory;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;->onUnhandledKeyEventListener$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$OnUnhandledKeyEventListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "MediaOutputActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "extra_is_dex"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-eq v3, v2, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "extra_is_cover"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_3

    :cond_3
    move v3, p1

    :goto_3
    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v3, p1

    goto :goto_5

    :cond_5
    :goto_4
    move v3, v2

    :goto_5
    if-eqz v0, :cond_6

    sget-object p1, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$LaunchMediaOutput;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$LaunchMediaOutput;

    sget-object v4, Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$MediaOutput;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$MediaOutput;

    new-instance v5, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$From;

    const-string v6, "DeX"

    invoke-direct {v5, v6}, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$From;-><init>(Ljava/lang/String;)V

    filled-new-array {v5}, [Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4, v5}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;Lcom/android/systemui/media/mediaoutput/analytics/SaScreen;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V

    move p1, v2

    goto :goto_9

    :cond_6
    if-eqz v3, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, 0x106000d

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v4, Landroidx/appcompat/app/AppCompatDelegate;->sDefaultNightMode:I

    if-eq v4, v1, :cond_9

    sput v1, Landroidx/appcompat/app/AppCompatDelegate;->sDefaultNightMode:I

    sget-object v1, Landroidx/appcompat/app/AppCompatDelegate;->sActivityDelegatesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v4, Landroidx/appcompat/app/AppCompatDelegate;->sActivityDelegates:Landroidx/collection/ArraySet;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/collection/ArraySet$ElementIterator;

    invoke-direct {v5, v4}, Landroidx/collection/ArraySet$ElementIterator;-><init>(Landroidx/collection/ArraySet;)V

    :cond_7
    :goto_6
    invoke-virtual {v5}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v5}, Landroidx/collection/IndexBasedArrayIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDelegate;->applyDayNight()Z

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_8
    monitor-exit v1

    goto :goto_8

    :goto_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_9
    :goto_8
    new-instance v1, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$1;-><init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;->actionScreenReceiver:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$1;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v4, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$LaunchMediaOutput;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$LaunchMediaOutput;

    sget-object v5, Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$MediaOutput;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$MediaOutput;

    new-instance v6, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$From;

    const-string v7, "Cover"

    invoke-direct {v6, v7}, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$From;-><init>(Ljava/lang/String;)V

    filled-new-array {v6}, [Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;Lcom/android/systemui/media/mediaoutput/analytics/SaScreen;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V

    :goto_9
    if-eqz v3, :cond_a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    new-instance v1, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3;

    invoke-direct {v1, p0, p1, v0, v3}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3;-><init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;ZZZ)V

    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, -0x58a4a9d3

    invoke-direct {p1, v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, p1}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "MediaOutputActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;->actionScreenReceiver:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$1;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;->actionScreenReceiver:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$1;

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;->onUnhandledKeyEventListener$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$OnUnhandledKeyEventListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    return-void
.end method
