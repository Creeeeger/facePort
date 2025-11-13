.class public final synthetic Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

.field public final synthetic blacklist f$1:Landroid/os/Handler;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;Landroid/os/Handler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda1;->f$1:Landroid/os/Handler;

    iput p3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda1;->f$1:Landroid/os/Handler;

    iget v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->lambda$setViewAttrs$4$com-samsung-android-globalactions-presentation-view-GlobalActionsContentItemView(Landroid/os/Handler;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
