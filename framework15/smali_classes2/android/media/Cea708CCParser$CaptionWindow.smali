.class public Landroid/media/Cea708CCParser$CaptionWindow;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionWindow"
.end annotation


# instance fields
.field public final greylist-max-o anchorHorizontal:I

.field public final greylist-max-o anchorId:I

.field public final greylist-max-o anchorVertical:I

.field public final greylist-max-o columnCount:I

.field public final greylist-max-o columnLock:Z

.field public final greylist-max-o id:I

.field public final greylist-max-o penStyle:I

.field public final greylist-max-o priority:I

.field public final greylist-max-o relativePositioning:Z

.field public final greylist-max-o rowCount:I

.field public final greylist-max-o rowLock:Z

.field public final greylist-max-o visible:Z

.field public final greylist-max-o windowStyle:I


# direct methods
.method public constructor greylist-max-o <init>(IZZZIZIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/Cea708CCParser$CaptionWindow;->id:I

    iput-boolean p2, p0, Landroid/media/Cea708CCParser$CaptionWindow;->visible:Z

    iput-boolean p3, p0, Landroid/media/Cea708CCParser$CaptionWindow;->rowLock:Z

    iput-boolean p4, p0, Landroid/media/Cea708CCParser$CaptionWindow;->columnLock:Z

    iput p5, p0, Landroid/media/Cea708CCParser$CaptionWindow;->priority:I

    iput-boolean p6, p0, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    iput p7, p0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorVertical:I

    iput p8, p0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorHorizontal:I

    iput p9, p0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    iput p10, p0, Landroid/media/Cea708CCParser$CaptionWindow;->rowCount:I

    iput p11, p0, Landroid/media/Cea708CCParser$CaptionWindow;->columnCount:I

    iput p12, p0, Landroid/media/Cea708CCParser$CaptionWindow;->penStyle:I

    iput p13, p0, Landroid/media/Cea708CCParser$CaptionWindow;->windowStyle:I

    return-void
.end method
