.class public final synthetic Lcom/samsung/android/settings/development/ImsDataChannelPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/development/ImsDataChannelPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/development/ImsDataChannelPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/development/ImsDataChannelPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/development/ImsDataChannelPreferenceController;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/development/ImsDataChannelPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/development/ImsDataChannelPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/development/ImsDataChannelPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
