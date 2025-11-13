.class public final Landroidx/window/embedding/OverlayInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B#\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0011\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0086\u0002J\u0008\u0010\u0013\u001a\u00020\u0003H\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/window/embedding/OverlayInfo;",
        "",
        "overlayTag",
        "",
        "currentOverlayAttributes",
        "Landroidx/window/embedding/OverlayAttributes;",
        "activityStack",
        "Landroidx/window/embedding/ActivityStack;",
        "(Ljava/lang/String;Landroidx/window/embedding/OverlayAttributes;Landroidx/window/embedding/ActivityStack;)V",
        "getActivityStack",
        "()Landroidx/window/embedding/ActivityStack;",
        "getCurrentOverlayAttributes",
        "()Landroidx/window/embedding/OverlayAttributes;",
        "getOverlayTag",
        "()Ljava/lang/String;",
        "contains",
        "",
        "activity",
        "Landroid/app/Activity;",
        "toString",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final activityStack:Landroidx/window/embedding/ActivityStack;

.field private final currentOverlayAttributes:Landroidx/window/embedding/OverlayAttributes;

.field private final overlayTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/window/embedding/OverlayAttributes;Landroidx/window/embedding/ActivityStack;)V
    .locals 1

    const-string v0, "overlayTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/OverlayInfo;->overlayTag:Ljava/lang/String;

    iput-object p2, p0, Landroidx/window/embedding/OverlayInfo;->currentOverlayAttributes:Landroidx/window/embedding/OverlayAttributes;

    iput-object p3, p0, Landroidx/window/embedding/OverlayInfo;->activityStack:Landroidx/window/embedding/ActivityStack;

    return-void
.end method


# virtual methods
.method public final contains(Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/embedding/OverlayInfo;->activityStack:Landroidx/window/embedding/ActivityStack;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/window/embedding/ActivityStack;->contains(Landroid/app/Activity;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getActivityStack()Landroidx/window/embedding/ActivityStack;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/OverlayInfo;->activityStack:Landroidx/window/embedding/ActivityStack;

    return-object p0
.end method

.method public final getCurrentOverlayAttributes()Landroidx/window/embedding/OverlayAttributes;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/OverlayInfo;->currentOverlayAttributes:Landroidx/window/embedding/OverlayAttributes;

    return-object p0
.end method

.method public final getOverlayTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/OverlayInfo;->overlayTag:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OverlayInfo: {tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/window/embedding/OverlayInfo;->overlayTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentOverlayAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/embedding/OverlayInfo;->currentOverlayAttributes:Landroidx/window/embedding/OverlayAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activityStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/window/embedding/OverlayInfo;->activityStack:Landroidx/window/embedding/ActivityStack;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
