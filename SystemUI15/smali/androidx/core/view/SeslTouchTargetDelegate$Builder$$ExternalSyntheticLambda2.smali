.class public final synthetic Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda2;->f$0:Landroid/view/View;

    iput-object p2, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda2;->f$1:Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda2;->f$0:Landroid/view/View;

    check-cast p1, Landroidx/core/view/SeslTouchTargetDelegate;

    iget-object p0, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda2;->f$1:Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    invoke-virtual {p1, v0, p0}, Landroidx/core/view/SeslTouchTargetDelegate;->addTouchDelegate(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)V

    return-void
.end method
