.class public final Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->context:Landroid/content/Context;

    const-string p1, "Screenshot"

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->TAG:Ljava/lang/String;

    return-void
.end method
