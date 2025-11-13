.class public Lcom/samsung/android/knox/restriction/SPDControlPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SPD_ENFORCE_NONE:I = 0x0

.field public static final SPD_ENFORCE_OFF:I = 0x2

.field public static final SPD_ENFORCE_ON:I = 0x1

.field public static final SPD_FAILED:I = -0x1

.field public static final SPD_OFF:I = 0x4

.field public static final SPD_ON:I = 0x3

.field public static TAG:Ljava/lang/String; = "SPDControlPolicy"


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoSecurityPolicyUpdateMode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setAutoSecurityPolicyUpdateMode(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
