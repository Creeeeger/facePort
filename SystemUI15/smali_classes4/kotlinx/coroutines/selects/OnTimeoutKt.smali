.class public abstract Lkotlinx/coroutines/selects/OnTimeoutKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final onTimeout(Lkotlinx/coroutines/selects/SelectImplementation;JLkotlin/jvm/functions/Function1;)V
    .locals 15

    new-instance v1, Lkotlinx/coroutines/selects/OnTimeout;

    move-wide/from16 v2, p1

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/selects/OnTimeout;-><init>(J)V

    new-instance v6, Lkotlinx/coroutines/selects/SelectClause0Impl;

    sget-object v2, Lkotlinx/coroutines/selects/OnTimeout$selectClause$1;->INSTANCE:Lkotlinx/coroutines/selects/OnTimeout$selectClause$1;

    const/4 v0, 0x3

    invoke-static {v0, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/selects/SelectClause0Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    iget-object v11, v6, Lkotlinx/coroutines/selects/SelectClause0Impl;->processResFunc:Lkotlin/jvm/functions/Function3;

    sget-object v12, Lkotlinx/coroutines/selects/SelectKt;->PARAM_CLAUSE_0:Lkotlinx/coroutines/internal/Symbol;

    iget-object v14, v6, Lkotlinx/coroutines/selects/SelectClause0Impl;->onCancellationConstructor:Lkotlin/jvm/functions/Function3;

    iget-object v9, v6, Lkotlinx/coroutines/selects/SelectClause0Impl;->clauseObject:Ljava/lang/Object;

    iget-object v10, v6, Lkotlinx/coroutines/selects/SelectClause0Impl;->regFunc:Lkotlin/jvm/functions/Function3;

    move-object v7, v0

    move-object v8, p0

    move-object/from16 v13, p3

    invoke-direct/range {v7 .. v14}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    const/4 v1, 0x0

    move-object v2, p0

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/selects/SelectImplementation;->register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    return-void
.end method
