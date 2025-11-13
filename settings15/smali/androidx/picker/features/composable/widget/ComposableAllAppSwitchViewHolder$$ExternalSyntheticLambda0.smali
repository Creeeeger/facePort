.class public final synthetic Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;

.field public final synthetic f$1:Landroidx/picker/loader/select/SelectableItem;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/AllAppsSelectableItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;

    iput-object p2, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/picker/loader/select/SelectableItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/picker/loader/select/SelectableItem;

    check-cast p0, Landroidx/picker/loader/select/AllAppsSelectableItem;

    invoke-static {v0, p0, p1}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->$r8$lambda$_4LebAPXYsAuXcMKP8fNNRYJavQ(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/AllAppsSelectableItem;Landroid/view/View;)V

    return-void
.end method
