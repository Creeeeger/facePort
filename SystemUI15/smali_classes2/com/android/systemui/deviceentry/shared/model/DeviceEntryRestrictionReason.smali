.class public final enum Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

.field public static final enum AdaptiveAuthRequest:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

.field public static final enum BouncerLockedOut:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

.field public static final enum DeviceNotUnlockedSinceMainlineUpdate:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

.field public static final enum DeviceNotUnlockedSinceReboot:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

.field public static final enum NonStrongBiometricsSecurityTimeout:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

.field public static final enum NonStrongFaceLockedOut:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

.field public static final enum PolicyLockdown:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

.field public static final enum SecurityTimeout:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

.field public static final enum StrongBiometricsLockedOut:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

.field public static final enum TrustAgentDisabled:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

.field public static final enum UnattendedUpdate:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

.field public static final enum UserLockdown:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    const-string v1, "UserLockdown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->UserLockdown:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    new-instance v1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    const-string v2, "DeviceNotUnlockedSinceReboot"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->DeviceNotUnlockedSinceReboot:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    new-instance v2, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    const-string v3, "DeviceNotUnlockedSinceMainlineUpdate"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->DeviceNotUnlockedSinceMainlineUpdate:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    new-instance v3, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    const-string v4, "PolicyLockdown"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->PolicyLockdown:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    new-instance v4, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    const-string v5, "UnattendedUpdate"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->UnattendedUpdate:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    new-instance v5, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    const-string v6, "SecurityTimeout"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->SecurityTimeout:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    new-instance v6, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    const-string v7, "StrongBiometricsLockedOut"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->StrongBiometricsLockedOut:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    new-instance v7, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    const-string v8, "NonStrongFaceLockedOut"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->NonStrongFaceLockedOut:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    new-instance v8, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    const-string v9, "NonStrongBiometricsSecurityTimeout"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->NonStrongBiometricsSecurityTimeout:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    new-instance v9, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    const-string v10, "TrustAgentDisabled"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->TrustAgentDisabled:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    new-instance v10, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    const-string v11, "AdaptiveAuthRequest"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->AdaptiveAuthRequest:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    new-instance v11, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    const-string v12, "BouncerLockedOut"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->BouncerLockedOut:Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    filled-new-array/range {v0 .. v11}, [Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->$VALUES:[Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;
    .locals 1

    const-class v0, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;
    .locals 1

    sget-object v0, Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;->$VALUES:[Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/deviceentry/shared/model/DeviceEntryRestrictionReason;

    return-object v0
.end method
