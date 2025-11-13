.class public final synthetic Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->toggleCaptionBarButtonSet()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->setTaskFocusState(Z)V

    return-void
.end method
