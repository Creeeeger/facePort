.class Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;
.super Ljava/lang/Object;
.source "SecurityAndPrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusCommandFactory"
.end annotation


# instance fields
.field private onCompleteListenerCheckGPPAndGetStatus:Lcom/google/android/gms/tasks/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;",
            ">;"
        }
    .end annotation
.end field

.field private onCompleteListenerGetHarmfulApps:Lcom/google/android/gms/tasks/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;",
            ">;"
        }
    .end annotation
.end field

.field statusCommandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;


# direct methods
.method public static synthetic $r8$lambda$7RVPqBVh7WgErCIU1ZOdztdQzis(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$initStatusCommandMap$7(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9tQDPH44bvI3DXVlPgv-c-RdSKw(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$initStatusCommandMap$11(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EbXQ3jxogMwDAUZda1lso34hj1o(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$initStatusCommandMap$13(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GTLY9tKng9XEb02h3lbhlE1bHsA(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$initStatusCommandMap$6(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LyRa6Z3u4du_3z4Fq9iZ6aMfPNQ(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$initStatusCommandMap$14(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TfCxXttBL0qituiLXIRsxZdT7Aw(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$initStatusCommandMap$15(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VqvpPOfZ8VFmFP8ZuHZ11uBfixs(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$initStatusCommandMap$5(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YZ0JFZANVtP6tKmNeB9JbuRS-2A(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$initStatusCommandMap$2(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yecqcx6G4gqmUi7yfnU7PZXqRCc(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$initStatusCommandMap$12(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c63SU9mH2zI1dDAXa0oT6gI6e08(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$initStatusCommandMap$4(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eD7BUFhwyTVBniO8cJZ9ae1f348(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$initStatusCommandMap$8(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jlAuU7eCnBzjGrDz_Sb62Qmfkwk(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$initStatusCommandMap$10(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q2uhMPvM9ddkGKgiYWNnbZexNkM(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$new$0(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qFcvuOklkzcZF2-HQz0pAt5svXw(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$initStatusCommandMap$3(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uIqA0Ukl-1gvXicjqobF6Y9DQ1E(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$new$1(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ztaOGRC8Jy5e0ItnIaEqY9OieBM(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->lambda$initStatusCommandMap$9(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V
    .locals 0

    .line 934
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    .line 845
    new-instance p1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;)V

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->onCompleteListenerGetHarmfulApps:Lcom/google/android/gms/tasks/OnCompleteListener;

    .line 894
    new-instance p1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;)V

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->onCompleteListenerCheckGPPAndGetStatus:Lcom/google/android/gms/tasks/OnCompleteListener;

    .line 935
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->initStatusCommandMap()V

    return-void
.end method

.method private initStatusCommandMap()V
    .locals 3

    .line 939
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;)V

    const-string v2, "key_lock_screen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;)V

    const-string v2, "key_screen_lock_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda8;-><init>()V

    const-string v2, "key_fingerprints"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;)V

    const-string v2, "key_accounts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;)V

    const-string v2, "key_google_acc_checkup"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;)V

    const-string v2, "key_find_my_mobile"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;)V

    const-string v2, "key_allow_this_phone_to_be_found"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda13;-><init>()V

    const-string v2, "key_offline_finding"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;)V

    const-string v2, "key_updates"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;)V

    const-string v2, "key_security_update"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;)V

    const-string v2, "key_app_security"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;)V

    const-string v2, "key_device_protection"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;)V

    const-string v2, "key_google_play_protect"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;)V

    const-string p0, "key_google_play_system_update"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initStatusCommandMap$10(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    .line 968
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmUpdatesMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method private synthetic lambda$initStatusCommandMap$11(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsSecurityUpdateInstalled(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsSecurityUpdateElapsed(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method private synthetic lambda$initStatusCommandMap$12(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsGPPSupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->onCompleteListenerCheckGPPAndGetStatus:Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getGPPStatus(Landroid/content/Context;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    goto :goto_0

    .line 977
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmDPMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initStatusCommandMap$13(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    .line 982
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmDPMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method private synthetic lambda$initStatusCommandMap$14(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    .line 985
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsGPPSupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 986
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->onCompleteListenerCheckGPPAndGetStatus:Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getGPPStatus(Landroid/content/Context;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initStatusCommandMap$15(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    .line 991
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmGPSuMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method private synthetic lambda$initStatusCommandMap$2(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    .line 940
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsScreenLockEnabled(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 939
    :goto_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method private synthetic lambda$initStatusCommandMap$3(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    .line 943
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsScreenLockEnabled(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method private static synthetic lambda$initStatusCommandMap$4(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 1

    .line 946
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->ARROW:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method private synthetic lambda$initStatusCommandMap$5(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsSamsungAccountSupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$mprepareAccountsMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    goto :goto_0

    .line 952
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmGoogleAccountMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initStatusCommandMap$6(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    .line 957
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmGoogleAccountMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method private synthetic lambda$initStatusCommandMap$7(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    .line 960
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsFMMEnabled(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method private synthetic lambda$initStatusCommandMap$8(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    .line 963
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsFMMEnabled(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method private static synthetic lambda$initStatusCommandMap$9(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 1

    .line 966
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->ARROW:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/google/android/gms/tasks/Task;)V
    .locals 10

    .line 846
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 847
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 849
    invoke-virtual {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;->getHarmfulAppsList()Ljava/util/List;

    move-result-object v1

    .line 850
    iget-object v2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmSecCardsPreference(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->setGooglePlayProtectThreatCount(I)V

    .line 852
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "GPP"

    const/4 v4, 0x1

    const-string v5, "key_app_security"

    const-string v6, "key_google_play_protect"

    if-eqz v2, :cond_6

    .line 853
    invoke-virtual {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;->getLastScanTimeMs()J

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmp-long p1, v1, v7

    if-nez p1, :cond_0

    .line 855
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->security_dashboard_summary_status_scan_for_malware:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 857
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {v7}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$string;->security_dashboard_summary_status_app_scanned:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v1, v2, v9}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getDate(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 859
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsGPPSupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 860
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    .line 861
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmStatusExpendableMenus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmOverallStatusMap(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsDPSupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 865
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmDPMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p1, v1, :cond_3

    .line 866
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    goto/16 :goto_1

    .line 867
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmDPMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p1, v1, :cond_4

    .line 868
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    goto/16 :goto_1

    .line 869
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmDPMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p1, v1, :cond_8

    .line 870
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    goto/16 :goto_1

    .line 873
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    goto/16 :goto_1

    .line 876
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/android/settings/R$plurals;->security_dashboard_malware_apps_detected:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v7, v8, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 877
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsGPPSupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 878
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    .line 879
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmStatusCards(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Set;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_GPP_MALWARE_DETECTED:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 880
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmStatusExpendableMenus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmOverallStatusMap(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsAppSecuritySupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 884
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    .line 888
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmSecStatusPreference(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->isScanning()Z

    move-result p1

    if-nez p1, :cond_9

    .line 889
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$msetupStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Z)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$new$1(Lcom/google/android/gms/tasks/Task;)V
    .locals 5

    .line 896
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 897
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;

    .line 898
    invoke-virtual {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;->isVerifyAppsEnabled()Z

    move-result p1

    const-string v0, "GPP"

    const-string v1, "key_google_play_protect"

    const-string v2, "key_app_security"

    if-eqz p1, :cond_4

    .line 899
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->onCompleteListenerGetHarmfulApps:Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-static {p1, v3}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getHarmfulAppsList(Landroid/content/Context;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    .line 900
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsGPPSupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 901
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmStatusExpendableMenus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    sget-object v3, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmOverallStatusMap(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsDPSupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 905
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmDPMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p1, v0, :cond_1

    .line 906
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    goto/16 :goto_0

    .line 907
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmDPMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p1, v0, :cond_2

    .line 908
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    goto/16 :goto_0

    .line 909
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmDPMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p1, v0, :cond_7

    .line 910
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    goto/16 :goto_0

    .line 913
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    sget-object p1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    goto/16 :goto_0

    .line 916
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->security_dashboard_summary_status_off:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 917
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsGPPSupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 918
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    sget-object v3, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    .line 919
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmStatusCards(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Set;

    move-result-object p1

    sget-object v4, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_TURN_ON_GPP:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 920
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmStatusExpendableMenus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmOverallStatusMap(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmIsAppSecuritySupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 925
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    .line 927
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmSecStatusPreference(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->isScanning()Z

    move-result p1

    if-nez p1, :cond_7

    .line 928
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$msetupStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Z)V

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public getStatusCommand(Ljava/lang/String;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;",
            ">;"
        }
    .end annotation

    .line 995
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->statusCommandMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
