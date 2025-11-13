.class Landroid/view/PointerIcon$2;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/PointerIcon;->registerDisplayListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 1388
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 1397
    invoke-static {}, Landroid/view/PointerIcon;->-$$Nest$sfgetgSystemIconsByDisplay()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1398
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 1392
    invoke-static {}, Landroid/view/PointerIcon;->-$$Nest$sfgetgSystemIconsByDisplay()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1393
    return-void
.end method
