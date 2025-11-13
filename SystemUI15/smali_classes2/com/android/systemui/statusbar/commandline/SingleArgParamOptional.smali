.class public final Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;
.super Lcom/android/systemui/statusbar/commandline/UnaryParamBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final description:Ljava/lang/String;

.field public final longName:Ljava/lang/String;

.field public final shortName:Ljava/lang/String;

.field public final valueParser:Lcom/android/systemui/statusbar/commandline/ValueParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/commandline/ValueParser;",
            ")V"
        }
    .end annotation

    new-instance v6, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;

    const/4 v3, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)V

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/commandline/UnaryParamBase;-><init>(Lcom/android/systemui/statusbar/commandline/MultipleArgParam;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->longName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->shortName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->valueParser:Lcom/android/systemui/statusbar/commandline/ValueParser;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getLongName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->longName:Ljava/lang/String;

    return-object p0
.end method

.method public final getShortName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->shortName:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/UnaryParamBase;->wrapped:Lcom/android/systemui/statusbar/commandline/MultipleArgParam;

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->inner:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final parseArgsFromIter(Ljava/util/Iterator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/UnaryParamBase;->wrapped:Lcom/android/systemui/statusbar/commandline/MultipleArgParam;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->parseArgsFromIter(Ljava/util/Iterator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/commandline/UnaryParamBase;->handled:Z

    return-void
.end method
