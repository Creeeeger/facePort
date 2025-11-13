.class public Lcom/samsung/android/knox/integrity/AttestationPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTION_KNOX_ATTESTATION_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_ATTESTATION_RESULT"

.field public static final ERROR_DEVICE_NOT_SUPPORTED:I = -0x3

.field public static final ERROR_INVALID_NONCE:I = -0x5

.field public static final ERROR_MDM_PERMISSION:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_TIMA_INTERNAL:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x4

.field public static final EXTRA_ATTESTATION_DATA:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ATTESTATION_DATA"

.field public static final EXTRA_ERROR_MSG:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ERROR_MSG"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.RESULT"

.field public static final KNOX_ATTESTATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

.field public static final KNOX_ATTESTATION_PERMISSION_ERROR:Ljava/lang/String; = "Need com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION permission"

.field public static final TAG:Ljava/lang/String; = "AttestationPolicy"

.field public static final TAL_KNOX_KEY_ERROR:I = 0x5a

.field public static final TIMA_ATTESTATION_SUCCESS:I = 0x0

.field public static final TIMA_ERROR_DEVICE_NOT_SUPPORTED:I = 0x4

.field public static final TIMA_INVALID_NONCE:I = 0x5b


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final makeAttestationIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 0

    const-string p1, "AttestationPolicy"

    const-string p2, "V2 Attestation is not supported from S OS. Please use V3 Attestation."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const/4 v0, -0x5

    const-string v1, "com.samsung.android.knox.intent.extra.RESULT"

    if-eq p1, v0, :cond_3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const-string v0, "com.samsung.android.knox.intent.extra.ERROR_MSG"

    const/4 v2, -0x2

    if-eq p1, v2, :cond_1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 p1, -0x4

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_4

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_4

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    :goto_0
    return-object p0
.end method

.method public startAttestation(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;-><init>(Lcom/samsung/android/knox/integrity/AttestationPolicy;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
