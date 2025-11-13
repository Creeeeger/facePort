.class public final Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-direct {v0}, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;-><init>()V

    sput-object v0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final assertInLegacyMode()V
    .locals 2

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Legacy code path not supported when com.android.systemui.device_entry_udfps_refactor is enabled."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
