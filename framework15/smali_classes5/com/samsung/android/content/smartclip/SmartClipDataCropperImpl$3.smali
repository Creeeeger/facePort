.class Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;
.super Landroid/os/Handler;
.source "SmartClipDataCropperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_ThirdPartyInterface(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public blacklist mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

.field final synthetic blacklist this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

.field final synthetic blacklist val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object p3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;->mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "Pending meta data arrived from third party"

    const-string v1, "SmartClipDataCropperImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "The bundle is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;->mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->-$$Nest$mupdateDataElementWithBundle(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$3;->mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    return-void
.end method
