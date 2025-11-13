.class public final Lcom/android/settings/network/MobileDataEnabledListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mClient:Lcom/android/settings/network/MobileDataEnabledListener$Client;

.field public final mContext:Landroid/content/Context;

.field public mListener:Lcom/android/settings/network/MobileDataEnabledListener$1;

.field public mListenerForSubId:Lcom/android/settings/network/MobileDataEnabledListener$1;

.field public mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mClient:Lcom/android/settings/network/MobileDataEnabledListener$Client;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    return-void
.end method


# virtual methods
.method public final start(I)V
    .locals 3

    iput p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    iget-object p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListener:Lcom/android/settings/network/MobileDataEnabledListener$1;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/settings/network/MobileDataEnabledListener$1;

    iget-object v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/MobileDataEnabledListener$1;-><init>(Lcom/android/settings/network/MobileDataEnabledListener;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListener:Lcom/android/settings/network/MobileDataEnabledListener$1;

    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListenerForSubId:Lcom/android/settings/network/MobileDataEnabledListener$1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListenerForSubId:Lcom/android/settings/network/MobileDataEnabledListener$1;

    :cond_1
    iget p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    new-instance p1, Lcom/android/settings/network/MobileDataEnabledListener$1;

    iget-object v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mobile_data"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener$1;-><init>(Lcom/android/settings/network/MobileDataEnabledListener;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListenerForSubId:Lcom/android/settings/network/MobileDataEnabledListener$1;

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListener:Lcom/android/settings/network/MobileDataEnabledListener$1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    iput-object v1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListener:Lcom/android/settings/network/MobileDataEnabledListener$1;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListenerForSubId:Lcom/android/settings/network/MobileDataEnabledListener$1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    iput-object v1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mListenerForSubId:Lcom/android/settings/network/MobileDataEnabledListener$1;

    :cond_1
    return-void
.end method
