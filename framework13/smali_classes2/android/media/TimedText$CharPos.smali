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
    .param p1, "startChar"    # I
    .param p2, "endChar"    # I

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p1, p0, Landroid/media/TimedText$CharPos;->startChar:I

    .line 161
    iput p2, p0, Landroid/media/TimedText$CharPos;->endChar:I

    .line 162
    return-void
.end method
