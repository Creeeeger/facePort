.class public interface abstract Lcom/android/systemui/statusbar/commandline/Describable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public describe(Landroid/util/IndentingPrintWriter;)V
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

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-interface {p0}, Lcom/android/systemui/statusbar/commandline/Describable;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/commandline/Describable$describe$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/commandline/Describable$describe$1;-><init>(Landroid/util/IndentingPrintWriter;Lcom/android/systemui/statusbar/commandline/Describable;)V

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommandKt;->indented(Landroid/util/IndentingPrintWriter;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    return-void
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getLongName()Ljava/lang/String;
.end method

.method public abstract getShortName()Ljava/lang/String;
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/commandline/Describable;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/commandline/Describable;->getLongName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
