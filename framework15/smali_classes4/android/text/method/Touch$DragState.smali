.class Landroid/text/method/Touch$DragState;
.super Ljava/lang/Object;
.source "Touch.java"

# interfaces
.implements Landroid/text/NoCopySpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/Touch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DragState"
.end annotation


# instance fields
.field public greylist-max-o mFarEnough:Z

.field public greylist-max-o mScrollX:I

.field public greylist-max-o mScrollY:I

.field public greylist-max-o mUsed:Z

.field public greylist-max-o mX:F

.field public greylist-max-o mY:F


# direct methods
.method public constructor greylist-max-o <init>(FFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/method/Touch$DragState;->mX:F

    iput p2, p0, Landroid/text/method/Touch$DragState;->mY:F

    iput p3, p0, Landroid/text/method/Touch$DragState;->mScrollX:I

    iput p4, p0, Landroid/text/method/Touch$DragState;->mScrollY:I

    return-void
.end method
