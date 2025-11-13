.class public final synthetic Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/util/Supplier;


# instance fields
.field public final synthetic f$0:Landroidx/picker/loader/select/SelectableItem;

.field public final synthetic f$1:Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/loader/select/SelectableItem;

    iput-object p2, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/loader/select/SelectableItem;

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;

    invoke-static {v0, p0}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->$r8$lambda$xPZ_mowdK1JMxnxwgMjlZMaPaHo(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
