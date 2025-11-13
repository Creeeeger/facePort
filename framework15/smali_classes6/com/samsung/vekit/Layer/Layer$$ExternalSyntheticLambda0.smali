.class public final synthetic Lcom/samsung/vekit/Layer/Layer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/vekit/Item/Item;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/vekit/Item/Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Layer/Layer$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/vekit/Item/Item;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/vekit/Item/Item;

    check-cast p1, Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-static {v0, p1}, Lcom/samsung/vekit/Layer/Layer;->lambda$checkValidItem$0(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Common/Type/ItemType;)Z

    move-result p1

    return p1
.end method
