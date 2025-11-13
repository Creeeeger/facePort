.class public final enum Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;
.super Ljava/lang/Enum;
.source "KnoxUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/KnoxUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KnoxPasswordChangePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;

.field public static final enum ENFORCE_POLICY:Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;

.field public static final enum RESET_POLICY:Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 176
    new-instance v0, Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;

    const-string v1, "ENFORCE_POLICY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;->ENFORCE_POLICY:Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;

    new-instance v1, Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;

    const-string v3, "RESET_POLICY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;->RESET_POLICY:Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 175
    sput-object v3, Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;->$VALUES:[Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;
    .locals 1

    .line 175
    const-class v0, Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;
    .locals 1

    .line 175
    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;->$VALUES:[Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/knox/KnoxUtils$KnoxPasswordChangePolicy;

    return-object v0
.end method
