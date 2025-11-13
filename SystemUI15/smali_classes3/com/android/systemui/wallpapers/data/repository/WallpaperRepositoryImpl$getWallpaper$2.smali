.class final Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$getWallpaper$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $selectedUser:Lcom/android/systemui/user/data/model/SelectedUserModel;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;Lcom/android/systemui/user/data/model/SelectedUserModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;",
            "Lcom/android/systemui/user/data/model/SelectedUserModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$getWallpaper$2;->this$0:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$getWallpaper$2;->$selectedUser:Lcom/android/systemui/user/data/model/SelectedUserModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$getWallpaper$2;

    iget-object v0, p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$getWallpaper$2;->this$0:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$getWallpaper$2;->$selectedUser:Lcom/android/systemui/user/data/model/SelectedUserModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$getWallpaper$2;-><init>(Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;Lcom/android/systemui/user/data/model/SelectedUserModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$getWallpaper$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$getWallpaper$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$getWallpaper$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$getWallpaper$2;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    and-int/lit8 v0, p1, 0x3c

    iget-object v1, p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$getWallpaper$2;->this$0:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->isSystemAndLockPaired(I)Z

    move-result v1

    sget-boolean v2, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    invoke-static {p1, v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    or-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_1
    or-int/lit8 p1, v0, 0x2

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$getWallpaper$2;->this$0:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;->wallpaperManager:Landroid/app/WallpaperManager;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$getWallpaper$2;->$selectedUser:Lcom/android/systemui/user/data/model/SelectedUserModel;

    iget-object p0, p0, Lcom/android/systemui/user/data/model/SelectedUserModel;->userInfo:Landroid/content/pm/UserInfo;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p1, p0}, Landroid/app/WallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
