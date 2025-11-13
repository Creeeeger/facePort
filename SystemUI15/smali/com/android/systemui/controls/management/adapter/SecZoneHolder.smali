.class public final Lcom/android/systemui/controls/management/adapter/SecZoneHolder;
.super Lcom/android/systemui/controls/management/adapter/SecHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final zone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/SecHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0303

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-object v0, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x7f0700af

    invoke-static {v0, p1, v1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->updateFontSize$default(Lcom/android/systemui/controls/util/ControlsUtil$Companion;Landroid/widget/TextView;I)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecZoneHolder;->zone:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/SecElementWrapper;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/management/model/SecZoneNameWrapper;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecZoneHolder;->zone:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/systemui/controls/management/model/SecZoneNameWrapper;->zoneName:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
