.class public final Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$updateFontScale$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$updateFontScale$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$updateFontScale$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->doneButton:Landroid/widget/Button;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
