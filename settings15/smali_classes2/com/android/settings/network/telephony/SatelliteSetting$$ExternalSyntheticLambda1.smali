.class public final synthetic Lcom/android/settings/network/telephony/SatelliteSetting$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/SatelliteSetting;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/SatelliteSetting;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/telephony/SatelliteSetting;

    iput-object p2, p0, Lcom/android/settings/network/telephony/SatelliteSetting$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/telephony/SatelliteSetting;

    iget-object p0, p0, Lcom/android/settings/network/telephony/SatelliteSetting$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/settings/network/telephony/SatelliteSetting;->mActivity:Landroidx/fragment/app/FragmentActivity;

    aget-object p0, p0, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/android/settings/network/telephony/SatelliteSetting;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
