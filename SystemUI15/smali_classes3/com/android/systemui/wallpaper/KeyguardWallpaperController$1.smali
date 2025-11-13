.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHints()Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method
