.class public final Lcom/android/systemui/media/PlayLastSongHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final addVisibilityListenerConsumer:Ljava/util/function/Consumer;

.field public final context:Landroid/content/Context;

.field public enabled:Z

.field public final handler:Landroid/os/Handler;

.field public lastMediaPlayerKey:Ljava/lang/String;

.field public lastPkgName:Ljava/lang/String;

.field public mediaController:Landroid/media/session/MediaController;

.field public mediaSessionToken:Landroid/media/session/MediaSession$Token;

.field public final onMediaKeyEventSessionChangeListener$delegate:Lkotlin/Lazy;

.field public final onPlayerVisibilityListener$delegate:Lkotlin/Lazy;

.field public final playLastSongText:Landroid/widget/TextView;

.field public playerVisible:Z

.field public final removeVisibilityListenerConsumer:Ljava/util/function/Consumer;

.field public final restartViewContainer:Landroid/widget/FrameLayout;

.field public final soundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/PlayLastSongHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/PlayLastSongHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/systemui/qs/bar/ColoredBGHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;",
            ">;",
            "Lcom/android/systemui/qs/bar/ColoredBGHelper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/PlayLastSongHelper;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/media/PlayLastSongHelper;->addVisibilityListenerConsumer:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/systemui/media/PlayLastSongHelper;->removeVisibilityListenerConsumer:Ljava/util/function/Consumer;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/systemui/media/PlayLastSongHelper;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/android/systemui/media/PlayLastSongHelper$onClickListener$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/PlayLastSongHelper$onClickListener$2;-><init>(Lcom/android/systemui/media/PlayLastSongHelper;)V

    invoke-static {p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/media/PlayLastSongHelper$onMediaKeyEventSessionChangeListener$2;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/PlayLastSongHelper$onMediaKeyEventSessionChangeListener$2;-><init>(Lcom/android/systemui/media/PlayLastSongHelper;)V

    invoke-static {p4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/media/PlayLastSongHelper;->onMediaKeyEventSessionChangeListener$delegate:Lkotlin/Lazy;

    new-instance p4, Lcom/android/systemui/media/PlayLastSongHelper$onPlayerVisibilityListener$2;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/PlayLastSongHelper$onPlayerVisibilityListener$2;-><init>(Lcom/android/systemui/media/PlayLastSongHelper;)V

    invoke-static {p4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/media/PlayLastSongHelper;->onPlayerVisibilityListener$delegate:Lkotlin/Lazy;

    new-instance p4, Landroid/widget/FrameLayout;

    invoke-direct {p4, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d039e

    invoke-virtual {v0, v1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout;

    const v0, 0x7f0810b3

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lcom/android/systemui/util/RecoilEffectUtil;->getRecoilLargeAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    const/4 p3, 0x0

    invoke-virtual {p5, p4, p3}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->addBarBackground(Landroid/view/View;Z)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p4, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const p1, 0x7f0a0ac3

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/media/PlayLastSongHelper;->playLastSongText:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/systemui/media/PlayLastSongHelper;->restartViewContainer:Landroid/widget/FrameLayout;

    new-instance p1, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {p1, p2}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/media/PlayLastSongHelper;->soundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    return-void
.end method


# virtual methods
.method public final enableWidget(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->enabled:Z

    const-string v1, "enabled: "

    const-string v2, ", enable : "

    const-string v3, "PlayLastSongHelper"

    invoke-static {v1, v2, v3, v0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-boolean v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->enabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/PlayLastSongHelper;->enabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/media/PlayLastSongHelper;->playLastSongText:Landroid/widget/TextView;

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    iget-object p0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f1310c1

    invoke-static {v0, p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->string(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/PlayLastSongHelper;->playLastSongText:Landroid/widget/TextView;

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    iget-object p0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f1310c2

    invoke-static {v0, p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->string(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final updateRestartViewVisibility()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->playerVisible:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "PlayLastSongHelper"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/PlayLastSongHelper;->enableWidget(Z)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->mediaSessionToken:Landroid/media/session/MediaSession$Token;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->lastPkgName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "mediaSessionToken and lastPkgName is null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/PlayLastSongHelper;->enableWidget(Z)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->lastPkgName:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v4, "is "

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/media/PlayLastSongHelper;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v0, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Enabled: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "Thrown by getApplicationInfoAsUser, "

    const-string v5, " is not existed"

    invoke-static {v4, v0, v5, v3}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v5, v2

    :goto_0
    xor-int/lit8 v0, v5, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->lastPkgName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not available"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/PlayLastSongHelper;->enableWidget(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->lastMediaPlayerKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/systemui/media/PlayLastSongHelper;->lastPkgName:Ljava/lang/String;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->lastMediaPlayerKey:Ljava/lang/String;

    const-string v1, "lastMediaPlayerKey "

    invoke-static {v1, v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->lastPkgName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "lastPkgName "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/PlayLastSongHelper;->enableWidget(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/media/PlayLastSongHelper;->enableWidget(Z)V

    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->playerVisible:Z

    const-string/jumbo v1, "updateRestartViewVisibility "

    invoke-static {v1, v3, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->restartViewContainer:Landroid/widget/FrameLayout;

    iget-boolean p0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->playerVisible:Z

    if-eqz p0, :cond_5

    const/16 v2, 0x8

    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
