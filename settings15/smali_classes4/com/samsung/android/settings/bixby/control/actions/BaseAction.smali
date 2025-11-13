.class public Lcom/samsung/android/settings/bixby/control/actions/BaseAction;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/bixby/control/Control;


# instance fields
.field public MAX_INDEX:I

.field public MIN_INDEX:I

.field public final mActionKey:Ljava/lang/String;

.field public final mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

.field public final mExtraBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MAX_INDEX:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MIN_INDEX:I

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->mActionKey:Ljava/lang/String;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->mExtraBundle:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->mExtraBundle:Landroid/os/Bundle;

    iget-object v1, p2, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;->key:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final excuteAction(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

    iget-object v0, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/ActionCommand;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/bixby/ActionCommand;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->mActionKey:Ljava/lang/String;

    invoke-virtual {v0, p2, p1, p0}, Lcom/samsung/android/settings/bixby/ActionCommand;->execute(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final execute(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

    iget-boolean p1, p1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mIsCheckSupport:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string/jumbo v0, "supported"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->excuteAction(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->executeInternal()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public executeInternal()Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "none"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->excuteAction(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
