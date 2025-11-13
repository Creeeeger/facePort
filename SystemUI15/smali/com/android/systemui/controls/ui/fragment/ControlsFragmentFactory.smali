.class public final Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;
.super Landroidx/fragment/app/FragmentFactory;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

.field public final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

.field public final controlsUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public final listingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field public final saLogger:Lcom/android/systemui/controls/util/SALogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/ui/SecControlsUiController;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iput-object p6, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->controlsUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    return-void
.end method


# virtual methods
.method public final instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 8

    const-class v0, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    iget-object v4, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    iget-object v5, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iget-object v6, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v7, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->controlsUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/controls/ui/fragment/MainFragment;-><init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/ui/SecControlsUiController;)V

    goto :goto_0

    :cond_0
    const-class v0, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    invoke-direct {p1, v1}, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;-><init>(Lcom/android/systemui/controls/util/SALogger;)V

    goto :goto_0

    :cond_1
    const-class v0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;-><init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)V

    goto :goto_0

    :cond_2
    const-class v0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    invoke-direct {p1, v1}, Lcom/android/systemui/controls/ui/fragment/SettingFragment;-><init>(Lcom/android/systemui/controls/util/SALogger;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p0, "ControlsFragmentFactory"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
