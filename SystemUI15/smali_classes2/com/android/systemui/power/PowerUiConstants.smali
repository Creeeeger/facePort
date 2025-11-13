.class public final Lcom/android/systemui/power/PowerUiConstants;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DC_PACKAGE_NAME:Ljava/lang/String;

.field public static final SMART_MGR_VERIFY_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

.field public static final TURN_OFF_PSM_COMPONENT_NAME:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/PowerUiConstants;->DC_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "content://com.samsung.android.sm/VerifyForcedAppStandby"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/PowerUiConstants;->SMART_MGR_VERIFY_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.sm_cn"

    const-string v2, "com.samsung.android.sm.external.receiver.TurnOffPsmNotiReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/power/PowerUiConstants;->TURN_OFF_PSM_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
