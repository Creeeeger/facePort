.class public abstract Lcom/android/systemui/statusbar/commandline/UnaryParamBase;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Param;


# instance fields
.field public handled:Z

.field public final wrapped:Lcom/android/systemui/statusbar/commandline/MultipleArgParam;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/MultipleArgParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/commandline/MultipleArgParam;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/UnaryParamBase;->wrapped:Lcom/android/systemui/statusbar/commandline/MultipleArgParam;

    return-void
.end method


# virtual methods
.method public final describe(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    invoke-interface {p0}, Lcom/android/systemui/statusbar/commandline/Describable;->getShortName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/commandline/Describable;->getShortName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/statusbar/commandline/Describable;->getLongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/UnaryParamBase;->wrapped:Lcom/android/systemui/statusbar/commandline/MultipleArgParam;

    iget-object v0, v0, Lcom/android/systemui/statusbar/commandline/MultipleArgParam;->valueParser:Lcom/android/systemui/statusbar/commandline/ValueParser;

    sget-object v1, Lcom/android/systemui/statusbar/commandline/Type;->INSTANCE:Lcom/android/systemui/statusbar/commandline/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/commandline/Type;->Int:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseInt$1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "<int>"

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/commandline/Type;->Float:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseFloat$1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "<float>"

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/commandline/Type;->String:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseString$1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "<string>"

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/commandline/Type;->Boolean:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseBoolean$1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "<boolean>"

    goto :goto_0

    :cond_4
    const-string v0, "<arg>"

    :goto_0
    const-string v1, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/systemui/statusbar/commandline/Describable;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/systemui/statusbar/commandline/UnaryParamBase$describe$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/commandline/UnaryParamBase$describe$1;-><init>(Landroid/util/IndentingPrintWriter;Lcom/android/systemui/statusbar/commandline/UnaryParamBase;)V

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommandKt;->indented(Landroid/util/IndentingPrintWriter;Lkotlin/jvm/functions/Function0;)V

    :cond_5
    return-void
.end method
