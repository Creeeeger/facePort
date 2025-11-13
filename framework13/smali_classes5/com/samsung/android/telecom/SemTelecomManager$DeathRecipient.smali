.class Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;
.super Ljava/lang/Object;
.source "SemTelecomManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/telecom/SemTelecomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeathRecipient"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 0

    .line 1163
    invoke-static {}, Lcom/samsung/android/telecom/SemTelecomManager;->-$$Nest$smresetServiceCache()V

    .line 1164
    return-void
.end method
