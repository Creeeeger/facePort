.class public abstract Lcom/android/systemui/screenshot/ScreenshotPolicyImplKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final toDisplayContentInfo(Landroid/app/ActivityTaskManager$RootTaskInfo;)Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;
    .locals 4

    iget-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v3, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    aget v3, v3, v2

    iget-object p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    aget-object p0, p0, v2

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v2, v0, p0, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;-><init>(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/UserHandle;I)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "should not be null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
