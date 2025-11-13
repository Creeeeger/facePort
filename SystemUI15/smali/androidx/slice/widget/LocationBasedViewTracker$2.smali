.class public final Landroidx/slice/widget/LocationBasedViewTracker$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final selectView(Landroid/view/View;)V
    .locals 1

    const/16 p0, 0x40

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    return-void
.end method
