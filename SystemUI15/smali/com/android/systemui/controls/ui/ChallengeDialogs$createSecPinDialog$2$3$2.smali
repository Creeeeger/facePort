.class public final Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $editText:Landroid/widget/EditText;

.field public final synthetic $useAlphaCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3$2;->$editText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3$2;->$useAlphaCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    sget-object p1, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3$2;->$editText:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3$2;->$useAlphaCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    const/16 p0, 0x81

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x12

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return-void
.end method
