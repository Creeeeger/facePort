.class public final Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/subscreen/SubRoom;


# static fields
.field public static mContext:Landroid/content/Context;

.field public static mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

.field public static sInstance:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;


# instance fields
.field public final mMainView:Landroid/view/View;

.field public mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;


# direct methods
.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

    sget-object v3, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v0, v0, Lcom/android/systemui/qs/InjectionInflationController;->mFactory:Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;

    invoke-virtual {v3, v0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    const v0, 0x7f0d04bc

    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_SETTINGS:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

    sget-object v3, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v0, v0, Lcom/android/systemui/qs/InjectionInflationController;->mFactory:Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;

    invoke-virtual {v3, v0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    const v0, 0x7f0d04bb

    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;
    .locals 1

    sget-object v0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->sInstance:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    if-nez v0, :cond_0

    sput-object p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

    new-instance p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    invoke-direct {p0}, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;-><init>()V

    sput-object p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->sInstance:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    :cond_0
    const-string p0, "SubscreenSubRoomQuickPanel"

    const-string p1, "getInstance()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->sInstance:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    return-object p0
.end method


# virtual methods
.method public final getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    return-object p0
.end method

.method public final onCloseFinished()V
    .locals 1

    const-string p0, "SubscreenSubRoomQuickPanel"

    const-string v0, "SSRQS onCloseFinished "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCloseStarted()V
    .locals 1

    const-string p0, "SubscreenSubRoomQuickPanel"

    const-string v0, "SSRQS onCloseStarted "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onOpenFinished()V
    .locals 1

    const-string p0, "SubscreenSubRoomQuickPanel"

    const-string v0, "SSRQS onOpenFinished "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onOpenStarted()V
    .locals 1

    const-string p0, "SubscreenSubRoomQuickPanel"

    const-string v0, "SSRQS onOpenStarted "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final removeListener()V
    .locals 0

    return-void
.end method

.method public final request(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setListener(Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    return-void
.end method
