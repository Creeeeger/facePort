.class public Landroid/media/Cea708CCParser$CaptionPenAttr;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionPenAttr"
.end annotation


# static fields
.field public static final greylist-max-o OFFSET_NORMAL:I = 0x1

.field public static final greylist-max-o OFFSET_SUBSCRIPT:I = 0x0

.field public static final greylist-max-o OFFSET_SUPERSCRIPT:I = 0x2

.field public static final greylist-max-o PEN_SIZE_LARGE:I = 0x2

.field public static final greylist-max-o PEN_SIZE_SMALL:I = 0x0

.field public static final greylist-max-o PEN_SIZE_STANDARD:I = 0x1


# instance fields
.field public final greylist-max-o edgeType:I

.field public final greylist-max-o fontTag:I

.field public final greylist-max-o italic:Z

.field public final greylist-max-o penOffset:I

.field public final greylist-max-o penSize:I

.field public final greylist-max-o textTag:I

.field public final greylist-max-o underline:Z


# direct methods
.method public constructor greylist-max-o <init>(IIIIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/Cea708CCParser$CaptionPenAttr;->penSize:I

    iput p2, p0, Landroid/media/Cea708CCParser$CaptionPenAttr;->penOffset:I

    iput p3, p0, Landroid/media/Cea708CCParser$CaptionPenAttr;->textTag:I

    iput p4, p0, Landroid/media/Cea708CCParser$CaptionPenAttr;->fontTag:I

    iput p5, p0, Landroid/media/Cea708CCParser$CaptionPenAttr;->edgeType:I

    iput-boolean p6, p0, Landroid/media/Cea708CCParser$CaptionPenAttr;->underline:Z

    iput-boolean p7, p0, Landroid/media/Cea708CCParser$CaptionPenAttr;->italic:Z

    return-void
.end method
