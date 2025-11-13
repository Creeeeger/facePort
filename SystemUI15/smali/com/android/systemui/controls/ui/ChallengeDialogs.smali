.class public final Lcom/android/systemui/controls/ui/ChallengeDialogs;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

.field public static final STYLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/ChallengeDialogs;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/ChallengeDialogs;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    const v0, 0x7f140560

    sput v0, Lcom/android/systemui/controls/ui/ChallengeDialogs;->STYLE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$addChallengeValue(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/service/controls/actions/ControlAction;Ljava/lang/String;)Landroid/service/controls/actions/ControlAction;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/service/controls/actions/ControlAction;->getTemplateId()Ljava/lang/String;

    move-result-object p0

    instance-of v0, p1, Landroid/service/controls/actions/BooleanAction;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/service/controls/actions/BooleanAction;

    check-cast p1, Landroid/service/controls/actions/BooleanAction;

    invoke-virtual {p1}, Landroid/service/controls/actions/BooleanAction;->getNewState()Z

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/service/controls/actions/BooleanAction;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/service/controls/actions/FloatAction;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/service/controls/actions/FloatAction;

    check-cast p1, Landroid/service/controls/actions/FloatAction;

    invoke-virtual {p1}, Landroid/service/controls/actions/FloatAction;->getNewValue()F

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/service/controls/actions/FloatAction;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/service/controls/actions/CommandAction;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/service/controls/actions/CommandAction;

    invoke-direct {v0, p0, p2}, Landroid/service/controls/actions/CommandAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/service/controls/actions/ModeAction;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/service/controls/actions/ModeAction;

    check-cast p1, Landroid/service/controls/actions/ModeAction;

    invoke-virtual {p1}, Landroid/service/controls/actions/ModeAction;->getNewMode()I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/service/controls/actions/ModeAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\'action\' is not a known type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastAction:Landroid/service/controls/actions/ControlAction;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ControlsUiController"

    const-string p1, "PIN Dialog attempted but no last action is set. Will not show"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;

    sget v4, Lcom/android/systemui/controls/ui/ChallengeDialogs;->STYLE:I

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f131066

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0d0371

    invoke-virtual {v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13105d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;)V

    const/4 p0, -0x1

    invoke-virtual {v3, p0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f13042b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$2;

    invoke-direct {v0, p3}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 p3, -0x2

    invoke-virtual {v3, p3, p0, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p3, 0x7e4

    invoke-virtual {p0, p3}, Landroid/view/Window;->setType(I)V

    :cond_1
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p3, 0x4

    invoke-virtual {p0, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    new-instance p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;

    invoke-direct {p0, v3, p2, p1}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;-><init>(Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;ZZ)V

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object v1, v3

    :goto_0
    return-object v1
.end method
