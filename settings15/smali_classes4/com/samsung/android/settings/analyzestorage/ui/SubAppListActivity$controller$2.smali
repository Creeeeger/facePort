.class final Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$controller$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$controller$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$controller$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    sget v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->instanceId:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;-><init>(Landroid/app/Application;I)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    const-string/jumbo v2, "store"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    invoke-direct {v2, v1, v0, p0}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    const-class p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
