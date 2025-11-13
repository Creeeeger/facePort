.class public final Landroid/view/inputmethod/InsertModeGesture$Builder;
.super Ljava/lang/Object;
.source "InsertModeGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InsertModeGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCancellationSignal:Landroid/os/CancellationSignal;

.field private blacklist mFallbackText:Ljava/lang/String;

.field private blacklist mPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/inputmethod/InsertModeGesture;
    .locals 5

    iget-object v0, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/InsertModeGesture;

    iget-object v1, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mFallbackText:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/inputmethod/InsertModeGesture;-><init>(Landroid/graphics/PointF;Ljava/lang/String;Landroid/os/CancellationSignal;Landroid/view/inputmethod/InsertModeGesture-IA;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CancellationSignal must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Insertion point must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCancellationSignal(Landroid/os/CancellationSignal;)Landroid/view/inputmethod/InsertModeGesture$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method public whitelist setFallbackText(Ljava/lang/String;)Landroid/view/inputmethod/InsertModeGesture$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mFallbackText:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setInsertionPoint(Landroid/graphics/PointF;)Landroid/view/inputmethod/InsertModeGesture$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InsertModeGesture$Builder;->mPoint:Landroid/graphics/PointF;

    return-object p0
.end method
