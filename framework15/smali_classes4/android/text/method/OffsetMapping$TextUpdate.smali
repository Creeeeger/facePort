.class public Landroid/text/method/OffsetMapping$TextUpdate;
.super Ljava/lang/Object;
.source "OffsetMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/OffsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextUpdate"
.end annotation


# instance fields
.field public blacklist after:I

.field public blacklist before:I

.field public blacklist where:I


# direct methods
.method public constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    iput p2, p0, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    iput p3, p0, Landroid/text/method/OffsetMapping$TextUpdate;->after:I

    return-void
.end method
