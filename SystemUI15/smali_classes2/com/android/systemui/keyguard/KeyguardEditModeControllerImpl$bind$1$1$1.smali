.class public final Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Landroid/graphics/Bitmap;

.field public final synthetic $root:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$1$1;->$root:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$1$1;->$it:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$1$1;->$root:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$bind$1$1$1;->$it:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->access$saveWallpaperBitmap(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method
