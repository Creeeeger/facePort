.class public final synthetic Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Landroid/view/View;

.field public final synthetic f$5:Landroid/view/View;

.field public final synthetic f$6:Landroid/view/View;

.field public final synthetic f$7:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    iput p9, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    iput p2, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    iput-object p5, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$4:Landroid/view/View;

    iput-object p6, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$5:Landroid/view/View;

    iput-object p7, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$6:Landroid/view/View;

    iput-object p8, p0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$7:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    iget v4, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$1:I

    iget v3, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$2:I

    iget-object v5, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    iget-object v6, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$4:Landroid/view/View;

    iget-object v7, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$5:Landroid/view/View;

    iget-object v8, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$6:Landroid/view/View;

    iget-object v9, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$7:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    if-ne v4, v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq v4, v0, :cond_1

    if-nez v4, :cond_2

    :cond_1
    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v11, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;

    iget v13, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$1:I

    iget v12, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$2:I

    iget-object v14, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    iget-object v15, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$4:Landroid/view/View;

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$5:Landroid/view/View;

    iget-object v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$6:Landroid/view/View;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion$$ExternalSyntheticLambda1;->f$7:Landroid/view/View;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    if-eq v13, v3, :cond_4

    const/4 v3, 0x3

    if-ne v13, v3, :cond_3

    goto :goto_1

    :cond_3
    if-nez v13, :cond_5

    const/16 v18, 0x0

    move-object v13, v14

    move-object v14, v15

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    invoke-virtual/range {v11 .. v18}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v19, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v0

    invoke-virtual/range {v11 .. v19}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
