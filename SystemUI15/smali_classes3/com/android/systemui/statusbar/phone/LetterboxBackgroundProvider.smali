.class public final Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public isLetterboxBackgroundMultiColored:Z

.field public letterboxBackgroundColor:I

.field public final mainHandler:Landroid/os/Handler;

.field public final wallpaperColorsListener:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$wallpaperColorsListener$1;

.field public final wallpaperManager:Landroid/app/WallpaperManager;

.field public final windowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/view/IWindowManager;Ljava/util/concurrent/Executor;Landroid/app/WallpaperManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->windowManager:Landroid/view/IWindowManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->wallpaperManager:Landroid/app/WallpaperManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->mainHandler:Landroid/os/Handler;

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->letterboxBackgroundColor:I

    new-instance p1, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$wallpaperColorsListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$wallpaperColorsListener$1;-><init>(Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->wallpaperColorsListener:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$wallpaperColorsListener$1;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget p2, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->letterboxBackgroundColor:I

    invoke-static {p2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->isLetterboxBackgroundMultiColored:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n           letterboxBackgroundColor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n           isLetterboxBackgroundMultiColored: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\n       "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$fetchBackgroundColorInfo$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$fetchBackgroundColorInfo$1;-><init>(Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->wallpaperManager:Landroid/app/WallpaperManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->wallpaperColorsListener:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider$wallpaperColorsListener$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    return-void
.end method
