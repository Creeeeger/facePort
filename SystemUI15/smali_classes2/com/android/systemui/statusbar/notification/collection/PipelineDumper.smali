.class public final Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final ipw:Landroid/util/IndentingPrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->ipw:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->ipw:Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_5

    :cond_2
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/util/Collection;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->ipw:Landroid/util/IndentingPrintWriter;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->ipw:Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    :goto_3
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->ipw:Landroid/util/IndentingPrintWriter;

    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_8

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumperKt;->getBareClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    const-string v5, "\" ("

    const-string v6, ")"

    invoke-static {v4, v1, v5, v3, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_8
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumperKt;->getBareClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;

    if-eqz v0, :cond_a

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;

    :cond_a
    if-eqz v2, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->ipw:Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_1
    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;->dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0

    :cond_b
    :goto_5
    return-void
.end method

.method public final dump(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->ipw:Landroid/util/IndentingPrintWriter;

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;)V

    return-void
.end method

.method public final println(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->ipw:Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method
