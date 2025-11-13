.class public final Lcom/android/systemui/controls/management/adapter/SecStructureHolder$bindData$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/SecStructureHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/SecStructureHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/SecStructureHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/SecStructureHolder;

    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->structureAll:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/SecStructureHolder;

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->structureAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->structureName:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
