.class public final Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$mBinder$1;
.super Lcom/android/systemui/screenshot/ICrossProfileService$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$mBinder$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ICrossProfileService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final launchIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$mBinder$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;

    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
