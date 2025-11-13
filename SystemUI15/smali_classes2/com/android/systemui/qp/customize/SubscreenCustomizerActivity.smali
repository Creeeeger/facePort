.class public Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBackButton:Landroid/widget/ImageView;

.field public mContext:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;

.field public final mDisplayListener:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;

.field public mHost:Lcom/android/systemui/qs/QSTileHost;

.field public mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;-><init>(Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;)V

    iput-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mDisplayListener:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SubscreenCustomizerActivity"

    const-string v0, "SubscreenCustomizerActivity oncreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0d047b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    iput-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mContext:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mDisplayListener:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenQsPanelController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_1
    const p1, 0x7f0a0c51

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mBackButton:Landroid/widget/ImageView;

    const p1, 0x7f0a0c62

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/qp/customize/SubscreenCustomizerController;-><init>(Lcom/android/systemui/qp/customize/SubscreenCustomizer;Lcom/android/systemui/qs/QSTileHost;)V

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mBackButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mContext:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;

    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mBackButton:Landroid/widget/ImageView;

    invoke-static {p1, p0}, Lcom/android/systemui/qp/util/SubscreenUtil;->applyRotation(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mDisplayListener:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onStart()V
    .locals 2

    const-string v0, "SubscreenCustomizerActivity"

    const-string v1, "SubscreenCustomizerActivity onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 2

    const-string v0, "SubscreenCustomizerActivity"

    const-string v1, "onStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
