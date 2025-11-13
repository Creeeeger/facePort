.class public final Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder$bindData$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $ci:Lcom/android/systemui/controls/ControlInterface;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;Lcom/android/systemui/controls/ControlInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder$bindData$1;->$ci:Lcom/android/systemui/controls/ControlInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;

    iget-object v0, p1, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->favorite:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->updateFavorite(Z)V

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;

    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder$bindData$1;->$ci:Lcom/android/systemui/controls/ControlInterface;

    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->favorite:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
