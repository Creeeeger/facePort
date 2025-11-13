.class public final Lcom/android/systemui/mediaprojection/appselector/data/BasicPackageManagerAppIconLoader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/mediaprojection/appselector/data/BasicAppIconLoader;


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final packageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/shared/system/PackageManagerWrapper;Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/data/BasicPackageManagerAppIconLoader;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/data/BasicPackageManagerAppIconLoader;->packageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/data/BasicPackageManagerAppIconLoader;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method
