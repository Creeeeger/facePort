.class public final Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;

.field public final synthetic val$rightLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity$1;->val$rightLabel:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity$1;->val$rightLabel:Landroid/widget/TextView;

    sget p3, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method
