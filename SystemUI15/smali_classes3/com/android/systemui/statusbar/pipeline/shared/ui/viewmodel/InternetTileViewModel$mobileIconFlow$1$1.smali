.class final Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;

    check-cast p2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;

    check-cast p3, Ljava/lang/CharSequence;

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;

    invoke-direct {v0, p0, p4}, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;->L$2:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    instance-of v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->Companion:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->context:Landroid/content/Context;

    const v4, 0x7f130c12

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    goto :goto_0

    :goto_1
    new-instance p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Active;

    new-instance v5, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/SignalIcon;

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;->carrierNetworkChange:Z

    iget v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;->numberOfLevels:I

    if-eqz v1, :cond_3

    sget v0, Lcom/android/settingslib/graph/SignalDrawable;->ICON_RES:I

    shl-int/lit8 v0, v3, 0x8

    const/high16 v1, 0x30000

    or-int/2addr v0, v1

    goto :goto_2

    :cond_3
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;->showExclamationMark:Z

    iget v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;->level:I

    invoke-static {v0, v3, v1}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result v0

    :goto_2
    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/SignalIcon;-><init>(I)V

    new-instance v6, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->internetLabel:Ljava/lang/String;

    invoke-direct {v7, p0}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Active;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/common/shared/model/Text;Ljava/lang/Integer;Lcom/android/systemui/plugins/qs/QSTile$Icon;Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/common/shared/model/ContentDescription;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_4
    instance-of p1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/android/systemui/common/shared/model/ContentDescription;->Companion:Lcom/android/systemui/common/shared/model/ContentDescription$Companion;

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget-object v1, v1, Lcom/android/systemui/common/shared/model/Icon$Resource;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/systemui/common/shared/model/ContentDescription$Companion;->loadContentDescription(Lcom/android/systemui/common/shared/model/ContentDescription;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Active;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget v0, v0, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    invoke-direct {v8, v4}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel$mobileIconFlow$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->internetLabel:Ljava/lang/String;

    invoke-direct {v9, p0}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Active;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/common/shared/model/Text;Ljava/lang/Integer;Lcom/android/systemui/plugins/qs/QSTile$Icon;Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/common/shared/model/ContentDescription;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    return-object p1

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
