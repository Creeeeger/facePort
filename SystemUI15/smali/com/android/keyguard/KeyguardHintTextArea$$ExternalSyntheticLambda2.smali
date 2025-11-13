.class public final synthetic Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardHintTextArea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardHintTextArea;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardHintTextArea;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
