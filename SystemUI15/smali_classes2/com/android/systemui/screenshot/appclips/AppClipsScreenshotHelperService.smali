.class public Lcom/android/systemui/screenshot/appclips/AppClipsScreenshotHelperService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mOptionalBubbles:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsScreenshotHelperService;->mOptionalBubbles:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Lcom/android/systemui/screenshot/appclips/AppClipsScreenshotHelperService$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsScreenshotHelperService$1;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsScreenshotHelperService;)V

    return-object p1
.end method
