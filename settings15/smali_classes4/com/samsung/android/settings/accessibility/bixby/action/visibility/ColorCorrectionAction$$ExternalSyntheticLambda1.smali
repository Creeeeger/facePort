.class public final synthetic Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;

    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "false"

    const-string/jumbo p2, "result"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;->getColorCorrectionType(Landroid/content/Context;)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;->COLOR_CORRECTION_OPTION:[Ljava/lang/String;

    aget-object p0, p0, p1

    const-string/jumbo p1, "true"

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->paramValue:Ljava/lang/String;

    const-string p2, "accessibilityMenu"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "menuValue"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
