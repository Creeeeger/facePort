.class public final Lcom/android/systemui/statusbar/commandline/MultipleArgParam;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Param;


# instance fields
.field public final description:Ljava/lang/String;

.field public final inner:Ljava/util/List;

.field public final longName:Ljava/lang/String;

.field public final numArgs:I

.field public final shortName:Ljava/lang/String;

.field public final valueParser:Lcom/android/systemui/statusbar/commandline/ValueParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/commandline/ValueParser;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->longName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->shortName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->numArgs:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->description:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->valueParser:Lcom/android/systemui/statusbar/commandline/ValueParser;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->inner:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    :cond_1
    move v4, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v5, p4

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getLongName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->longName:Ljava/lang/String;

    return-object p0
.end method

.method public final getShortName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->shortName:Ljava/lang/String;

    return-object p0
.end method

.method public final parseArgsFromIter(Ljava/util/Iterator;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->numArgs:I

    if-ge v0, v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->valueParser:Lcom/android/systemui/statusbar/commandline/ValueParser;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/commandline/ValueParser;->parseValue-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->inner:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    throw v2

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lcom/android/systemui/statusbar/commandline/ArgParseError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no argument provided for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->shortName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/commandline/ArgParseError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
