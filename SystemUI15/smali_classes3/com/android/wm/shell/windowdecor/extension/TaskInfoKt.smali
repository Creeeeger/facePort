.class public abstract Lcom/android/wm/shell/windowdecor/extension/TaskInfoKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final isTransparentCaptionBarAppearance(Landroid/app/TaskInfo;)Z
    .locals 1

    iget-object p0, p0, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getTopOpaqueSystemBarsAppearance()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
