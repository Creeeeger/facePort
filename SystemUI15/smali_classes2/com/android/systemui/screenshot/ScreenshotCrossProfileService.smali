.class public final Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBinder:Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$mBinder$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$mBinder$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$mBinder$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;->mBinder:Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$mBinder$1;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBind: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenshotProxyService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;->mBinder:Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$mBinder$1;

    return-object p0
.end method
