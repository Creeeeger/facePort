.class public final Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final mApplication:Landroid/app/Application;

.field public final mInstanceId:I

.field public mOwner:Landroidx/lifecycle/ViewModelStoreOwner;

.field public final mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

.field public final mSaType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_UNUSED_APPS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;->mSaType:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;->mApplication:Landroid/app/Application;

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;->mInstanceId:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;IILcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;-><init>(Landroid/app/Application;I)V

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;->mSaType:I

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 9

    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;->mSaType:I

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    const-string v3, " , this(factory) : "

    const/4 v4, 0x0

    const-string v5, " , pageType : "

    const-string v6, " , mPageInfo : "

    const-string v7, "ControllerFactory"

    iget v8, p0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;->mInstanceId:I

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "create() ] AppListController - mSaType : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;->mApplication:Landroid/app/Application;

    invoke-direct {p1, p0, v8, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;-><init>(Landroid/app/Application;IILcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V

    return-object p1

    :cond_1
    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;->mApplication:Landroid/app/Application;

    invoke-direct {p1, p0, v8}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;-><init>(Landroid/content/Context;I)V

    return-object p1

    :cond_2
    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;->mApplication:Landroid/app/Application;

    invoke-direct {p1, p0, v8}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;-><init>(Landroid/content/Context;I)V

    return-object p1

    :cond_3
    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;->mOwner:Landroidx/lifecycle/ViewModelStoreOwner;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;->mApplication:Landroid/app/Application;

    invoke-direct {p1, v0, p0, v8}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroid/app/Application;I)V

    return-object p1

    :cond_4
    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "create() ] SubFileListController - mSaType : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    iget-object v4, v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;->mApplication:Landroid/app/Application;

    invoke-direct {p1, p0, v8, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;-><init>(Landroid/app/Application;IILcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V

    return-object p1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown ViewModel Class: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
