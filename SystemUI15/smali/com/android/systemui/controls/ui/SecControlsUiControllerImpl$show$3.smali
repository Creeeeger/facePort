.class final synthetic Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$show$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "showNonMainView(Ljava/util/List;Ljava/util/List;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    const-string v4, "showNonMainView"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    sget p1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "showNonMainView"

    const-string v0, "SecControlsUiControllerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    const v1, 0x7f0a0472

    iget-object v2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    const-string p1, "showNoAppView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    instance-of v4, v0, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    if-eqz v4, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    invoke-direct {v3, v2}, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;-><init>(Lcom/android/systemui/controls/util/SALogger;)V

    :cond_2
    iput-object v3, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_9

    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v2, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, p0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    goto :goto_2

    :cond_4
    const-string p1, "showNoFavoriteView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v3

    :goto_1
    instance-of v4, v0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    if-eqz v4, :cond_6

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    :cond_6
    if-nez v3, :cond_7

    new-instance v3, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsActivityStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object v4, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    invoke-direct {v3, v0, v2, v4}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;-><init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)V

    :cond_7
    iput-object v3, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_9

    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v2, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, p0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :cond_9
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
