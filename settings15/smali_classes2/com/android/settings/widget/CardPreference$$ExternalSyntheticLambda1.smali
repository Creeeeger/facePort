.class public final synthetic Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda1;->f$0:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-boolean p0, p0, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda1;->f$0:Z

    check-cast p1, Landroid/widget/Button;

    packed-switch v0, :pswitch_data_0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :pswitch_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
