.class public final Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$PanelExpandedFractionProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/subscreen/SubRoom;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$PanelExpandedFractionProvider;->this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$PanelExpandedFractionProvider;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V

    return-void
.end method


# virtual methods
.method public final getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeListener()V
    .locals 0

    return-void
.end method

.method public final request(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setListener(Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$PanelExpandedFractionProvider;->this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenStateChangedListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    return-void
.end method
