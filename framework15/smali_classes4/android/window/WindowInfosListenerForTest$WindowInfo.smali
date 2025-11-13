.class public Landroid/window/WindowInfosListenerForTest$WindowInfo;
.super Ljava/lang/Object;
.source "WindowInfosListenerForTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowInfosListenerForTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowInfo"
.end annotation


# instance fields
.field public final blacklist bounds:Landroid/graphics/Rect;

.field public final blacklist displayId:I

.field public final blacklist isDuplicateTouchToWallpaper:Z

.field public final blacklist isFocusable:Z

.field public final blacklist isPreventSplitting:Z

.field public final blacklist isTouchable:Z

.field public final blacklist isTrustedOverlay:Z

.field public final blacklist isVisible:Z

.field public final blacklist isWatchOutsideTouch:Z

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist transform:Landroid/graphics/Matrix;

.field public final blacklist windowToken:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/String;ILandroid/graphics/Rect;ILandroid/graphics/Matrix;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->windowToken:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->name:Ljava/lang/String;

    iput p3, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->displayId:I

    iput-object p4, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->bounds:Landroid/graphics/Rect;

    and-int/lit16 v0, p5, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isTrustedOverlay:Z

    and-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isVisible:Z

    iput-object p6, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->transform:Landroid/graphics/Matrix;

    and-int/lit8 v0, p5, 0x8

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isTouchable:Z

    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isFocusable:Z

    and-int/lit8 v0, p5, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isPreventSplitting:Z

    and-int/lit8 v0, p5, 0x20

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isDuplicateTouchToWallpaper:Z

    and-int/lit16 v0, p5, 0x200

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isWatchOutsideTouch:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTrustedOverlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isTrustedOverlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->windowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
