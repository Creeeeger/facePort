.class public final synthetic Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Button;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Button;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
