.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initButton$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $this_apply:Landroid/widget/RadioButton;

.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;Landroid/widget/RadioButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initButton$1$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initButton$1$1;->$this_apply:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initButton$1$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initButton$1$1;->$this_apply:Landroid/widget/RadioButton;

    invoke-static {p1, p0, p2}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->access$onCheckedChanged(Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;Landroid/widget/RadioButton;Z)V

    return-void
.end method
