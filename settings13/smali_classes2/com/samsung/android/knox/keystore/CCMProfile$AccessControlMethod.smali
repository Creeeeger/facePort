.class public final enum Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;
.super Ljava/lang/Enum;
.source "CCMProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/keystore/CCMProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessControlMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum KNOX_DEFAULT:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum PASSWORD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum TRUSTED_UI:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum USER_AUTH:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 56
    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v1, "LOCK_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 64
    new-instance v1, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v3, "PASSWORD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 70
    new-instance v3, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v5, "TRUSTED_UI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_UI:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 76
    new-instance v5, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v7, "TRUSTED_PINPAD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 82
    new-instance v7, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v9, "AFW"

    const/4 v10, 0x4

    const/16 v11, 0xf

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 88
    new-instance v9, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v11, "KNOX_DEFAULT"

    const/4 v12, 0x5

    const/16 v13, 0x10

    invoke-direct {v9, v11, v12, v13}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->KNOX_DEFAULT:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 94
    new-instance v11, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v13, "USER_AUTH"

    const/4 v14, 0x6

    const/16 v15, 0x11

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->USER_AUTH:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 48
    sput-object v13, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->$VALUES:[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p3, p0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;
    .locals 1

    .line 48
    const-class v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;
    .locals 1

    .line 48
    sget-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->$VALUES:[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    return-object v0
.end method
