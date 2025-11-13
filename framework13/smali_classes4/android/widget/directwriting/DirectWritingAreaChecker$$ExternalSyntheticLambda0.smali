.class public final synthetic Landroid/widget/directwriting/DirectWritingAreaChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/directwriting/DirectWritingAreaChecker;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/directwriting/DirectWritingAreaChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker$$ExternalSyntheticLambda0;->f$0:Landroid/widget/directwriting/DirectWritingAreaChecker;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingAreaChecker$$ExternalSyntheticLambda0;->f$0:Landroid/widget/directwriting/DirectWritingAreaChecker;

    check-cast p1, Landroid/widget/directwriting/WritingView;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Landroid/widget/directwriting/DirectWritingAreaChecker;->lambda$getVisibleWritingViewsIfNeeded$0$android-widget-directwriting-DirectWritingAreaChecker(Landroid/widget/directwriting/WritingView;Ljava/lang/Boolean;)V

    return-void
.end method
