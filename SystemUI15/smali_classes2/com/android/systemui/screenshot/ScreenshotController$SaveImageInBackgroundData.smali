.class public final Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

.field public displayId:I

.field public finisher:Ljava/util/function/Consumer;

.field public image:Landroid/graphics/Bitmap;

.field public mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

.field public mQuickShareActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

.field public notifiedApps:Ljava/util/List;

.field public owner:Landroid/os/UserHandle;

.field public webData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
