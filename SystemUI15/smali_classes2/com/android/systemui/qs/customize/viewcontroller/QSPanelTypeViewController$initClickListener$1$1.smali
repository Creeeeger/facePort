.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initClickListener$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initClickListener$1$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0e26

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initClickListener$1$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->newButton:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initClickListener$1$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->oldButton:Landroid/widget/RadioButton;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    xor-int/lit8 p0, p1, 0x1

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
