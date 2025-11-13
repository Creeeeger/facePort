.class public final Lcom/android/settings/network/MobileNetworkIntentConverter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final mCachedClassName:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final sPotentialActions:[Ljava/lang/String;

.field public static final sTargetComponent:Landroid/content/ComponentName;


# instance fields
.field public final mAppContext:Landroid/content/Context;

.field public final mComponent:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lcom/android/settings/Settings$MobileNetworkActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings"

    invoke-static {v1, v0}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/MobileNetworkIntentConverter;->sTargetComponent:Landroid/content/ComponentName;

    const-string v6, "android.telephony.ims.action.SHOW_CAPABILITY_DISCOVERY_OPT_IN"

    const-string v7, "android.settings.SEARCH_RESULT_TRAMPOLINE"

    const/4 v1, 0x0

    const-string v2, "android.intent.action.MAIN"

    const-string v3, "android.settings.NETWORK_OPERATOR_SETTINGS"

    const-string v4, "android.settings.DATA_ROAMING_SETTINGS"

    const-string v5, "android.settings.MMS_MESSAGE_SETTING"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/MobileNetworkIntentConverter;->sPotentialActions:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/settings/network/MobileNetworkIntentConverter;->mCachedClassName:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkIntentConverter;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public static extractArguments(ILandroid/content/Intent;)Landroid/os/Bundle;
    .locals 2

    const-string v0, ":settings:show_fragment_args"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v0, "intent"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "android.provider.extra.SUB_ID"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public static rePackIntent(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    sget-object p0, Lcom/android/settings/network/MobileNetworkIntentConverter;->sTargetComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p0, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_args"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final apply(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkIntentConverter;->isAttachedToExposedComponents()Z

    move-result v2

    const-string v3, "MobileNetworkIntentConverter"

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-nez p1, :cond_0

    :goto_0
    move-object p1, v4

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    const-string v2, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v2, "Intent URI corrupted"

    invoke-static {v3, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/settings/network/MobileNetworkIntentConverter;->sPotentialActions:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda16;

    invoke-direct {v6, v2}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_c

    :goto_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.provider.extra.SUB_ID"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v6

    const-string v7, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "android.settings.SEARCH_RESULT_TRAMPOLINE"

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string v7, "android.settings.MMS_MESSAGE_SETTING"

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v2, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;

    const/16 v4, 0x8

    invoke-direct {v2, p0, v5, v4}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;II)V

    invoke-interface {v6, v2}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    new-instance v4, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda4;

    const/4 v6, 0x1

    invoke-direct {v4, p0, v6}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;I)V

    invoke-interface {v2, v4}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    new-instance v4, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p1, v6}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;Landroid/content/Intent;I)V

    invoke-interface {v2, v4}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    new-instance v4, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;II)V

    invoke-interface {v2, v4}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    goto/16 :goto_4

    :cond_5
    const-string v7, "android.telephony.ims.action.SHOW_CAPABILITY_DISCOVERY_OPT_IN"

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v2, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v5, v4}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;II)V

    invoke-interface {v6, v2}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    new-instance v4, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;

    const/4 v6, 0x3

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;II)V

    invoke-interface {v2, v4}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    new-instance v4, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;

    const/4 v6, 0x2

    invoke-direct {v4, p0, p1, v6}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;Landroid/content/Intent;I)V

    invoke-interface {v2, v4}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    new-instance v4, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;

    const/4 v6, 0x4

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;II)V

    invoke-interface {v2, v4}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    goto :goto_4

    :cond_6
    sget-object v7, Lcom/android/settings/network/MobileNetworkIntentConverter;->sTargetComponent:Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/android/settings/network/MobileNetworkIntentConverter;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v7

    if-nez v7, :cond_8

    if-eqz v2, :cond_7

    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const-string v2, "Support default actions direct to this component"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;

    const/4 v4, 0x5

    invoke-direct {v2, p0, v5, v4}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;II)V

    invoke-interface {v6, v2}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    new-instance v4, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;

    const/4 v6, 0x0

    invoke-direct {v4, p0, p1, v6}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;Landroid/content/Intent;I)V

    invoke-interface {v2, v4}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    new-instance v4, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v6}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;I)V

    invoke-interface {v2, v4}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    new-instance v4, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;

    const/4 v6, 0x6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;II)V

    invoke-interface {v2, v4}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    goto :goto_4

    :cond_8
    return-object v4

    :cond_9
    :goto_3
    new-instance v2, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v5, v4}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;II)V

    invoke-interface {v6, v2}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    new-instance v4, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;

    const/4 v6, 0x3

    invoke-direct {v4, p0, p1, v6}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;Landroid/content/Intent;I)V

    invoke-interface {v2, v4}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    new-instance v4, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;

    const/4 v6, 0x7

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;II)V

    invoke-interface {v2, v4}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkIntentConverter;->isAttachedToExposedComponents()Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda4;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/network/MobileNetworkIntentConverter;I)V

    invoke-interface {v2, v4}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    :cond_a
    invoke-interface {v2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " intent conversion: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ns"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-object p1

    :cond_c
    return-object v4
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->apply(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getFragmentTitle(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1, p2}, Lcom/android/settings/network/SubscriptionUtil;->getSubscriptionOrDefault(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isAttachedToExposedComponents()Z
    .locals 1

    sget-object v0, Lcom/android/settings/network/MobileNetworkIntentConverter;->sTargetComponent:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public mayShowContactDiscoveryDialog(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isContactDiscoveryVisible(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Landroid/telephony/ims/ImsManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/ImsManager;

    invoke-static {p0, p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isContactDiscoveryEnabled(Landroid/telephony/ims/ImsManager;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateFragment(ILandroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, ":settings:show_fragment_title"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->getFragmentTitle(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-object p0, Lcom/android/settings/network/MobileNetworkIntentConverter;->mCachedClassName:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, Lcom/android/settings/network/MobileNetworkIntentConverter;->sTargetComponent:Landroid/content/ComponentName;

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string p2, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Cannot get Metadata for: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/android/settings/network/MobileNetworkIntentConverter;->sTargetComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileNetworkIntentConverter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_0
    const-string p0, ":settings:show_fragment"

    invoke-virtual {p3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
