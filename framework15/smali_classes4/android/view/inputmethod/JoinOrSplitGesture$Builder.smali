.class public final Landroid/view/inputmethod/JoinOrSplitGesture$Builder;
.super Ljava/lang/Object;
.source "JoinOrSplitGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/JoinOrSplitGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFallbackText:Ljava/lang/String;

.field private blacklist mPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/inputmethod/JoinOrSplitGesture;
    .locals 4

    iget-object v0, p0, Landroid/view/inputmethod/JoinOrSplitGesture$Builder;->mPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/JoinOrSplitGesture;

    iget-object v1, p0, Landroid/view/inputmethod/JoinOrSplitGesture$Builder;->mPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Landroid/view/inputmethod/JoinOrSplitGesture$Builder;->mFallbackText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/inputmethod/JoinOrSplitGesture;-><init>(Landroid/graphics/PointF;Ljava/lang/String;Landroid/view/inputmethod/JoinOrSplitGesture-IA;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Point must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFallbackText(Ljava/lang/String;)Landroid/view/inputmethod/JoinOrSplitGesture$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/JoinOrSplitGesture$Builder;->mFallbackText:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setJoinOrSplitPoint(Landroid/graphics/PointF;)Landroid/view/inputmethod/JoinOrSplitGesture$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/JoinOrSplitGesture$Builder;->mPoint:Landroid/graphics/PointF;

    return-object p0
.end method
