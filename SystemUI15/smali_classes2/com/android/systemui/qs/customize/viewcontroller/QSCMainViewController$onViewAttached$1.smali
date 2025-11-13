.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$onViewAttached$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$onViewAttached$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$onViewAttached$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    iget v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->mCurrentOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->mCurrentOrientation:I

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->isShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->doShowingInRotation:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->doShowingInRotation:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->showView(Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->initResources()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->viewControllers:[Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v1, p0, v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->configChanged()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
