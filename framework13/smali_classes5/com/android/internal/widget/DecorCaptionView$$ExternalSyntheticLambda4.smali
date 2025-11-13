.class public final synthetic Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/DecorCaptionView;

.field public final synthetic blacklist f$1:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/DecorCaptionView;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/widget/DecorCaptionView;

    iput-object p2, p0, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda4;->f$1:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/widget/DecorCaptionView;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda4;->f$1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/DecorCaptionView;->lambda$showRestartAlertDialog$4$com-android-internal-widget-DecorCaptionView(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method
