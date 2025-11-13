.class public final synthetic Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    sget p1, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/samsung/android/sdk/command/action/BooleanAction;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/action/BooleanAction;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->setAction(Lcom/samsung/android/sdk/command/action/CommandAction;)V

    return-void
.end method
