.class public abstract synthetic Landroidx/compose/foundation/ClickableKt$clickable$2$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static m(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    return-object v0
.end method
