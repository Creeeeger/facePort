.class public Landroid/window/WindowInfosListenerForTest;
.super Ljava/lang/Object;
.source "WindowInfosListenerForTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowInfosListenerForTest$WindowInfo;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WindowInfosListenerForTest"


# instance fields
.field private blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;>;",
            "Landroid/window/WindowInfosListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbuildWindowInfos([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroid/window/WindowInfosListenerForTest;->buildWindowInfos([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowInfosListenerForTest;->mListeners:Landroid/util/ArrayMap;

    return-void
.end method

.method private static blacklist buildWindowInfos([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/InputWindowHandle;",
            "[",
            "Landroid/window/WindowInfosListener$DisplayInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Landroid/util/SparseArray;

    array-length v4, v1

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v1, v6

    iget v8, v7, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    invoke-virtual {v3, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    array-length v6, v0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v7, v0, v5

    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, v7, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v9, v7, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/WindowInfosListener$DisplayInfo;

    if-eqz v9, :cond_1

    invoke-virtual {v4, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v10, v9, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v10, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v4, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    :cond_1
    new-instance v15, Landroid/window/WindowInfosListenerForTest$WindowInfo;

    invoke-virtual {v7}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v11

    iget-object v12, v7, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    iget v13, v7, Landroid/view/InputWindowHandle;->displayId:I

    iget v14, v7, Landroid/view/InputWindowHandle;->inputConfig:I

    iget-object v10, v7, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    move-object/from16 v16, v10

    move-object v10, v15

    move/from16 v17, v14

    move-object v14, v8

    move-object v0, v15

    move/from16 v15, v17

    invoke-direct/range {v10 .. v16}, Landroid/window/WindowInfosListenerForTest$WindowInfo;-><init>(Landroid/os/IBinder;Ljava/lang/String;ILandroid/graphics/Rect;ILandroid/graphics/Matrix;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_2
    return-object v2
.end method


# virtual methods
.method public blacklist addWindowInfosListener(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Landroid/window/WindowInfosListenerForTest$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/window/WindowInfosListenerForTest$1;-><init>(Landroid/window/WindowInfosListenerForTest;Ljava/util/concurrent/CountDownLatch;Ljava/util/function/Consumer;)V

    iget-object v2, p0, Landroid/window/WindowInfosListenerForTest;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-virtual {v1}, Landroid/window/WindowInfosListenerForTest$1;->register()Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [Landroid/view/InputWindowHandle;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Landroid/window/WindowInfosListener$DisplayInfo;

    invoke-static {v3, v4}, Landroid/window/WindowInfosListenerForTest;->buildWindowInfos([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public blacklist removeWindowInfosListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/window/WindowInfosListenerForTest$WindowInfo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/window/WindowInfosListenerForTest;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowInfosListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/window/WindowInfosListener;->unregister()V

    return-void
.end method
