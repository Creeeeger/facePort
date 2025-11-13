.class public final Landroid/media/TimedText$CharPos;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharPos"
.end annotation


# instance fields
.field public final greylist-max-o endChar:I

.field public final greylist-max-o startChar:I


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/TimedText$CharPos;->startChar:I

    iput p2, p0, Landroid/media/TimedText$CharPos;->endChar:I

    return-void
.end method
