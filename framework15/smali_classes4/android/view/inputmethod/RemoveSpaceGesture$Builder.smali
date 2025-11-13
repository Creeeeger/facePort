.class public final Landroid/view/inputmethod/RemoveSpaceGesture$Builder;
.super Ljava/lang/Object;
.source "RemoveSpaceGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/RemoveSpaceGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEndPoint:Landroid/graphics/PointF;

.field private blacklist mFallbackText:Ljava/lang/String;

.field private blacklist mStartPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/inputmethod/RemoveSpaceGesture;
    .locals 5

    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mStartPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mEndPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/RemoveSpaceGesture;

    iget-object v1, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mStartPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mEndPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mFallbackText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/inputmethod/RemoveSpaceGesture;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/String;Landroid/view/inputmethod/RemoveSpaceGesture-IA;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start and end points must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFallbackText(Ljava/lang/String;)Landroid/view/inputmethod/RemoveSpaceGesture$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mFallbackText:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/inputmethod/RemoveSpaceGesture$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mStartPoint:Landroid/graphics/PointF;

    iput-object p2, p0, Landroid/view/inputmethod/RemoveSpaceGesture$Builder;->mEndPoint:Landroid/graphics/PointF;

    return-object p0
.end method
