.class final Lcom/android/systemui/controls/ui/ControlViewHolder$secControlViewHolder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$secControlViewHolder$2;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    new-instance v6, Lcom/android/systemui/controls/ui/SecControlViewHolder;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$secControlViewHolder$2;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/controls/ui/SecControlViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v6
.end method
