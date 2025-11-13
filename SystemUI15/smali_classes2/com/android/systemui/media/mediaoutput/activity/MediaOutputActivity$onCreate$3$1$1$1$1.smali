.class final Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $isCover:Z

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1$1$1;->$isCover:Z

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1$1$1;->$isCover:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const p2, -0x6d59954b

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v1, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1$1$1$1;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1$1$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/mediaoutput/compose/CoverScreenKt;->CoverScreen(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :cond_2
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const p0, -0x6d5994e1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v7, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1$1$1$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1$1$1$2;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x6

    move-object v10, p1

    invoke-static/range {v7 .. v12}, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt;->PhoneScreen(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
