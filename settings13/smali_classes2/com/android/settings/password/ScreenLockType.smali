.class public final enum Lcom/android/settings/password/ScreenLockType;
.super Ljava/lang/Enum;
.source "ScreenLockType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ScreenLockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ScreenLockType;

.field public static final enum CHANGE_LOCK_TYPE:Lcom/android/settings/password/ScreenLockType;

.field public static final enum ENTERPRISE:Lcom/android/settings/password/ScreenLockType;

.field public static final enum FACE:Lcom/android/settings/password/ScreenLockType;

.field public static final enum FACE_SCAN_SUW:Lcom/android/settings/password/ScreenLockType;

.field public static final enum FINGERPRINT:Lcom/android/settings/password/ScreenLockType;

.field public static final enum FINGERPRINT_KNOX:Lcom/android/settings/password/ScreenLockType;

.field public static final enum MANAGED:Lcom/android/settings/password/ScreenLockType;

.field public static final enum NONE:Lcom/android/settings/password/ScreenLockType;

.field public static final enum PASSWORD:Lcom/android/settings/password/ScreenLockType;

.field public static final enum PATTERN:Lcom/android/settings/password/ScreenLockType;

.field public static final enum PIN:Lcom/android/settings/password/ScreenLockType;

.field public static final enum RESET_WITH_SAMSUNG_ACCOUNT:Lcom/android/settings/password/ScreenLockType;

.field public static final enum SMART_CARD:Lcom/android/settings/password/ScreenLockType;

.field public static final enum SWIPE:Lcom/android/settings/password/ScreenLockType;

.field public static final enum TWO_FACTOR:Lcom/android/settings/password/ScreenLockType;


# instance fields
.field public final defaultQuality:I

.field public final maxQuality:I

