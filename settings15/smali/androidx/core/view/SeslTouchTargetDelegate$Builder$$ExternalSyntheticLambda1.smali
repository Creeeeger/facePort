.class public final synthetic Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iput-object p2, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda1;->f$1:Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    check-cast p1, Landroidx/core/view/SeslTouchTargetDelegate;

    iget-object p0, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda1;->f$1:Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    invoke-virtual {p1, v0, p0}, Landroidx/core/view/SeslTouchTargetDelegate;->addTouchDelegate(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)V

    return-void
.end method
