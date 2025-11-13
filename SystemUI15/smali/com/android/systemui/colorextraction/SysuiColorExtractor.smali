.class public final Lcom/android/systemui/colorextraction/SysuiColorExtractor;
.super Lcom/android/internal/colorextraction/ColorExtractor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final mNeutralColorsLock:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field public final mTonal:Lcom/android/internal/colorextraction/types/Tonal;

.field public final mUserInteractor:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/app/WallpaperManager;Lcom/android/systemui/dump/DumpManager;ZLdagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/colorextraction/types/ExtractionType;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Landroid/app/WallpaperManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Z",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p6, p4}, Lcom/android/internal/colorextraction/ColorExtractor;-><init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;ZLandroid/app/WallpaperManager;)V

    instance-of p6, p2, Lcom/android/internal/colorextraction/types/Tonal;

    if-eqz p6, :cond_0

    check-cast p2, Lcom/android/internal/colorextraction/types/Tonal;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/internal/colorextraction/types/Tonal;

    invoke-direct {p2, p1}, Lcom/android/internal/colorextraction/types/Tonal;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mTonal:Lcom/android/internal/colorextraction/types/Tonal;

    new-instance p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mNeutralColorsLock:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    check-cast p3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    const-class p1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const-string p1, "SysuiColorExtractor"

    invoke-virtual {p5, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iput-object p7, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mUserInteractor:Ldagger/Lazy;

    invoke-virtual {p4}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p4, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-virtual {p4, p0, p1, p2}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Ldagger/Lazy;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    new-instance v2, Lcom/android/internal/colorextraction/types/Tonal;

    invoke-direct {v2, p1}, Lcom/android/internal/colorextraction/types/Tonal;-><init>(Landroid/content/Context;)V

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/WallpaperManager;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;-><init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/app/WallpaperManager;Lcom/android/systemui/dump/DumpManager;ZLdagger/Lazy;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p2, "SysuiColorExtractor:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  Current wallpaper colors:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    system: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "    lock: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget-object v2, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    const-string v3, "  Gradients:"

    invoke-static {p1, v3, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  Neutral colors: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mNeutralColorsLock:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final extractWallpaperColors()V
    .locals 3

    invoke-super {p0}, Lcom/android/internal/colorextraction/ColorExtractor;->extractWallpaperColors()V

    iget-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mTonal:Lcom/android/internal/colorextraction/types/Tonal;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mNeutralColorsLock:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mUserInteractor:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    if-eq p3, v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 p3, p2, 0x2

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mTonal:Lcom/android/internal/colorextraction/types/Tonal;

    iget-object v0, p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mNeutralColorsLock:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {p3, p1, v0}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/colorextraction/ColorExtractor;->onColorsChanged(Landroid/app/WallpaperColors;I)V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->extractWallpaperColors()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->triggerColorsChanged(I)V

    return-void
.end method
