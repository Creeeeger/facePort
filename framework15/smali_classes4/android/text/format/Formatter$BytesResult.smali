.class public Landroid/text/format/Formatter$BytesResult;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesResult"
.end annotation


# instance fields
.field public final greylist-max-o roundedBytes:J

.field public final greylist-max-o units:Ljava/lang/String;

.field public final blacklist unitsContentDescription:Ljava/lang/String;

.field public final greylist-max-o value:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    iput-object p2, p0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    iput-object p3, p0, Landroid/text/format/Formatter$BytesResult;->unitsContentDescription:Ljava/lang/String;

    iput-wide p4, p0, Landroid/text/format/Formatter$BytesResult;->roundedBytes:J

    return-void
.end method
