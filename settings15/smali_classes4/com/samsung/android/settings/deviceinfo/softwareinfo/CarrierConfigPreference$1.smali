.class public final Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->setUpdateButtonVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p1, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.samsung.ims.entitlementconfig.provider/config/force_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference$1$1;-><init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const p0, 0x88b8

    int-to-long v3, p0

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->setUpdateButtonVisibility(I)V

    :goto_0
    return-void
.end method
