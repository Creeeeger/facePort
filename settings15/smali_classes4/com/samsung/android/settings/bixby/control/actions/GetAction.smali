.class public final Lcom/samsung/android/settings/bixby/control/actions/GetAction;
.super Lcom/samsung/android/settings/bixby/control/actions/BaseAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public RANGE_FLAG:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;-><init>(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/bixby/control/actions/GetAction;->RANGE_FLAG:I

    return-void
.end method


# virtual methods
.method public final executeInternal()Landroid/os/Bundle;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->mExtraBundle:Landroid/os/Bundle;

    const-string v1, "get"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->excuteAction(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

    iget-object v3, v3, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "bixby.settingsApp.Get_FontSize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/android/settings/bixby/control/actions/GetAction;->RANGE_FLAG:I

    :goto_0
    iget p0, p0, Lcom/samsung/android/settings/bixby/control/actions/GetAction;->RANGE_FLAG:I

    add-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "GetAction"

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/android/settings/bixby/utils/BixbyUtils;->buildActionResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
