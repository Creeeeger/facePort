.class public final synthetic Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    iput-object p2, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    sget v0, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/android/sdk/command/action/StringAction;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/action/StringAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->setAction(Lcom/samsung/android/sdk/command/action/CommandAction;)V

    return-void
.end method
