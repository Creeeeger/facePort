.class public final Lcom/android/systemui/user/UserSwitchFullscreenDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final userSwitcherViewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V
    .locals 1

    const v0, 0x7f14061a

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/systemui/user/UserSwitchFullscreenDialog;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iput-object p3, p0, Lcom/android/systemui/user/UserSwitchFullscreenDialog;->userSwitcherViewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d054a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    sget-object p1, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder;->INSTANCE:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder;

    const v0, 0x7f0a0e03

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/user/UserSwitchFullscreenDialog;->userSwitcherViewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/user/UserSwitchFullscreenDialog;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    new-instance v4, Lcom/android/systemui/user/UserSwitchFullscreenDialog$onCreate$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/user/UserSwitchFullscreenDialog$onCreate$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder;->bind(Landroid/view/ViewGroup;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Landroid/view/LayoutInflater;Lcom/android/systemui/classifier/FalsingCollector;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
