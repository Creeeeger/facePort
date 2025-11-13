.class public final synthetic Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    sget p3, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/command/action/JSONStringAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->setAction(Lcom/samsung/android/sdk/command/action/CommandAction;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "ActionControlDialog"

    const-string p1, "JSONStringAction requires NonNull value"

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
