.class public Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;
.super Ljava/lang/Object;
.source "MultiWindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaKeyBoundsChecker"
.end annotation


# static fields
.field public static final blacklist sInvalidBounds:Landroid/graphics/Rect;

.field public static final blacklist sMinimizeBounds:Landroid/graphics/Rect;

.field public static final blacklist sMoveToDefaultDisplayBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sMinimizeBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, -0x3

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sMoveToDefaultDisplayBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isInvalidBounds(Landroid/graphics/Rect;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isMinimizeBounds(Landroid/graphics/Rect;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sMinimizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isMoveToDefaultDisplayBounds(Landroid/graphics/Rect;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sMoveToDefaultDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
