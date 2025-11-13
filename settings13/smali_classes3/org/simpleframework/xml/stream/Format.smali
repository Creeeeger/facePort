.class public Lorg/simpleframework/xml/stream/Format;
.super Ljava/lang/Object;
.source "Format.java"


# instance fields
.field private final indent:I

.field private final prolog:Ljava/lang/String;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final verbosity:Lorg/simpleframework/xml/stream/Verbosity;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 65
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Format;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 77
    new-instance v0, Lorg/simpleframework/xml/stream/IdentityStyle;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/IdentityStyle;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/simpleframework/xml/stream/Format;-><init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;)V
    .locals 1

    .line 193
    sget-object v0, Lorg/simpleframework/xml/stream/Verbosity;->HIGH:Lorg/simpleframework/xml/stream/Verbosity;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/xml/stream/Format;-><init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/stream/Verbosity;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/stream/Verbosity;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p4, p0, Lorg/simpleframework/xml/stream/Format;->verbosity:Lorg/simpleframework/xml/stream/Verbosity;

    .line 209
    iput-object p2, p0, Lorg/simpleframework/xml/stream/Format;->prolog:Ljava/lang/String;

    .line 210
    iput p1, p0, Lorg/simpleframework/xml/stream/Format;->indent:I

    .line 211
    iput-object p3, p0, Lorg/simpleframework/xml/stream/Format;->style:Lorg/simpleframework/xml/stream/Style;

    return-void
.end method


# virtual methods
.method public getIndent()I
    .locals 0

    .line 222
    iget p0, p0, Lorg/simpleframework/xml/stream/Format;->indent:I

    return p0
.end method

.method public getProlog()Ljava/lang/String;
    .locals 0

    .line 234
    iget-object p0, p0, Lorg/simpleframework/xml/stream/Format;->prolog:Ljava/lang/String;

    return-object p0
.end method

.method public getStyle()Lorg/simpleframework/xml/stream/Style;
    .locals 0

    .line 246
    iget-object p0, p0, Lorg/simpleframework/xml/stream/Format;->style:Lorg/simpleframework/xml/stream/Style;

    return-object p0
.end method

.method public getVerbosity()Lorg/simpleframework/xml/stream/Verbosity;
    .locals 0

    .line 258
    iget-object p0, p0, Lorg/simpleframework/xml/stream/Format;->verbosity:Lorg/simpleframework/xml/stream/Verbosity;

    return-object p0
.end method
