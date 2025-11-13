.class public Lcom/sec/ims/extensions/SemEmergencyConstantsExt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final EMERGENCY_CHECK_ABNORMAL_STATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "EMERGENCY_CHECK_ABNORMAL_STATE"

    const-string v1, "com.samsung.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE"

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/SemEmergencyConstantsExt;->getStringFromField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/extensions/SemEmergencyConstantsExt;->EMERGENCY_CHECK_ABNORMAL_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringFromField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-class v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;

    invoke-static {v0, p0}, Lcom/sec/ims/extensions/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    return-object p1
.end method
