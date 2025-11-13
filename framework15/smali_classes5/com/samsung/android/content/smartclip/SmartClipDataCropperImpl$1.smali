.class Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;
.super Landroid/os/Handler;
.source "SmartClipDataCropperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public blacklist mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

.field final synthetic blacklist this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

.field final synthetic blacklist val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field final synthetic blacklist val$setSmartClipResultHandlerMethod:Ljava/lang/reflect/Method;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Landroid/view/View;Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object p3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$setSmartClipResultHandlerMethod:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "Meta data arrived from chrome"

    const-string v2, "SmartClipDataCropperImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "The bundle is null!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v2, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    invoke-virtual {v0, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    return-void

    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "url"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "html"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "text"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "rect"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    const-string v11, "context"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    const-string v13, "Title:%s\nURL:%s\nArea:%s\nText:%s\nHTML:%s"

    filled-new-array {v4, v6, v10, v9, v8}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    new-instance v15, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-direct {v15, v0, v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v15}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    new-instance v13, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-direct {v13, v5, v6}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    new-instance v5, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    new-instance v5, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v7, "plain_text"

    invoke-direct {v5, v7, v9}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    :cond_5
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    new-instance v5, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-direct {v5, v11, v12}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    :cond_6
    if-eqz v10, :cond_7

    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v0, v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v10, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-static {v14, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-static {v14, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, v10, Landroid/graphics/Rect;->top:I

    iget v5, v10, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    invoke-static {v14, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, v10, Landroid/graphics/Rect;->right:I

    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-static {v14, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v7, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    invoke-static {v5, v7}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->-$$Nest$mgetViewBoundsOnScreen(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v11, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v7, v11}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v10, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v7, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-virtual {v7, v10}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    :cond_7
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$setSmartClipResultHandlerMethod:Ljava/lang/reflect/Method;

    iget-object v5, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    const/4 v7, 0x0

    move-object v11, v7

    check-cast v11, Landroid/os/Handler;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "Could not invoke set smartclip handler API"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v2, v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;->mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    invoke-virtual {v0, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    return-void
.end method
