.class public final Lcom/android/systemui/statusbar/KshPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/statusbar/KshPresenter$1;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsNightModeOn:Z

.field public mKshData:Lcom/android/systemui/statusbar/model/KshData;

.field public mKshView:Lcom/android/systemui/statusbar/KshView;

.field public final mLastConfig:Landroid/content/res/Configuration;

.field public final mPogoKeyboardChangedReceiver:Lcom/android/systemui/statusbar/KshPresenter$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/KshPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KshPresenter$1;-><init>(Lcom/android/systemui/statusbar/KshPresenter;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationListener:Lcom/android/systemui/statusbar/KshPresenter$1;

    new-instance v0, Lcom/android/systemui/statusbar/KshPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KshPresenter$2;-><init>(Lcom/android/systemui/statusbar/KshPresenter;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mPogoKeyboardChangedReceiver:Lcom/android/systemui/statusbar/KshPresenter$2;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mIsNightModeOn:Z

    new-instance v0, Lcom/android/systemui/statusbar/KshView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KshPresenter;->mIsNightModeOn:Z

    if-eqz v2, :cond_1

    const v2, 0x103012e

    goto :goto_1

    :cond_1
    const v2, 0x1030132

    :goto_1
    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/KshView;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/KshPresenter;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    new-instance v0, Lcom/android/systemui/statusbar/model/KshData;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/model/KshData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-void
.end method


# virtual methods
.method public getKshData()Lcom/android/systemui/statusbar/model/KshData;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    return-object p0
.end method

.method public getKshView()Lcom/android/systemui/statusbar/KshView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    return-object p0
.end method
