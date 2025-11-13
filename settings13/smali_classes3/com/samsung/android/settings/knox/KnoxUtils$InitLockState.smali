.class final enum Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;
.super Ljava/lang/Enum;
.source "KnoxUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/KnoxUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InitLockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

.field public static final enum NONE:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

.field public static final enum SA_CHANGED_LOCK:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

.field public static final enum SA_REMOVED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

.field public static final enum VERIFICATION_FAILED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

.field public static final enum VERIFIED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 180
    new-instance v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->NONE:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    new-instance v1, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const-string v3, "VERIFIED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFIED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    new-instance v3, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const-string v5, "SA_CHANGED_LOCK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_CHANGED_LOCK:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    new-instance v5, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const-string v7, "SA_REMOVED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_REMOVED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    new-instance v7, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const-string v9, "VERIFICATION_FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFICATION_FAILED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 179
    sput-object v9, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->$VALUES:[Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;
    .locals 1

    .line 179
    const-class v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;
    .locals 1

    .line 179
    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->$VALUES:[Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    return-object v0
.end method
