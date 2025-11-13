.class public final synthetic Landroidx/fragment/app/SpecialEffectsController$Operation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    const-string/jumbo v0, "this$0"

    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->cancel()V

    return-void
.end method
