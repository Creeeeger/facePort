.class final Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $blurView:Landroid/widget/ImageView;

.field final synthetic $editModeContainer:Landroid/widget/FrameLayout;

.field final synthetic $editModeWallpaperView:Landroid/widget/ImageView;

.field final synthetic $root:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$root:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$blurView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$editModeWallpaperView:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$editModeContainer:Landroid/widget/FrameLayout;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateViews SA="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enterVI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardEditModeController"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$root:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->$r8$clinit:I

    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$editModeWallpaperView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$blurView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$editModeContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$root:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p2, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$1$1;

    invoke-direct {v5, v1, p0, p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-interface {p2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p2, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_1
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    div-int/2addr v1, v0

    div-int/2addr p2, v0

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v1, v1

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float p2, p2

    mul-float/2addr p2, v6

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-gt v0, v1, :cond_3

    if-le v2, p2, :cond_4

    :cond_3
    invoke-static {p1, v1, p2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_4
    :try_start_0
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    sget-object p2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, p2, v5}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p2

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/renderscript/RSRuntimeException;->printStackTrace()V

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    div-int/lit16 p0, p0, 0x400

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "KB"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "getBlurBitmap "

    invoke-static {p2, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaper()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-boolean p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsInfinityLiveWallpaper:Z

    if-eqz p1, :cond_6

    const-wide/16 p1, 0x64

    goto :goto_3

    :cond_6
    const-wide/16 p1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$blurView:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$2;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$editModeWallpaperView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$editModeContainer:Landroid/widget/FrameLayout;

    invoke-direct {v3, v2, v4, v5}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$2;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v2, v3, p1, p2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo p1, "updateViews() call semSendWallpaperCommand."

    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->$root:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperRequestId:Ljava/lang/String;

    const-string/jumbo v1, "stateBackupRequestId"

    invoke-virtual {p2, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "samsung.android.wallpaper.restorerunningstate"

    invoke-virtual {p1, v0, p0, p2}, Landroid/app/WallpaperManager;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