.field public final preferenceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 27
    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string/jumbo v3, "unlock_set_off"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    .line 30
    new-instance v1, Lcom/android/settings/password/ScreenLockType;

    const-string v3, "SWIPE"

    const/4 v4, 0x1

    const-string/jumbo v5, "unlock_set_none"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/android/settings/password/ScreenLockType;->SWIPE:Lcom/android/settings/password/ScreenLockType;

    .line 33
    new-instance v3, Lcom/android/settings/password/ScreenLockType;

    const-string v5, "PATTERN"

    const/4 v6, 0x2

    const/high16 v7, 0x10000

    const-string/jumbo v8, "unlock_set_pattern"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    .line 36
    new-instance v5, Lcom/android/settings/password/ScreenLockType;

    const-string v10, "PIN"

    const/4 v11, 0x3

    const/high16 v12, 0x20000

    const/high16 v13, 0x30000

    const-string/jumbo v14, "unlock_set_pin"

    move-object v9, v5

    invoke-direct/range {v9 .. v14}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v5, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    .line 40
    new-instance v7, Lcom/android/settings/password/ScreenLockType;

    const-string v16, "PASSWORD"

    const/16 v17, 0x4

    const/high16 v18, 0x40000

    const/high16 v19, 0x60000

    const-string/jumbo v20, "unlock_set_password"

    move-object v15, v7

    invoke-direct/range {v15 .. v20}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v7, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    .line 44
    new-instance v8, Lcom/android/settings/password/ScreenLockType;

    const-string v9, "MANAGED"

    const/4 v10, 0x5

    const/high16 v11, 0x80000

    const-string/jumbo v12, "unlock_set_managed"

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    .line 48
    new-instance v9, Lcom/android/settings/password/ScreenLockType;

    const-string v11, "SMART_CARD"

    const/4 v12, 0x6

    const/high16 v13, 0x70000

    const-string/jumbo v14, "unlock_set_cac_pin"

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/android/settings/password/ScreenLockType;->SMART_CARD:Lcom/android/settings/password/ScreenLockType;

    .line 55
    new-instance v11, Lcom/android/settings/password/ScreenLockType;

    const-string v13, "ENTERPRISE"

    const/4 v14, 0x7

    const-string/jumbo v15, "unlock_set_enterprise_identity"

    invoke-direct {v11, v13, v14, v15}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/android/settings/password/ScreenLockType;->ENTERPRISE:Lcom/android/settings/password/ScreenLockType;

    .line 56
    new-instance v13, Lcom/android/settings/password/ScreenLockType;

    const-string v15, "FINGERPRINT_KNOX"

    const/16 v14, 0x8

    const v12, 0x61000

    const-string/jumbo v10, "unlock_set_fingerprint"

    invoke-direct {v13, v15, v14, v12, v10}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/android/settings/password/ScreenLockType;->FINGERPRINT_KNOX:Lcom/android/settings/password/ScreenLockType;

    .line 59
    new-instance v10, Lcom/android/settings/password/ScreenLockType;

    const-string v12, "FACE"

    const/16 v15, 0x9

    const-string/jumbo v14, "switch_face"

    invoke-direct {v10, v12, v15, v14}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/android/settings/password/ScreenLockType;->FACE:Lcom/android/settings/password/ScreenLockType;

    .line 60
    new-instance v12, Lcom/android/settings/password/ScreenLockType;

    const-string v14, "FINGERPRINT"

    const/16 v15, 0xa

    const-string/jumbo v6, "switch_fingerprint"

    invoke-direct {v12, v14, v15, v6}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/android/settings/password/ScreenLockType;->FINGERPRINT:Lcom/android/settings/password/ScreenLockType;

    .line 61
    new-instance v6, Lcom/android/settings/password/ScreenLockType;

    const-string v14, "FACE_SCAN_SUW"

    const/16 v15, 0xb

    const-string/jumbo v4, "unlock_set_face"

    invoke-direct {v6, v14, v15, v4}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/android/settings/password/ScreenLockType;->FACE_SCAN_SUW:Lcom/android/settings/password/ScreenLockType;

    .line 62
    new-instance v4, Lcom/android/settings/password/ScreenLockType;

    const-string v14, "CHANGE_LOCK_TYPE"

    const/16 v15, 0xc

    const-string/jumbo v2, "pref_lock_type"

    invoke-direct {v4, v14, v15, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/android/settings/password/ScreenLockType;->CHANGE_LOCK_TYPE:Lcom/android/settings/password/ScreenLockType;

    .line 66
    new-instance v2, Lcom/android/settings/password/ScreenLockType;

    const-string v14, "TWO_FACTOR"

    const/16 v15, 0xd

    move-object/from16 v21, v4

    const-string/jumbo v4, "unlock_set_two_factor"

    invoke-direct {v2, v14, v15, v4}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/android/settings/password/ScreenLockType;->TWO_FACTOR:Lcom/android/settings/password/ScreenLockType;

    .line 67
    new-instance v4, Lcom/android/settings/password/ScreenLockType;

    const-string v14, "RESET_WITH_SAMSUNG_ACCOUNT"

    const/16 v15, 0xe

    move-object/from16 v22, v2

    const-string/jumbo v2, "switch_reset_with_sa"

    invoke-direct {v4, v14, v15, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/android/settings/password/ScreenLockType;->RESET_WITH_SAMSUNG_ACCOUNT:Lcom/android/settings/password/ScreenLockType;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/android/settings/password/ScreenLockType;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v8, v2, v0

    const/4 v0, 0x6

    aput-object v9, v2, v0

    const/4 v0, 0x7

    aput-object v11, v2, v0

    const/16 v0, 0x8

    aput-object v13, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v21, v2, v0

    const/16 v0, 0xd

    aput-object v22, v2, v0

    aput-object v4, v2, v15

    .line 25
    sput-object v2, Lcom/android/settings/password/ScreenLockType;->$VALUES:[Lcom/android/settings/password/ScreenLockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    .line 101
    iput p4, p0, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    .line 102
    iput-object p5, p0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move-object v5, p4

    .line 96
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/high16 v0, 0x900000

    .line 91
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static fromKey(Ljava/lang/String;)Lcom/android/settings/password/ScreenLockType;
    .locals 5

    .line 135
    invoke-static {}, Lcom/android/settings/password/ScreenLockType;->values()[Lcom/android/settings/password/ScreenLockType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 136
    iget-object v4, v3, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromQuality(I)Lcom/android/settings/password/ScreenLockType;
    .locals 1

    if-eqz p0, :cond_5

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_4

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x70000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    sget-object p0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    return-object p0

    .line 128
    :cond_1
    sget-object p0, Lcom/android/settings/password/ScreenLockType;->SMART_CARD:Lcom/android/settings/password/ScreenLockType;

    return-object p0

    .line 121
    :cond_2
    sget-object p0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    return-object p0

    .line 117
    :cond_3
    sget-object p0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    return-object p0

    .line 114
    :cond_4
    sget-object p0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    return-object p0

    .line 125
    :cond_5
    sget-object p0, Lcom/android/settings/password/ScreenLockType;->SWIPE:Lcom/android/settings/password/ScreenLockType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ScreenLockType;
    .locals 1

    .line 25
    const-class v0, Lcom/android/settings/password/ScreenLockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ScreenLockType;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ScreenLockType;
    .locals 1

    .line 25
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->$VALUES:[Lcom/android/settings/password/ScreenLockType;

    invoke-virtual {v0}, [Lcom/android/settings/password/ScreenLockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ScreenLockType;

    return-object v0
.end method
