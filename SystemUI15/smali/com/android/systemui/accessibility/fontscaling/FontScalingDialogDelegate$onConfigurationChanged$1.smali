.class public final Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onConfigurationChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onConfigurationChanged$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onConfigurationChanged$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    iget-object v0, v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const v2, 0x7f140482

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onConfigurationChanged$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    iget-object v0, v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->doneButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    const v2, 0x7f140748

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextAppearance(I)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onConfigurationChanged$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->doneButton:Landroid/widget/Button;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
