.class public final Lcom/android/settings/applications/AppStateSmsPremBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FILTER_APP_PREMIUM_SMS:Lcom/android/settings/applications/AppStateSmsPremBridge$1;


# instance fields
.field public final mSmsManager:Landroid/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/AppStateSmsPremBridge$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateSmsPremBridge;->FILTER_APP_PREMIUM_SMS:Lcom/android/settings/applications/AppStateSmsPremBridge$1;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Landroid/telephony/SmsManager;

    return-void
.end method


# virtual methods
.method public final loadAllExtraInfo()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/settings/applications/AppStateSmsPremBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    new-instance p3, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Landroid/telephony/SmsManager;

    invoke-virtual {p0, p2}, Landroid/telephony/SmsManager;->getPremiumSmsConsent(Ljava/lang/String;)I

    move-result p0

    iput p0, p3, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;->smsState:I

    iput-object p3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
