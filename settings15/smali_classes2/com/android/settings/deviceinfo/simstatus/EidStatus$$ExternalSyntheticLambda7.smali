.class public final synthetic Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/telephony/euicc/EuiccManager;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/euicc/EuiccManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/euicc/EuiccManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/euicc/EuiccManager;

    check-cast p1, Landroid/telephony/UiccCardInfo;

    invoke-virtual {p1}, Landroid/telephony/UiccCardInfo;->getEid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/euicc/EuiccManager;->createForCardId(I)Landroid/telephony/euicc/EuiccManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->getEid()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
