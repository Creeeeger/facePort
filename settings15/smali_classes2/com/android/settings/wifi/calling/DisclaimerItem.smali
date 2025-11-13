.class public abstract Lcom/android/settings/wifi/calling/DisclaimerItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field public final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field public final mContext:Landroid/content/Context;

.field public final mSubId:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method


# virtual methods
.method public abstract getMessageId()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPrefKey()Ljava/lang/String;
.end method

.method public abstract getTitleId()I
.end method

.method public final logd(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldShow()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mContext:Landroid/content/Context;

    const-string v2, "wfc_disclaimer_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "shouldShow: false due to a user has already agreed."

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v0, "shouldShow: true"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
