.class public final Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $blurView:Landroid/widget/ImageView;

.field public final synthetic $editModeContainer:Landroid/widget/FrameLayout;

.field public final synthetic $editModeWallpaperView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$2;->$blurView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$2;->$editModeWallpaperView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$2;->$editModeContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "KeyguardEditModeController"

    const-string/jumbo v1, "updateViews() request to hide view."

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$2;->$blurView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$2;->$editModeWallpaperView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$2;->$editModeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
