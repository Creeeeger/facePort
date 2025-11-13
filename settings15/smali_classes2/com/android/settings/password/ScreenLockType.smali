.class public final enum Lcom/android/settings/password/ScreenLockType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ScreenLockType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/password/ScreenLockType;

.field public static final enum MANAGED:Lcom/android/settings/password/ScreenLockType;

.field public static final enum NONE:Lcom/android/settings/password/ScreenLockType;

.field public static final enum PASSWORD:Lcom/android/settings/password/ScreenLockType;

.field public static final enum PATTERN:Lcom/android/settings/password/ScreenLockType;

.field public static final enum PIN:Lcom/android/settings/password/ScreenLockType;

.field public static final enum SWIPE:Lcom/android/settings/password/ScreenLockType;


# instance fields
.field public final defaultQuality:I

.field public final maxQuality:I

.field public final preferenceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v6, Lcom/android/settings/password/ScreenLockType;

    const/4 v5, 0x0

    const-string v4, "unlock_set_off"

    const-string v2, "NONE"

    const/4 v1, 0x0

    move-object v0, v6

    move v3, v5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/password/ScreenLockType;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    new-instance v1, Lcom/android/settings/password/ScreenLockType;

    const/4 v12, 0x0

    const-string v11, "unlock_set_none"

    const-string v9, "SWIPE"

    const/4 v8, 0x1

    move-object v7, v1

    move v10, v12

    invoke-direct/range {v7 .. v12}, Lcom/android/settings/password/ScreenLockType;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/android/settings/password/ScreenLockType;->SWIPE:Lcom/android/settings/password/ScreenLockType;

    new-instance v2, Lcom/android/settings/password/ScreenLockType;

    const/high16 v18, 0x10000

    const-string v17, "unlock_set_pattern"

    const-string v15, "PATTERN"

    const/4 v14, 0x2

    move-object v13, v2

    move/from16 v16, v18

    invoke-direct/range {v13 .. v18}, Lcom/android/settings/password/ScreenLockType;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    new-instance v3, Lcom/android/settings/password/ScreenLockType;

    const/4 v8, 0x3

    const/high16 v10, 0x20000

    const-string v9, "PIN"

    const/high16 v12, 0x30000

    const-string v11, "unlock_set_pin"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/settings/password/ScreenLockType;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    new-instance v4, Lcom/android/settings/password/ScreenLockType;

    const/4 v14, 0x4

    const/high16 v16, 0x40000

    const-string v15, "PASSWORD"

    const/high16 v18, 0x60000

    const-string v17, "unlock_set_password"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/android/settings/password/ScreenLockType;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    new-instance v5, Lcom/android/settings/password/ScreenLockType;

    const/high16 v12, 0x80000

    const-string v11, "unlock_set_managed"

    const-string v9, "MANAGED"

    const/4 v8, 0x5

    move-object v7, v5

    move v10, v12

    invoke-direct/range {v7 .. v12}, Lcom/android/settings/password/ScreenLockType;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    new-instance v7, Lcom/android/settings/password/ScreenLockType;

    const/high16 v18, 0x70000

    const-string v17, "unlock_set_cac_pin"

    const-string v15, "SMART_CARD"

    const/4 v14, 0x6

    move-object v13, v7

    move/from16 v16, v18

    invoke-direct/range {v13 .. v18}, Lcom/android/settings/password/ScreenLockType;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    new-instance v14, Lcom/android/settings/password/ScreenLockType;

    const/high16 v13, 0x70000

    const-string v12, "unlock_set_ucm_pin"

    const-string v10, "UCM_PIN"

    const/4 v9, 0x7

    move-object v8, v14

    move v11, v13

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/password/ScreenLockType;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    new-instance v8, Lcom/android/settings/password/ScreenLockType;

    const-string v0, "unlock_set_enterprise_identity"

    const-string v9, "ENTERPRISE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v0}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lcom/android/settings/password/ScreenLockType;

    const v20, 0x61000

    const-string v19, "unlock_set_fingerprint"

    const-string v17, "FINGERPRINT_KNOX"

    const/16 v16, 0x9

    move-object v15, v9

    move/from16 v18, v20

    invoke-direct/range {v15 .. v20}, Lcom/android/settings/password/ScreenLockType;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    new-instance v10, Lcom/android/settings/password/ScreenLockType;

    const-string v0, "switch_face"

    const-string v11, "FACE"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v0}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v11, Lcom/android/settings/password/ScreenLockType;

    const-string v0, "switch_fingerprint"

    const-string v12, "FINGERPRINT"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v0}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lcom/android/settings/password/ScreenLockType;

    const-string v0, "unlock_set_face"

    const-string v13, "FACE_SCAN_SUW"

    const/16 v15, 0xc

    invoke-direct {v12, v13, v15, v0}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v13, Lcom/android/settings/password/ScreenLockType;

    const-string v0, "pref_lock_type"

    const-string v15, "CHANGE_LOCK_TYPE"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v0}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lcom/android/settings/password/ScreenLockType;

    const-string v0, "unlock_set_two_factor"

    const-string v12, "TWO_FACTOR"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v15, v12, v13, v0}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v13, Lcom/android/settings/password/ScreenLockType;

    const-string v0, "switch_reset_with_sa"

    const-string v12, "RESET_WITH_SAMSUNG_ACCOUNT"

    move-object/from16 v18, v15

    const/16 v15, 0xf

    invoke-direct {v13, v12, v15, v0}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v6

    move-object v6, v7

    move-object v7, v14

    move-object/from16 v12, v16

    move-object v15, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    filled-new-array/range {v0 .. v15}, [Lcom/android/settings/password/ScreenLockType;

    move-result-object v0

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->$VALUES:[Lcom/android/settings/password/ScreenLockType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    iput p5, p0, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    iput-object p4, p0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    const/high16 v5, 0x900000

    move-object v0, p0

    move v1, p2

    move-object v2, p1

    move v3, v5

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/password/ScreenLockType;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static fromQuality(I)Lcom/android/settings/password/ScreenLockType;
    .locals 1

    if-eqz p0, :cond_4

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/settings/password/ScreenLockType;->SWIPE:Lcom/android/settings/password/ScreenLockType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ScreenLockType;
    .locals 1

    const-class v0, Lcom/android/settings/password/ScreenLockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ScreenLockType;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ScreenLockType;
    .locals 1

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->$VALUES:[Lcom/android/settings/password/ScreenLockType;

    invoke-virtual {v0}, [Lcom/android/settings/password/ScreenLockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ScreenLockType;

    return-object v0
.end method
